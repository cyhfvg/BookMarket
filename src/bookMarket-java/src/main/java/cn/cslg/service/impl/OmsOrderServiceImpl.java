package cn.cslg.service.impl;

import cn.cslg.dao.*;
import cn.cslg.dto.OmsOrderBuyBooksParam;
import cn.cslg.model.*;
import cn.cslg.service.OmsOrderService;
import cn.cslg.util.CodecUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * (OmsOrder)表服务实现类
 *
 * @author zhangguangzhou
 * @since 2020-04-13 10:06:18
 */
@Service("omsOrderService")
public class OmsOrderServiceImpl implements OmsOrderService {

    private static Logger logger = LoggerFactory.getLogger(OmsOrder.class);

    @Resource(name="omsOrderDao")
    private OmsOrderDao omsOrderDao;

    @Resource(name = "umsMemberDao")
    private UmsMemberDao umsMemberDao;

    @Resource(name = "bmsCartLogDao")
    private BmsCartLogDao bmsCartLogDao;

    @Resource(name = "omsOrderItemDao")
    private OmsOrderItemDao omsOrderItemDao;

    @Resource(name = "bmsBookDao")
    private BmsBookDao bmsBookDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public OmsOrder queryById(Long id) {
        return this.omsOrderDao.findById(OmsOrder.class, id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<OmsOrder> queryAllByLimit(int offset, int limit) {
        return this.omsOrderDao.findAll(OmsOrder.class, offset, limit);
    }

    /**
     * 新增数据
     *
     * @param omsOrder 实例对象
     */
    @Override
    public void insert(OmsOrder omsOrder) {
        this.omsOrderDao.save(omsOrder);
    }

    /**
     * 修改数据
     *
     * @param omsOrder 实例对象
     */
    @Override
    public void update(OmsOrder omsOrder) {
        this.omsOrderDao.saveorupdate(omsOrder);
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     */
    @Override
    public void deleteById(Long id) {
        this.omsOrderDao.deleteById(OmsOrder.class, id);
    }

    /**
     *
     * @param omsOrderBuyBooksParam dto
     * @return
     */
    @Override
    public boolean buyBooks(OmsOrderBuyBooksParam omsOrderBuyBooksParam) {

        logger.debug("buyBooks");

        List<BmsBook> books = omsOrderBuyBooksParam.getBooks();

        long memberId = omsOrderBuyBooksParam.getUserId();
        UmsMember umsMember = umsMemberDao.findById(UmsMember.class, memberId);

        OmsCompanyAddress address = omsOrderBuyBooksParam.getAddress();

        int totalAmount = 0;
        for (BmsBook book :
                books) {
            totalAmount += book.getPrice();
        }

//        创建订单
        OmsOrder order = new OmsOrder();
        order.setMemberId(umsMember.getId());
        order.setOrderSn(CodecUtil.createUUID());
        order.setCreateTime(new Date());
        order.setMemberUsername(umsMember.getUsername());
        order.setTotalAmount(totalAmount);
        order.setStatus(0);
        order.setReceiverName(address.getName());
        order.setReceiverPhone(address.getPhone());
        order.setReceiverProvince(address.getProvince());
        order.setReceiverCity(address.getCity());
        order.setReceiverRegion(address.getRegion());
        order.setReceiverDetailAddress(address.getDetailAddress());
        order.setConfirmStatus(0);
        order.setDeleteStatus(0);
        omsOrderDao.save(order);

        // 保存订单条目
        List<OmsOrderItem> items = new ArrayList<>();
        for (BmsBook book :
                books) {
            OmsOrderItem item = new OmsOrderItem();
            item.setOrderId(order.getId());
            item.setOrderSn(order.getOrderSn());
            item.setBookId(book.getId());
            item.setMemberId(umsMember.getId());
            item.setBookIsbn(book.getIsbn());
            item.setBookName(book.getName());
            item.setBookPic(book.getPic());
            item.setBookPrice(book.getPrice());
            items.add(item);
        }
        items = omsOrderItemDao.saveItems(items);

        // 减去余额
        umsMember.setBalance(umsMember.getBalance() - totalAmount);
        umsMemberDao.saveorupdate(umsMember);

        // 支付
        order.setStatus(1);
        order.setPaymemtTime(new Date());
        order.setModifyTime(new Date());
        omsOrderDao.saveorupdate(order);

        List<Long> bookIds = new ArrayList<>();
        for (OmsOrderItem item :
                items) {
            bookIds.add(item.getBookId());
        }

        List<BmsCartLog> cartLogs = bmsCartLogDao.findByMemberIdandBookIds(umsMember.getId(), bookIds);
        bmsCartLogDao.deleteCartLogs(cartLogs);

        // 书籍下架
        for (int i = 0; i < books.size(); i++) {
            books.get(i).setPublishStatus(0);
            books.get(i).setDeleteStatus(1);
        }

        bmsBookDao.updateBooks(books);

        return true;
    }
}