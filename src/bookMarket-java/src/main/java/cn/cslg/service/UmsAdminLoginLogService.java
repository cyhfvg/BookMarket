package cn.cslg.service;

import cn.cslg.model.UmsAdminLoginLog;
import java.util.List;

/**
 * 后台用户登录日志(UmsAdminLoginLog)表服务接口
 *
 * @author 张广洲
 * @since 2020-02-26 14:17:00
 */
public interface UmsAdminLoginLogService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    UmsAdminLoginLog queryById(Long id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<UmsAdminLoginLog> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param umsAdminLoginLog 实例对象
     * @return 实例对象
     */
    void insert(UmsAdminLoginLog umsAdminLoginLog);

    /**
     * 修改数据
     *
     * @param umsAdminLoginLog 实例对象
     * @return 实例对象
     */
    void update(UmsAdminLoginLog umsAdminLoginLog);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    void deleteById(Long id);

}