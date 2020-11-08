package cn.cslg.service.impl;

import cn.cslg.model.UmsPermission;
import cn.cslg.dao.UmsPermissionDao;
import cn.cslg.service.UmsPermissionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 用户权限表
(UmsPermission)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 14:20:02
 */
@Service("umsPermissionService")
public class UmsPermissionServiceImpl implements UmsPermissionService {
    @Resource(name="umsPermissionDao")
    private UmsPermissionDao umsPermissionDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public UmsPermission queryById(Long id) {
        return this.umsPermissionDao.findById(UmsPermission.class, id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<UmsPermission> queryAllByLimit(int offset, int limit) {
        return this.umsPermissionDao.findAll(UmsPermission.class, offset, limit);
    }

    /**
     * 新增数据
     *
     * @param umsPermission 实例对象
     */
    @Override
    public void insert(UmsPermission umsPermission) {
        this.umsPermissionDao.save(umsPermission);
    }

    /**
     * 修改数据
     *
     * @param umsPermission 实例对象
     */
    @Override
    public void update(UmsPermission umsPermission) {
        this.umsPermissionDao.saveorupdate(umsPermission);
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     */
    @Override
    public void deleteById(Long id) {
        this.umsPermissionDao.deleteById(UmsPermission.class, id);
    }
}