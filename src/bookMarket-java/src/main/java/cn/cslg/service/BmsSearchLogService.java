package cn.cslg.service;

import cn.cslg.model.BmsSearchLog;
import java.util.List;

/**
 * (BmsSearchLog)表服务接口
 *
 * @author zhangguangzhou
 * @since 2020-04-18 12:56:14
 */
public interface BmsSearchLogService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    BmsSearchLog queryById(Long id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<BmsSearchLog> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param bmsSearchLog 实例对象
     * @return 实例对象
     */
    void insert(BmsSearchLog bmsSearchLog);

    /**
     * 修改数据
     *
     * @param bmsSearchLog 实例对象
     * @return 实例对象
     */
    void update(BmsSearchLog bmsSearchLog);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    void deleteById(Long id);

}