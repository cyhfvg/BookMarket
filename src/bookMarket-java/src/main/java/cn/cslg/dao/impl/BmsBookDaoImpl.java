package cn.cslg.dao.impl;

import cn.cslg.model.BmsBook;
import cn.cslg.dao.BmsBookDao;
import cn.cslg.util.CollectionUtil;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

/**
 * 商品信息(BmsBook)表服务实现类
 *
 * @author zhangguangzhou
 * @since 2020-04-15 13:44:51
 */
@Repository("bmsBookDao")
public class BmsBookDaoImpl extends GenericDaoImpl<BmsBook, Long> implements BmsBookDao {

//    Fixme: 修复 getCount函数 不损耗性能
    @Override
    public long getCount() {
        String [] propertyNames = {"deleteStatus", "publishStatus"};
        Object [] values = {0, 1};
        List<BmsBook> list = findByProperties(BmsBook.class,propertyNames, values);
        return list.size();
    }

    @Override
    public List<BmsBook> queryBookByIds(List Ids) {
        List<BmsBook> list = new ArrayList<>();
        if (CollectionUtil.isEmpty(Ids)) {
            return list;
        }
        for (Object id :
                Ids) {
            DetachedCriteria dc = DetachedCriteria.forEntityName(BmsBook.class.getName());
            dc.add(Restrictions.eq("id", id));
            dc.add(Restrictions.eq("deleteStatus", 0));
            dc.add(Restrictions.eq("publishStatus", 1));

            List<BmsBook> result = (List<BmsBook>) super.getHibernateTemplate().findByCriteria(dc);

            if (CollectionUtil.isNotEmpty(result)) {
                for (BmsBook book :
                        result) {
                    list.add(book);
                }
            }
        }
        return list;
    }

    @Override
    public void updateBooks(List<BmsBook> books) {
        for (BmsBook book :
                books) {
            super.getHibernateTemplate().saveOrUpdate(book);
        }
    }

    @Override
    public List<BmsBook> queryBookByIsbns(List<String> isbns) {
        List<BmsBook> list = new ArrayList<>();
        if (CollectionUtil.isEmpty(isbns)) {
            return list;
        }

        for (String isbn :
                isbns) {
            DetachedCriteria dc = DetachedCriteria.forEntityName(BmsBook.class.getName());
            dc.add(Restrictions.eq("isbn", isbn));
            dc.add(Restrictions.eq("publishStatus", 1));
            List<BmsBook> result = (List<BmsBook>) super.getHibernateTemplate().findByCriteria(dc, 0, 1);
            list.addAll(result);
        }
        return list;
    }
}