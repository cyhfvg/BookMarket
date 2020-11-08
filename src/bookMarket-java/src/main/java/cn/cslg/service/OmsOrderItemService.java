package cn.cslg.service;

import cn.cslg.model.OmsOrderItem;
import java.util.List;

/**
 * 订单中所包含的商品(OmsOrderItem)表服务接口
 *
 * @author zhangguangzhou
 * @since 2020-04-13 10:06:18
 */
public interface OmsOrderItemService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    OmsOrderItem queryById(Long id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<OmsOrderItem> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param omsOrderItem 实例对象
     * @return 实例对象
     */
    void insert(OmsOrderItem omsOrderItem);

    /**
     * 修改数据
     *
     * @param omsOrderItem 实例对象
     * @return 实例对象
     */
    void update(OmsOrderItem omsOrderItem);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    void deleteById(Long id);

}