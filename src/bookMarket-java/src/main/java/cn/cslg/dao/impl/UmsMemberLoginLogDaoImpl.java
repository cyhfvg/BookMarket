package cn.cslg.dao.impl;

import cn.cslg.model.UmsMemberLoginLog;
import cn.cslg.dao.UmsMemberLoginLogDao;
import org.springframework.stereotype.Repository;

/**
 * 会员登录日志表(UmsMemberLoginLog)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 13:36:01
 */
@Repository("umsMemberLoginLogDao")
public class UmsMemberLoginLogDaoImpl extends GenericDaoImpl<UmsMemberLoginLog, Long> implements UmsMemberLoginLogDao {

}