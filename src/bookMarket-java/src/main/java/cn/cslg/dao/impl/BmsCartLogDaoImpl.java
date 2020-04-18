package cn.cslg.dao.impl;

import cn.cslg.model.BmsCartLog;
import cn.cslg.dao.BmsCartLogDao;
import org.springframework.stereotype.Repository;

/**
 * 用户购物车内容表(BmsCartLog)表服务实现类
 *
 * @author zhangguangzhou
 * @since 2020-04-18 15:41:40
 */
@Repository("bmsCartLogDao")
public class BmsCartLogDaoImpl extends GenericDaoImpl<BmsCartLog, Long> implements BmsCartLogDao {

}