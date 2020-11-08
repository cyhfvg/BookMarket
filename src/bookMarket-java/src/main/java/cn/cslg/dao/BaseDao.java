package cn.cslg.dao;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;


public class BaseDao extends HibernateDaoSupport {

    @Resource(name="sessionFactory")  
    public void setSuperSessionFactory(SessionFactory sessionFactory){  
        super.setSessionFactory(sessionFactory);  
    } 
}
