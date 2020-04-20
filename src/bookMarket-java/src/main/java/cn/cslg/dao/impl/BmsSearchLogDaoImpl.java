package cn.cslg.dao.impl;

import cn.cslg.model.BmsSearchLog;
import cn.cslg.dao.BmsSearchLogDao;
import org.springframework.stereotype.Repository;

/**
 * (BmsSearchLog)表服务实现类
 *
 * @author zhangguangzhou
 * @since 2020-04-18 12:56:14
 */
@Repository("bmsSearchLogDao")
public class BmsSearchLogDaoImpl extends GenericDaoImpl<BmsSearchLog, Long> implements BmsSearchLogDao {

}