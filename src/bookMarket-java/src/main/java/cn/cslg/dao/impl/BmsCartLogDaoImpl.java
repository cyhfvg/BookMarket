package cn.cslg.dao.impl;

import cn.cslg.model.BmsBook;
import cn.cslg.model.BmsCartLog;
import cn.cslg.dao.BmsCartLogDao;
import cn.cslg.util.CollectionUtil;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

/**
 * 用户购物车内容表(BmsCartLog)表服务实现类
 *
 * @author zhangguangzhou
 * @since 2020-04-18 15:41:40
 */
@Repository("bmsCartLogDao")
public class BmsCartLogDaoImpl extends GenericDaoImpl<BmsCartLog, Long> implements BmsCartLogDao {

    @Override
    public void deleteCartLogs(List<BmsCartLog> cartLogs) {
        for (BmsCartLog cart :
                cartLogs) {
            super.getHibernateTemplate().delete(cart);
        }
    }

    @Override
    public List<BmsCartLog> findByMemberIdandBookIds(long memberId, List<Long> bookIds) {
        List<BmsCartLog> list = new ArrayList<>();
        if (CollectionUtil.isEmpty(bookIds)) {
            return list;
        }
        for (Object id :
                bookIds) {
            DetachedCriteria dc = DetachedCriteria.forEntityName(BmsCartLog.class.getName());
            dc.add(Restrictions.eq("bookId", id));
            dc.add(Restrictions.eq("memberId", memberId));

            List<BmsCartLog> result = (List<BmsCartLog>) super.getHibernateTemplate().findByCriteria(dc);

            if (CollectionUtil.isNotEmpty(result)) {
                for (BmsCartLog cartLog :
                        result) {
                    list.add(cartLog);
                }
            }
        }
        return list;
    }
}