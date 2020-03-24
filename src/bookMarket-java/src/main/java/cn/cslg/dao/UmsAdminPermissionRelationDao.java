package cn.cslg.dao;

import cn.cslg.model.UmsAdminPermissionRelation;
import java.util.List;

/**
 * 后台用户和权限关系表(除角色中定义的权限以外的加减权限)
(UmsAdminPermissionRelation)表数据库访问层
 *
 * @author 张广洲
 * @since 2020-02-26 13:34:08
 */
public interface UmsAdminPermissionRelationDao extends GenericDao<UmsAdminPermissionRelation, Long>{

}