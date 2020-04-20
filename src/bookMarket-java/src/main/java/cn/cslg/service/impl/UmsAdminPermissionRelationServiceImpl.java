package cn.cslg.service.impl;

import cn.cslg.model.UmsAdminPermissionRelation;
import cn.cslg.dao.UmsAdminPermissionRelationDao;
import cn.cslg.service.UmsAdminPermissionRelationService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 后台用户和权限关系表(除角色中定义的权限以外的加减权限)
(UmsAdminPermissionRelation)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 14:20:02
 */
@Service("umsAdminPermissionRelationService")
public class UmsAdminPermissionRelationServiceImpl implements UmsAdminPermissionRelationService {
    @Resource(name="umsAdminPermissionRelationDao")
    private UmsAdminPermissionRelationDao umsAdminPermissionRelationDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public UmsAdminPermissionRelation queryById(Long id) {
        return this.umsAdminPermissionRelationDao.findById(UmsAdminPermissionRelation.class, id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<UmsAdminPermissionRelation> queryAllByLimit(int offset, int limit) {
        return this.umsAdminPermissionRelationDao.findAll(UmsAdminPermissionRelation.class, offset, limit);
    }

    /**
     * 新增数据
     *
     * @param umsAdminPermissionRelation 实例对象
     */
    @Override
    public void insert(UmsAdminPermissionRelation umsAdminPermissionRelation) {
        this.umsAdminPermissionRelationDao.save(umsAdminPermissionRelation);
    }

    /**
     * 修改数据
     *
     * @param umsAdminPermissionRelation 实例对象
     */
    @Override
    public void update(UmsAdminPermissionRelation umsAdminPermissionRelation) {
        this.umsAdminPermissionRelationDao.saveorupdate(umsAdminPermissionRelation);
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     */
    @Override
    public void deleteById(Long id) {
        this.umsAdminPermissionRelationDao.deleteById(UmsAdminPermissionRelation.class, id);
    }
}