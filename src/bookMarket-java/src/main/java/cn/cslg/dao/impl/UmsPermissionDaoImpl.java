package cn.cslg.dao.impl;

import cn.cslg.model.UmsPermission;
import cn.cslg.dao.UmsPermissionDao;
import org.springframework.stereotype.Repository;

/**
 * 用户权限表
(UmsPermission)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 13:36:01
 */
@Repository("umsPermissionDao")
public class UmsPermissionDaoImpl extends GenericDaoImpl<UmsPermission, Long> implements UmsPermissionDao {

}