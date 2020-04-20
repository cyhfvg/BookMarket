package cn.cslg.service.impl;

import cn.cslg.model.UmsAdminLoginLog;
import cn.cslg.dao.UmsAdminLoginLogDao;
import cn.cslg.service.UmsAdminLoginLogService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 后台用户登录日志(UmsAdminLoginLog)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 14:20:02
 */
@Service("umsAdminLoginLogService")
public class UmsAdminLoginLogServiceImpl implements UmsAdminLoginLogService {
    @Resource(name="umsAdminLoginLogDao")
    private UmsAdminLoginLogDao umsAdminLoginLogDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public UmsAdminLoginLog queryById(Long id) {
        return this.umsAdminLoginLogDao.findById(UmsAdminLoginLog.class, id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<UmsAdminLoginLog> queryAllByLimit(int offset, int limit) {
        return this.umsAdminLoginLogDao.findAll(UmsAdminLoginLog.class, offset, limit);
    }

    /**
     * 新增数据
     *
     * @param umsAdminLoginLog 实例对象
     */
    @Override
    public void insert(UmsAdminLoginLog umsAdminLoginLog) {
        this.umsAdminLoginLogDao.save(umsAdminLoginLog);
    }

    /**
     * 修改数据
     *
     * @param umsAdminLoginLog 实例对象
     */
    @Override
    public void update(UmsAdminLoginLog umsAdminLoginLog) {
        this.umsAdminLoginLogDao.saveorupdate(umsAdminLoginLog);
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     */
    @Override
    public void deleteById(Long id) {
        this.umsAdminLoginLogDao.deleteById(UmsAdminLoginLog.class, id);
    }
}