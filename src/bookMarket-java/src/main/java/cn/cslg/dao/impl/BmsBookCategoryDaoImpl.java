package cn.cslg.dao.impl;

import cn.cslg.dao.GenericDaoImpl;
import cn.cslg.model.BmsBookCategory;
import cn.cslg.dao.BmsBookCategoryDao;
import org.springframework.stereotype.Repository;

/**
 * 书籍分类(BmsBookCategory)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 13:36:01
 */
@Repository("bmsBookCategoryDao")
public class BmsBookCategoryDaoImpl extends GenericDaoImpl<BmsBookCategory, Long> implements BmsBookCategoryDao {

}