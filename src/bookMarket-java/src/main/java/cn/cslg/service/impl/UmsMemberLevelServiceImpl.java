package cn.cslg.service.impl;

import cn.cslg.model.UmsMemberLevel;
import cn.cslg.dao.UmsMemberLevelDao;
import cn.cslg.service.UmsMemberLevelService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 会员等级表(UmsMemberLevel)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 14:20:02
 */
@Service("umsMemberLevelService")
public class UmsMemberLevelServiceImpl implements UmsMemberLevelService {
    @Resource(name="umsMemberLevelDao")
    private UmsMemberLevelDao umsMemberLevelDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public UmsMemberLevel queryById(Long id) {
        return this.umsMemberLevelDao.findById(UmsMemberLevel.class, id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<UmsMemberLevel> queryAllByLimit(int offset, int limit) {
        return this.umsMemberLevelDao.findAll(UmsMemberLevel.class, offset, limit);
    }

    /**
     * 新增数据
     *
     * @param umsMemberLevel 实例对象
     */
    @Override
    public void insert(UmsMemberLevel umsMemberLevel) {
        this.umsMemberLevelDao.save(umsMemberLevel);
    }

    /**
     * 修改数据
     *
     * @param umsMemberLevel 实例对象
     */
    @Override
    public void update(UmsMemberLevel umsMemberLevel) {
        this.umsMemberLevelDao.saveorupdate(umsMemberLevel);
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     */
    @Override
    public void deleteById(Long id) {
        this.umsMemberLevelDao.deleteById(UmsMemberLevel.class, id);
    }
}