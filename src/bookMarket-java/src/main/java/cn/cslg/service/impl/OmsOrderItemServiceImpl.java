package cn.cslg.service.impl;

import cn.cslg.model.OmsOrderItem;
import cn.cslg.dao.OmsOrderItemDao;
import cn.cslg.service.OmsOrderItemService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 订单中所包含的商品(OmsOrderItem)表服务实现类
 *
 * @author zhangguangzhou
 * @since 2020-04-13 10:06:18
 */
@Service("omsOrderItemService")
public class OmsOrderItemServiceImpl implements OmsOrderItemService {
    @Resource(name="omsOrderItemDao")
    private OmsOrderItemDao omsOrderItemDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public OmsOrderItem queryById(Long id) {
        return this.omsOrderItemDao.findById(OmsOrderItem.class, id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<OmsOrderItem> queryAllByLimit(int offset, int limit) {
        return this.omsOrderItemDao.findAll(OmsOrderItem.class, offset, limit);
    }

    /**
     * 新增数据
     *
     * @param omsOrderItem 实例对象
     */
    @Override
    public void insert(OmsOrderItem omsOrderItem) {
        this.omsOrderItemDao.save(omsOrderItem);
    }

    /**
     * 修改数据
     *
     * @param omsOrderItem 实例对象
     */
    @Override
    public void update(OmsOrderItem omsOrderItem) {
        this.omsOrderItemDao.saveorupdate(omsOrderItem);
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     */
    @Override
    public void deleteById(Long id) {
        this.omsOrderItemDao.deleteById(OmsOrderItem.class, id);
    }
}