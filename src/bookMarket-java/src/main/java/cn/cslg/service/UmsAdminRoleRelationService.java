package cn.cslg.service;

import cn.cslg.model.UmsAdminRoleRelation;
import java.util.List;

/**
 * 后台用户-角色 关系表
(UmsAdminRoleRelation)表服务接口
 *
 * @author 张广洲
 * @since 2020-02-26 14:17:00
 */
public interface UmsAdminRoleRelationService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    UmsAdminRoleRelation queryById(Long id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<UmsAdminRoleRelation> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param umsAdminRoleRelation 实例对象
     * @return 实例对象
     */
    void insert(UmsAdminRoleRelation umsAdminRoleRelation);

    /**
     * 修改数据
     *
     * @param umsAdminRoleRelation 实例对象
     * @return 实例对象
     */
    void update(UmsAdminRoleRelation umsAdminRoleRelation);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    void deleteById(Long id);

}