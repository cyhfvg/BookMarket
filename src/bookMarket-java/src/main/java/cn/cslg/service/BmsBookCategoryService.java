package cn.cslg.service;

import cn.cslg.model.BmsBookCategory;
import java.util.List;

/**
 * 书籍分类(BmsBookCategory)表服务接口
 *
 * @author zhangguangzhou
 * @since 2020-04-14 14:56:00
 */
public interface BmsBookCategoryService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    BmsBookCategory queryById(Long id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<BmsBookCategory> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param bmsBookCategory 实例对象
     * @return 实例对象
     */
    void insert(BmsBookCategory bmsBookCategory);

    /**
     * 修改数据
     *
     * @param bmsBookCategory 实例对象
     * @return 实例对象
     */
    void update(BmsBookCategory bmsBookCategory);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    void deleteById(Long id);

}