package cn.cslg.service.impl;

import cn.cslg.model.UmsMemberTag;
import cn.cslg.dao.UmsMemberTagDao;
import cn.cslg.service.UmsMemberTagService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 用户标签表(UmsMemberTag)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 14:20:02
 */
@Service("umsMemberTagService")
public class UmsMemberTagServiceImpl implements UmsMemberTagService {
    @Resource(name="umsMemberTagDao")
    private UmsMemberTagDao umsMemberTagDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public UmsMemberTag queryById(Long id) {
        return this.umsMemberTagDao.findById(UmsMemberTag.class, id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<UmsMemberTag> queryAllByLimit(int offset, int limit) {
        return this.umsMemberTagDao.findAll(UmsMemberTag.class, offset, limit);
    }

    /**
     * 新增数据
     *
     * @param umsMemberTag 实例对象
     */
    @Override
    public void insert(UmsMemberTag umsMemberTag) {
        this.umsMemberTagDao.save(umsMemberTag);
    }

    /**
     * 修改数据
     *
     * @param umsMemberTag 实例对象
     */
    @Override
    public void update(UmsMemberTag umsMemberTag) {
        this.umsMemberTagDao.saveorupdate(umsMemberTag);
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     */
    @Override
    public void deleteById(Long id) {
        this.umsMemberTagDao.deleteById(UmsMemberTag.class, id);
    }
}