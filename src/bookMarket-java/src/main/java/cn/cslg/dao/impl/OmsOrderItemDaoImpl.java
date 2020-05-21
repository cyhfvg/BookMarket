package cn.cslg.dao.impl;

import cn.cslg.model.OmsOrder;
import cn.cslg.model.OmsOrderItem;
import cn.cslg.dao.OmsOrderItemDao;
import cn.cslg.util.CollectionUtil;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

/**
 * 订单中所包含的商品(OmsOrderItem)表服务实现类
 *
 * @author zhangguangzhou
 * @since 2020-04-13 10:06:18
 */
@Repository("omsOrderItemDao")
public class OmsOrderItemDaoImpl extends GenericDaoImpl<OmsOrderItem, Long> implements OmsOrderItemDao {

    @Override
    public List<OmsOrderItem> saveItems(List<OmsOrderItem> items) {
        List<OmsOrderItem> result = new ArrayList<>();
        for (OmsOrderItem item :
                items) {
            super.getHibernateTemplate().save(item);
            result.add(item);
        }
        return result;
    }

    @Override
    public List<OmsOrderItem> queryItemsByOrders(List<OmsOrder> orders) {
        List<OmsOrderItem> list = new ArrayList<>();
        if (CollectionUtil.isEmpty(orders)) {
            return list;
        }

        for (OmsOrder order :
                orders) {
            DetachedCriteria dc = DetachedCriteria.forEntityName(OmsOrderItem.class.getName());
            dc.add(Restrictions.eq("orderId", order.getId()));
            dc.add(Restrictions.eq("productCategoryId", (long)1));
            List<OmsOrderItem> result = (List<OmsOrderItem>) super.getHibernateTemplate().findByCriteria(dc, 0, 0);
            list.addAll(result);
        }
        return list;
    }

    @Override
    public void updateItems(List<OmsOrderItem> items) {
        for (OmsOrderItem item :
                items) {
            super.getHibernateTemplate().update(item);
        }
    }
}