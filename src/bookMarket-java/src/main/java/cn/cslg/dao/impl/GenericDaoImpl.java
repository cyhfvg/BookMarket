package cn.cslg.dao.impl;

import java.io.Serializable;
import java.util.List;

import cn.cslg.dao.BaseDao;
import cn.cslg.dao.GenericDao;
import org.hibernate.Criteria;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

@Repository("genericDao")
public class GenericDaoImpl<T,PK extends Serializable>
								extends BaseDao
								implements GenericDao<T, PK> {

	@Override
	public void save(T entity) {
		super.getHibernateTemplate().save(entity);
	}

	@Override
	public void saveorupdate(T entity) {
		super.getHibernateTemplate().saveOrUpdate(entity);
	}

	@Override
	public void delete(T entity) {
		super.getHibernateTemplate().delete(entity);
	}

	@Override
	public void deleteById(Class<T> entityClass, PK Id) {
		super.getHibernateTemplate().delete(findById(entityClass, Id));
	}

	@Override
	public T findById(Class<T> entityClass, PK Id) {
		return (T)super.getHibernateTemplate().get((Class<T>)entityClass, Id);
	}

	@Override
	public List<T> findAll(Class<T> entityClass) {
		return super.getHibernateTemplate().loadAll(entityClass);
	}

	@Override
	public List<T> findAll(Class<T> entityClass, String hql, Object[] params,
			int start, int limit) {
		Query query = super.currentSession().createQuery(hql);
		//将参数插入预处理占位符
		if(params!=null&&params.length>0){
			for(int i = 0;i<params.length;i++){
				query.setParameter(i, params[i]);
			}
		}
		if(start!=0&&limit!=0){
			query.setFirstResult(start).setMaxResults(limit);
		}
		return query.list();
	}

	@Override
	public List<T> findAll(Class<T> entityClass, int start, int limit) {
		DetachedCriteria criteria = DetachedCriteria.forClass(entityClass);
		return (List<T>) super.getHibernateTemplate().findByCriteria(criteria, start, limit);
	}

	@Override
	public List<T> findByHql(String hql, Object[] params) {
		Query query = super.currentSession().createQuery(hql);
		if(null!=params && params.length>0){
			for(int i=0;i<params.length;i++){
				query.setParameter(i, params[i]);
			}
		}
		return query.list();
	}

	@Override
	public List<T> findByProperty(Class<T> entityClass, String propertyName,
			Object value) {

		DetachedCriteria dc = DetachedCriteria.forEntityName(entityClass.getName());
		dc.add(Restrictions.eq(propertyName, value));

		return (List<T>) super.getHibernateTemplate().findByCriteria(dc);
	}

	@Override
	public List<T> findByProperties(Class<T> entityClass, String[] propertyNames, Object[] values) {
	    DetachedCriteria dc = DetachedCriteria.forEntityName(entityClass.getName());
	    for (int i = 0; i < propertyNames.length; i++) {
	    	dc.add(Restrictions.eq(propertyNames[i], values[i]));
		}
		return (List<T>) super.getHibernateTemplate().findByCriteria(dc);
	}

	@Override
	public void update(String hql, Object[] params) {
		Query query = super.currentSession().createQuery(hql);
		for(int i=0; i<params.length; i++) {
			query.setParameter(i, params[i]);
		}
		query.executeUpdate();
	}

}
