package cn.cslg.service.impl;

import cn.cslg.dao.BmsSearchLogDao;
import cn.cslg.model.BmsBook;
import cn.cslg.dao.BmsBookDao;
import cn.cslg.model.BmsSearchLog;
import cn.cslg.service.BmsBookService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 商品信息(BmsBook)表服务实现类
 *
 * @author zhangguangzhou
 * @since 2020-04-15 13:44:51
 */
@Service("bmsBookService")
public class BmsBookServiceImpl implements BmsBookService {
    @Resource(name="bmsBookDao")
    private BmsBookDao bmsBookDao;

    @Resource(name = "bmsSearchLogDao")
    private BmsSearchLogDao bmsSearchLogDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public BmsBook queryById(Long id) {
        return this.bmsBookDao.findById(BmsBook.class, id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<BmsBook> queryAllByLimit(int offset, int limit) {
        return this.bmsBookDao.findAll(BmsBook.class, offset, limit);
    }

    /**
     * 通过用户id查询用户摊位的书籍
     * @param memberId long 用户id
     * @return 返回结果集
     */
    @Override
    public List<BmsBook> listShopBooks(long memberId) {
        return this.bmsBookDao.findByProperty(BmsBook.class, "memberId", memberId);
    }

    /**
     * 新增数据
     *
     * @param bmsBook 实例对象
     */
    @Override
    public void insert(BmsBook bmsBook) {
        this.bmsBookDao.save(bmsBook);
    }

    /**
     * 修改数据
     *
     * @param bmsBook 实例对象
     */
    @Override
    public void update(BmsBook bmsBook) {
        this.bmsBookDao.saveorupdate(bmsBook);
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     */
    @Override
    public void deleteById(Long id) {
        this.bmsBookDao.deleteById(BmsBook.class, id);
    }

    /**
     * 分页列出书籍
     * @param page int 页码
     * @param pageSize int 页长
     * @return Map<String, Object>
     */
    @Override
    public Map<String, Object> listAllBooks(int page, int pageSize) {
        String hql = "select book from BmsBook as book where delete_status = ?0 and publish_status = ?1";
        Object [] params = {0, 1};

        List<BmsBook> list = bmsBookDao.findAll(BmsBook.class,hql, params, pageSize * (page - 1) + 1, pageSize);
        long total = bmsBookDao.getCount();

        Map<String, Object> map = new HashMap<>();
        map.put("total", total);
        map.put("books", list);
        return map;
    }

    /**
     * 搜索书籍
     * @param memberId 用户编号
     * @param searchText 搜索字符串
     * @param page 页码
     * @param pageSize 页长
     * @return Map<String, Object>
     */
    @Override
    public Map<String, Object> searchBooks(long memberId, String searchText, int page, int pageSize) {
        List<BmsBook> list = bmsBookDao.findAll(BmsBook.class, "select book from BmsBook as book where book.name like ?0 or book.isbn like ?1 ",new Object[]{"%" + searchText + "%", "%" + searchText + "%"}, pageSize * (page - 1), pageSize);
        int count = list.size();

        Map<String, Object> map = new HashMap<>();
        map.put("total", count);
        map.put("books", list);

        BmsSearchLog log = new BmsSearchLog();
        log.setMemberId(memberId);
        log.setText(searchText);
        log.setCreateTime(new Date());
        bmsSearchLogDao.save(log);

        return map;
    }

    /**
     *
     * @param Ids 书籍id
     * @return List<BmsBook>
     */
    @Override
    public List<BmsBook> getBooksByIds(List Ids) {
        return bmsBookDao.queryBookByIds(Ids);
    }

    @Override
    public List<BmsBook> adminSearchBook(String content, int page, int pageSize) {
        return bmsBookDao.findAll(BmsBook.class, "select book from BmsBook as book where book.name like ?0 or book.isbn like ?1 ",new Object[]{"%" + content + "%", "%" + content + "%"}, pageSize * (page - 1), pageSize);
    }

    @Override
    public void deleteBooks(List<BmsBook> books) {
        bmsBookDao.updateBooks(books);
    }
}