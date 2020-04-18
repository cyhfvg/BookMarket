package cn.cslg.dao;

import cn.cslg.model.BmsBook;
import java.util.List;

/**
 * 商品信息(BmsBook)表数据库访问层
 *
 * @author zhangguangzhou
 * @since 2020-04-15 13:44:51
 */
public interface BmsBookDao extends GenericDao<BmsBook, Long>{
    /**
     * 获取表中数据记录条数
     * @return Integer 表中记录条数
     */
    long getCount();


}