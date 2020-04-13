package cn.cslg.service.impl;

import cn.cslg.model.OmsOrder;
import cn.cslg.dao.OmsOrderDao;
import cn.cslg.service.OmsOrderService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (OmsOrder)表服务实现类
 *
 * @author zhangguangzhou
 * @since 2020-04-13 10:06:18
 */
@Service("omsOrderService")
public class OmsOrderServiceImpl implements OmsOrderService {
    @Resource(name="omsOrderDao")
    private OmsOrderDao omsOrderDao;

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
}