package cn.cslg.dao;

import cn.cslg.model.OmsOrderItem;
import java.util.List;

/**
 * 订单中所包含的商品(OmsOrderItem)表数据库访问层
 *
 * @author zhangguangzhou
 * @since 2020-04-13 10:06:18
 */
public interface OmsOrderItemDao extends GenericDao<OmsOrderItem, Long>{
    /**
     * 保存多个 item
     * @param items List<OmsOrderItem>
     * @return List
     */
    List<OmsOrderItem> saveItems(List<OmsOrderItem> items);

}