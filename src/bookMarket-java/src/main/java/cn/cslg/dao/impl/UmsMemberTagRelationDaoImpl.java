package cn.cslg.dao.impl;

import cn.cslg.dao.GenericDaoImpl;
import cn.cslg.model.UmsMemberTagRelation;
import cn.cslg.dao.UmsMemberTagRelationDao;
import org.springframework.stereotype.Repository;

/**
 * 用户-标签 关联表(UmsMemberTagRelation)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 13:36:01
 */
@Repository("umsMemberTagRelationDao")
public class UmsMemberTagRelationDaoImpl extends GenericDaoImpl<UmsMemberTagRelation, Long> implements UmsMemberTagRelationDao {

}