package cn.cslg.dao;

import cn.cslg.model.OmsOrder;
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

    /**
     * 根据订单列表查询对应订单内容，
     * 主要使用的是订单的编号查询
     * @param orders 订单列表
     * @return 对应的订单内容列表
     */
    List<OmsOrderItem> queryItemsByOrders(List<OmsOrder> orders);

    /**
     * 批量更新内容
     * @param items 更新实体
     */
    void updateItems(List<OmsOrderItem> items);

}