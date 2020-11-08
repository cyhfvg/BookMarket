package cn.cslg.dao.impl;

import cn.cslg.model.UmsAdmin;
import cn.cslg.dao.UmsAdminDao;
import org.springframework.stereotype.Repository;

/**
 * 后台用户表
(UmsAdmin)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 13:36:01
 */
@Repository("umsAdminDao")
public class UmsAdminDaoImpl extends GenericDaoImpl<UmsAdmin, Long> implements UmsAdminDao {

}