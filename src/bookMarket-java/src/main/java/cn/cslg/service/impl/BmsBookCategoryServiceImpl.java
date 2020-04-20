package cn.cslg.service.impl;

import cn.cslg.model.BmsBookCategory;
import cn.cslg.dao.BmsBookCategoryDao;
import cn.cslg.service.BmsBookCategoryService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 书籍分类(BmsBookCategory)表服务实现类
 *
 * @author zhangguangzhou
 * @since 2020-04-14 14:56:00
 */
@Service("bmsBookCategoryService")
public class BmsBookCategoryServiceImpl implements BmsBookCategoryService {
    @Resource(name="bmsBookCategoryDao")
    private BmsBookCategoryDao bmsBookCategoryDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public BmsBookCategory queryById(Long id) {
        return this.bmsBookCategoryDao.findById(BmsBookCategory.class, id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<BmsBookCategory> queryAllByLimit(int offset, int limit) {
        return this.bmsBookCategoryDao.findAll(BmsBookCategory.class, offset, limit);
    }

    /**
     * 新增数据
     *
     * @param bmsBookCategory 实例对象
     */
    @Override
    public void insert(BmsBookCategory bmsBookCategory) {
        this.bmsBookCategoryDao.save(bmsBookCategory);
    }

    /**
     * 修改数据
     *
     * @param bmsBookCategory 实例对象
     */
    @Override
    public void update(BmsBookCategory bmsBookCategory) {
        this.bmsBookCategoryDao.saveorupdate(bmsBookCategory);
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     */
    @Override
    public void deleteById(Long id) {
        this.bmsBookCategoryDao.deleteById(BmsBookCategory.class, id);
    }
}