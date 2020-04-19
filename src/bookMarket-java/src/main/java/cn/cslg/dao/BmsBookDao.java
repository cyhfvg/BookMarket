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

    /**
     * 根据书籍的Id列表从数据库查询书籍
     * @param Ids 书籍Ids
     * @return 书籍结果集
     */
    List<BmsBook> queryBookByIds(List Ids);

    /**
     * 批量更新书籍信息
     * @param books List
     */
    void updateBooks(List<BmsBook> books);


}