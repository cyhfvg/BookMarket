package cn.cslg.dao.impl;

import cn.cslg.model.BmsBookCategory;
import cn.cslg.dao.BmsBookCategoryDao;
import org.springframework.stereotype.Repository;

/**
 * 书籍分类(BmsBookCategory)表服务实现类
 *
 * @author zhangguangzhou
 * @since 2020-04-14 14:56:00
 */
@Repository("bmsBookCategoryDao")
public class BmsBookCategoryDaoImpl extends GenericDaoImpl<BmsBookCategory, Long> implements BmsBookCategoryDao {

}