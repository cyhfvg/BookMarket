package cn.cslg.service.impl;

import cn.cslg.model.UmsMemberTagRelation;
import cn.cslg.dao.UmsMemberTagRelationDao;
import cn.cslg.service.UmsMemberTagRelationService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 用户-标签 关联表(UmsMemberTagRelation)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 14:20:02
 */
@Service("umsMemberTagRelationService")
public class UmsMemberTagRelationServiceImpl implements UmsMemberTagRelationService {
    @Resource(name="umsMemberTagRelationDao")
    private UmsMemberTagRelationDao umsMemberTagRelationDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public UmsMemberTagRelation queryById(Long id) {
        return this.umsMemberTagRelationDao.findById(UmsMemberTagRelation.class, id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<UmsMemberTagRelation> queryAllByLimit(int offset, int limit) {
        return this.umsMemberTagRelationDao.findAll(UmsMemberTagRelation.class, offset, limit);
    }

    /**
     * 新增数据
     *
     * @param umsMemberTagRelation 实例对象
     */
    @Override
    public void insert(UmsMemberTagRelation umsMemberTagRelation) {
        this.umsMemberTagRelationDao.save(umsMemberTagRelation);
    }

    /**
     * 修改数据
     *
     * @param umsMemberTagRelation 实例对象
     */
    @Override
    public void update(UmsMemberTagRelation umsMemberTagRelation) {
        this.umsMemberTagRelationDao.saveorupdate(umsMemberTagRelation);
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     */
    @Override
    public void deleteById(Long id) {
        this.umsMemberTagRelationDao.deleteById(UmsMemberTagRelation.class, id);
    }
}