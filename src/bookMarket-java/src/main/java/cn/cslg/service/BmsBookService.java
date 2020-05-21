package cn.cslg.service;

import cn.cslg.model.BmsBook;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * 商品信息(BmsBook)表服务接口
 *
 * @author zhangguangzhou
 * @since 2020-04-15 13:44:51
 */
public interface BmsBookService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    BmsBook queryById(Long id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<BmsBook> queryAllByLimit(int offset, int limit);

    /**
     * 通过用户id查询用户摊位的书籍
     * @param memberId long 用户id
     * @return 返回结果集
     */
    List<BmsBook> listShopBooks(long memberId);

    /**
     * 新增数据
     *
     * @param bmsBook 实例对象
     * @return 实例对象
     */
    void insert(BmsBook bmsBook);

    /**
     * 修改数据
     *
     * @param bmsBook 实例对象
     * @return 实例对象
     */
    void update(BmsBook bmsBook);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    void deleteById(Long id);

    /**
     * 根据页码，页长分页获取所有在售书籍
     * @param page int 页码
     * @param pageSize int 页长
     * @return HashMap<String, Object> <= [<total, int>, <books, ArrayList<BmsBook>>]
     */
    Map<String, Object> listAllBooks(int page, int pageSize);

    /**
     * 搜索书籍
     * @param memberId 用户编号
     * @param searchText 搜索字符串
     * @param page 页码
     * @param pageSize 页长
     * @return HashMap<String, Object> <= [<total, int>, <books, ArrayList<BmsBook>]
     */
    Map<String, Object> searchBooks(long memberId, String searchText, int page, int pageSize);

    /**
     * 根据书籍id列表返回书籍
     * @param Ids 书籍id
     * @return 返回书籍结果集
     */
    List<BmsBook> getBooksByIds(List Ids);

    /**
     * 根据内容搜索书籍
     * @param content 内容
     * @param page 页码
     * @param pageSize 页长
     * @return List
     */
    List<BmsBook> adminSearchBook(String content, int page, int pageSize);

    /**
     * 删除书籍
     * @param books 欲删除的书籍
     */
    void deleteBooks(List<BmsBook> books);

}