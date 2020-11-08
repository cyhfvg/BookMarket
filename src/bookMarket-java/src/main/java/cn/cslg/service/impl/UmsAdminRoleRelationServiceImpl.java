package cn.cslg.service.impl;

import cn.cslg.model.UmsAdminRoleRelation;
import cn.cslg.dao.UmsAdminRoleRelationDao;
import cn.cslg.service.UmsAdminRoleRelationService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 后台用户-角色 关系表
(UmsAdminRoleRelation)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 14:20:02
 */
@Service("umsAdminRoleRelationService")
public class UmsAdminRoleRelationServiceImpl implements UmsAdminRoleRelationService {
    @Resource(name="umsAdminRoleRelationDao")
    private UmsAdminRoleRelationDao umsAdminRoleRelationDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public UmsAdminRoleRelation queryById(Long id) {
        return this.umsAdminRoleRelationDao.findById(UmsAdminRoleRelation.class, id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<UmsAdminRoleRelation> queryAllByLimit(int offset, int limit) {
        return this.umsAdminRoleRelationDao.findAll(UmsAdminRoleRelation.class, offset, limit);
    }

    /**
     * 新增数据
     *
     * @param umsAdminRoleRelation 实例对象
     */
    @Override
    public void insert(UmsAdminRoleRelation umsAdminRoleRelation) {
        this.umsAdminRoleRelationDao.save(umsAdminRoleRelation);
    }

    /**
     * 修改数据
     *
     * @param umsAdminRoleRelation 实例对象
     */
    @Override
    public void update(UmsAdminRoleRelation umsAdminRoleRelation) {
        this.umsAdminRoleRelationDao.saveorupdate(umsAdminRoleRelation);
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     */
    @Override
    public void deleteById(Long id) {
        this.umsAdminRoleRelationDao.deleteById(UmsAdminRoleRelation.class, id);
    }
}