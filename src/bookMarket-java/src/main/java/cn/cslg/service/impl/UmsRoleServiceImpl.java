package cn.cslg.service.impl;

import cn.cslg.model.UmsRole;
import cn.cslg.dao.UmsRoleDao;
import cn.cslg.service.UmsRoleService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 后台用户角色表
(UmsRole)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 14:20:02
 */
@Service("umsRoleService")
public class UmsRoleServiceImpl implements UmsRoleService {
    @Resource(name="umsRoleDao")
    private UmsRoleDao umsRoleDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public UmsRole queryById(Long id) {
        return this.umsRoleDao.findById(UmsRole.class, id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<UmsRole> queryAllByLimit(int offset, int limit) {
        return this.umsRoleDao.findAll(UmsRole.class, offset, limit);
    }

    /**
     * 新增数据
     *
     * @param umsRole 实例对象
     */
    @Override
    public void insert(UmsRole umsRole) {
        this.umsRoleDao.save(umsRole);
    }

    /**
     * 修改数据
     *
     * @param umsRole 实例对象
     */
    @Override
    public void update(UmsRole umsRole) {
        this.umsRoleDao.saveorupdate(umsRole);
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     */
    @Override
    public void deleteById(Long id) {
        this.umsRoleDao.deleteById(UmsRole.class, id);
    }
}