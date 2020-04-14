package cn.cslg.service;

import cn.cslg.model.BmsProduct;
import java.util.List;

/**
 * 商品信息(BmsProduct)表服务接口
 *
 * @author zhangguangzhou
 * @since 2020-04-14 14:56:00
 */
public interface BmsProductService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    BmsProduct queryById(Long id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<BmsProduct> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param bmsProduct 实例对象
     * @return 实例对象
     */
    void insert(BmsProduct bmsProduct);

    /**
     * 修改数据
     *
     * @param bmsProduct 实例对象
     * @return 实例对象
     */
    void update(BmsProduct bmsProduct);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    void deleteById(Long id);

}