package cn.cslg.dao.impl;

import cn.cslg.model.UmsAdminLoginLog;
import cn.cslg.dao.UmsAdminLoginLogDao;
import org.springframework.stereotype.Repository;

/**
 * 后台用户登录日志(UmsAdminLoginLog)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 13:36:01
 */
@Repository("umsAdminLoginLogDao")
public class UmsAdminLoginLogDaoImpl extends GenericDaoImpl<UmsAdminLoginLog, Long> implements UmsAdminLoginLogDao {

}