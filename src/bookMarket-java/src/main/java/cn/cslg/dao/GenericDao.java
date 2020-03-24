package cn.cslg.dao;

import org.hibernate.criterion.DetachedCriteria;

import java.util.List;

public interface GenericDao<T, PK> {

	/**
	 * 保存实体类
	 * @param entity 实体类
	 */
	public void save(T entity);
	
	/**
	 * 更新或保存
	 * @param entity 实体类
	 */
	public void saveorupdate(T entity);
	
	/**
	 * 删除实体
	 * @param entity 实体类
	 */
	public void delete(T entity);
	
	/**
	 * 通过主键删除实体
	 * @param entityClass 实体类名
	 * @param Id 实体Id
	 */
	public void deleteById(Class<T> entityClass, PK Id);
	
	/**
	 * 通过主键查询实体
	 * @param entityClass 实体类名
	 * @param Id 实体Id
	 * @return 实体类
	 */
	public T findById(Class<T> entityClass, PK Id);
	
	/**
	 * 查询所有实体
	 * @param entityClass 实体类
	 * @return 实体类链表
	 */
	public List<T> findAll(Class<T> entityClass); 
	public List<T> findAll(Class<T> entityClass, String hql, Object[] params, int start, int limit);

	/**
	 * 通过Criteria,查询所有
	 * @param entityClass
	 * @param start
	 * @param limit
	 * @return
	 */
	public List<T> findAll(Class<T> entityClass, int start, int limit);

	/**
	 * 根据HQL查询，所有
	 * @param hql
	 * @param params
	 * @return
	 */
	public List<T> findByHql(String hql, Object[] params);

	/**
	 * 查询指定属性的实体集合
	 * @param entityClass
	 * @param propertyName
	 * @param value
	 * @return
	 */
	public List<T> findByProperty(Class<T> entityClass, String propertyName, Object value);

	/**
	 * 更新
	 * @param hql
	 * @param params
	 */
	public void update(final String hql, final Object[] params);
}
