package cn.cslg.dao.impl;

import cn.cslg.dao.GenericDaoImpl;
import cn.cslg.model.UmsAdminPermissionRelation;
import cn.cslg.dao.UmsAdminPermissionRelationDao;
import org.springframework.stereotype.Repository;

/**
 * 后台用户和权限关系表(除角色中定义的权限以外的加减权限)
(UmsAdminPermissionRelation)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 13:36:01
 */
@Repository("umsAdminPermissionRelationDao")
public class UmsAdminPermissionRelationDaoImpl extends GenericDaoImpl<UmsAdminPermissionRelation, Long> implements UmsAdminPermissionRelationDao {

}