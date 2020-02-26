package cn.cslg.service.impl;

import cn.cslg.model.UmsMember;
import cn.cslg.dao.UmsMemberDao;
import cn.cslg.service.UmsMemberService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 会员表(UmsMember)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 14:20:02
 */
@Service("umsMemberService")
public class UmsMemberServiceImpl implements UmsMemberService {
    @Resource(name="umsMemberDao")
    private UmsMemberDao umsMemberDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public UmsMember queryById(Long id) {
        return this.umsMemberDao.findById(UmsMember.class, id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<UmsMember> queryAllByLimit(int offset, int limit) {
        return this.umsMemberDao.findAll(UmsMember.class, offset, limit);
    }

    /**
     * 新增数据
     *
     * @param umsMember 实例对象
     */
    @Override
    public void insert(UmsMember umsMember) {
        this.umsMemberDao.save(umsMember);
    }

    /**
     * 修改数据
     *
     * @param umsMember 实例对象
     */
    @Override
    public void update(UmsMember umsMember) {
        this.umsMemberDao.saveorupdate(umsMember);
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     */
    @Override
    public void deleteById(Long id) {
        this.umsMemberDao.deleteById(UmsMember.class, id);
    }
}