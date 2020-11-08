package cn.cslg.service;

import cn.cslg.dto.UmsAdminLoginParam;
import cn.cslg.dto.UmsAdminParam;
import cn.cslg.model.UmsAdmin;
import java.util.List;

/**
 * 后台用户表
(UmsAdmin)表服务接口
 *
 * @author 张广洲
 * @since 2020-02-26 14:17:00
 */
public interface UmsAdminService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    UmsAdmin queryById(Long id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<UmsAdmin> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param umsAdmin 实例对象
     * @return 实例对象
     */
    void insert(UmsAdmin umsAdmin);


    UmsAdmin register(UmsAdminParam umsAdminParam);
    /**
     * 修改数据
     *
     * @param umsAdmin 实例对象
     * @return 实例对象
     */
    void update(UmsAdmin umsAdmin);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    void deleteById(Long id);

    /**
     * 管理员登录
     * @param umsAdminLoginParam
     * @return
     */
    UmsAdmin login(UmsAdminLoginParam umsAdminLoginParam);

}