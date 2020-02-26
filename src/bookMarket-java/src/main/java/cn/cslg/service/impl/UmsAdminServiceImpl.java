package cn.cslg.service.impl;

import cn.cslg.model.UmsAdmin;
import cn.cslg.dao.UmsAdminDao;
import cn.cslg.service.UmsAdminService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 后台用户表
(UmsAdmin)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 14:20:02
 */
@Service("umsAdminService")
public class UmsAdminServiceImpl implements UmsAdminService {
    @Resource(name="umsAdminDao")
    private UmsAdminDao umsAdminDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public UmsAdmin queryById(Long id) {
        return this.umsAdminDao.findById(UmsAdmin.class, id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<UmsAdmin> queryAllByLimit(int offset, int limit) {
        return this.umsAdminDao.findAll(UmsAdmin.class, offset, limit);
    }

    /**
     * 新增数据
     *
     * @param umsAdmin 实例对象
     */
    @Override
    public void insert(UmsAdmin umsAdmin) {
        this.umsAdminDao.save(umsAdmin);
    }

    /**
     * 修改数据
     *
     * @param umsAdmin 实例对象
     */
    @Override
    public void update(UmsAdmin umsAdmin) {
        this.umsAdminDao.saveorupdate(umsAdmin);
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     */
    @Override
    public void deleteById(Long id) {
        this.umsAdminDao.deleteById(UmsAdmin.class, id);
    }
}