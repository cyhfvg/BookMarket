package cn.cslg.dao.impl;

import cn.cslg.model.UmsAdminRoleRelation;
import cn.cslg.dao.UmsAdminRoleRelationDao;
import org.springframework.stereotype.Repository;

/**
 * 后台用户-角色 关系表
(UmsAdminRoleRelation)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 13:36:01
 */
@Repository("umsAdminRoleRelationDao")
public class UmsAdminRoleRelationDaoImpl extends GenericDaoImpl<UmsAdminRoleRelation, Long> implements UmsAdminRoleRelationDao {

}