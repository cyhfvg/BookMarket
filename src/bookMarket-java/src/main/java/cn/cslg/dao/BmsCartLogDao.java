package cn.cslg.dao;

import cn.cslg.model.BmsCartLog;
import java.util.List;

/**
 * 用户购物车内容表(BmsCartLog)表数据库访问层
 *
 * @author zhangguangzhou
 * @since 2020-04-18 15:41:40
 */
public interface BmsCartLogDao extends GenericDao<BmsCartLog, Long>{

    void deleteCartLogs(List<BmsCartLog> cartLogs);

    List<BmsCartLog> findByMemberIdandBookIds(long memberId, List<Long> bookIds);

}