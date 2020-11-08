package cn.cslg.dao.impl;

import cn.cslg.model.UmsRole;
import cn.cslg.dao.UmsRoleDao;
import org.springframework.stereotype.Repository;

/**
 * 后台用户角色表
(UmsRole)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 13:36:01
 */
@Repository("umsRoleDao")
public class UmsRoleDaoImpl extends GenericDaoImpl<UmsRole, Long> implements UmsRoleDao {

}