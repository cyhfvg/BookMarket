package cn.cslg.dao.impl;

import cn.cslg.model.OmsOrderItem;
import cn.cslg.dao.OmsOrderItemDao;
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
}