package cn.cslg.dao;

import cn.cslg.model.OmsOrder;

/**
 * (OmsOrder)表数据库访问层
 *
 * @author zhangguangzhou
 * @since 2020-04-13 10:06:18
 */
public interface OmsOrderDao extends GenericDao<OmsOrder, Long>{
    /**
     * 保存Entity并返回保存的Entity,
     * @return OmsOrder
     */
    public OmsOrder saveReturnEntity(OmsOrder order);

}