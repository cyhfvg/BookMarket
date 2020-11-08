package cn.cslg.dao.impl;

import cn.cslg.model.UmsRolePermissionRelation;
import cn.cslg.dao.UmsRolePermissionRelationDao;
import org.springframework.stereotype.Repository;

/**
 * 后台用户角色-权限 关系表
(UmsRolePermissionRelation)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 13:36:01
 */
@Repository("umsRolePermissionRelationDao")
public class UmsRolePermissionRelationDaoImpl extends GenericDaoImpl<UmsRolePermissionRelation, Long> implements UmsRolePermissionRelationDao {

}