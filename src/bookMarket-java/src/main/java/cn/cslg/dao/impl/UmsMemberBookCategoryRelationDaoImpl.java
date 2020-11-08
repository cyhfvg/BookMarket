package cn.cslg.dao.impl;

import cn.cslg.model.UmsMemberBookCategoryRelation;
import cn.cslg.dao.UmsMemberBookCategoryRelationDao;
import org.springframework.stereotype.Repository;

/**
 * 会员-书籍分类关系表(UmsMemberBookCategoryRelation)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 13:36:01
 */
@Repository("umsMemberBookCategoryRelationDao")
public class UmsMemberBookCategoryRelationDaoImpl extends GenericDaoImpl<UmsMemberBookCategoryRelation, Long> implements UmsMemberBookCategoryRelationDao {

}