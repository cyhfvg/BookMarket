package cn.cslg.service;

import cn.cslg.model.BmsCartLog;
import java.util.List;

/**
 * 用户购物车内容表(BmsCartLog)表服务接口
 *
 * @author zhangguangzhou
 * @since 2020-04-18 15:41:40
 */
public interface BmsCartLogService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    BmsCartLog queryById(Long id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<BmsCartLog> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param bmsCartLog 实例对象
     * @return 实例对象
     */
    void insert(BmsCartLog bmsCartLog);

    /**
     * 修改数据
     *
     * @param bmsCartLog 实例对象
     * @return 实例对象
     */
    void update(BmsCartLog bmsCartLog);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    void deleteById(Long id);

}