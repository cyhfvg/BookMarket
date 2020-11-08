package cn.cslg.service.impl;

import cn.cslg.model.UmsRolePermissionRelation;
import cn.cslg.dao.UmsRolePermissionRelationDao;
import cn.cslg.service.UmsRolePermissionRelationService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 后台用户角色-权限 关系表
(UmsRolePermissionRelation)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 14:20:02
 */
@Service("umsRolePermissionRelationService")
public class UmsRolePermissionRelationServiceImpl implements UmsRolePermissionRelationService {
    @Resource(name="umsRolePermissionRelationDao")
    private UmsRolePermissionRelationDao umsRolePermissionRelationDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public UmsRolePermissionRelation queryById(Long id) {
        return this.umsRolePermissionRelationDao.findById(UmsRolePermissionRelation.class, id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<UmsRolePermissionRelation> queryAllByLimit(int offset, int limit) {
        return this.umsRolePermissionRelationDao.findAll(UmsRolePermissionRelation.class, offset, limit);
    }

    /**
     * 新增数据
     *
     * @param umsRolePermissionRelation 实例对象
     */
    @Override
    public void insert(UmsRolePermissionRelation umsRolePermissionRelation) {
        this.umsRolePermissionRelationDao.save(umsRolePermissionRelation);
    }

    /**
     * 修改数据
     *
     * @param umsRolePermissionRelation 实例对象
     */
    @Override
    public void update(UmsRolePermissionRelation umsRolePermissionRelation) {
        this.umsRolePermissionRelationDao.saveorupdate(umsRolePermissionRelation);
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     */
    @Override
    public void deleteById(Long id) {
        this.umsRolePermissionRelationDao.deleteById(UmsRolePermissionRelation.class, id);
    }
}