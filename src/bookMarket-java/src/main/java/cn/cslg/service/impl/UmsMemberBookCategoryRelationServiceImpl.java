package cn.cslg.service.impl;

import cn.cslg.model.UmsMemberBookCategoryRelation;
import cn.cslg.dao.UmsMemberBookCategoryRelationDao;
import cn.cslg.service.UmsMemberBookCategoryRelationService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 会员-书籍分类关系表(UmsMemberBookCategoryRelation)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 14:20:02
 */
@Service("umsMemberBookCategoryRelationService")
public class UmsMemberBookCategoryRelationServiceImpl implements UmsMemberBookCategoryRelationService {
    @Resource(name="umsMemberBookCategoryRelationDao")
    private UmsMemberBookCategoryRelationDao umsMemberBookCategoryRelationDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public UmsMemberBookCategoryRelation queryById(Long id) {
        return this.umsMemberBookCategoryRelationDao.findById(UmsMemberBookCategoryRelation.class, id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<UmsMemberBookCategoryRelation> queryAllByLimit(int offset, int limit) {
        return this.umsMemberBookCategoryRelationDao.findAll(UmsMemberBookCategoryRelation.class, offset, limit);
    }

    /**
     * 新增数据
     *
     * @param umsMemberBookCategoryRelation 实例对象
     */
    @Override
    public void insert(UmsMemberBookCategoryRelation umsMemberBookCategoryRelation) {
        this.umsMemberBookCategoryRelationDao.save(umsMemberBookCategoryRelation);
    }

    /**
     * 修改数据
     *
     * @param umsMemberBookCategoryRelation 实例对象
     */
    @Override
    public void update(UmsMemberBookCategoryRelation umsMemberBookCategoryRelation) {
        this.umsMemberBookCategoryRelationDao.saveorupdate(umsMemberBookCategoryRelation);
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     */
    @Override
    public void deleteById(Long id) {
        this.umsMemberBookCategoryRelationDao.deleteById(UmsMemberBookCategoryRelation.class, id);
    }
}