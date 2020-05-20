package cn.cslg.service;

import cn.cslg.dto.OmsOrderBuyBooksParam;
import cn.cslg.model.OmsOrder;
import java.util.List;

/**
 * (OmsOrder)表服务接口
 *
 * @author zhangguangzhou
 * @since 2020-04-13 10:06:18
 */
public interface OmsOrderService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    OmsOrder queryById(Long id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<OmsOrder> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param omsOrder 实例对象
     * @return 实例对象
     */
    void insert(OmsOrder omsOrder);

    /**
     * 修改数据
     *
     * @param omsOrder 实例对象
     * @return 实例对象
     */
    void update(OmsOrder omsOrder);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    void deleteById(Long id);

    /**
     * 根据订单信息创建订单
     * @param omsOrderBuyBooksParam dto
     * @return true/false
     */
    boolean buyBooks(OmsOrderBuyBooksParam omsOrderBuyBooksParam);

    /**
     * 根据内容搜索订单
     * @param content 搜索内容
     * @param page 页码
     * @param pageSize 页长
     * @return List<OmsOrder>
     */
    List<OmsOrder> searchOrder(String content, int page, int pageSize);

    /**
     * 删除订单
     * @param orders 欲删除的订单
     */
    void deleteOrders(List<OmsOrder> orders);

}