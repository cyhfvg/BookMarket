package cn.cslg.service.impl;

import cn.cslg.model.BmsSearchLog;
import cn.cslg.dao.BmsSearchLogDao;
import cn.cslg.service.BmsSearchLogService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (BmsSearchLog)表服务实现类
 *
 * @author zhangguangzhou
 * @since 2020-04-18 12:56:14
 */
@Service("bmsSearchLogService")
public class BmsSearchLogServiceImpl implements BmsSearchLogService {
    @Resource(name="bmsSearchLogDao")
    private BmsSearchLogDao bmsSearchLogDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public BmsSearchLog queryById(Long id) {
        return this.bmsSearchLogDao.findById(BmsSearchLog.class, id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<BmsSearchLog> queryAllByLimit(int offset, int limit) {
        return this.bmsSearchLogDao.findAll(BmsSearchLog.class, offset, limit);
    }

    /**
     * 新增数据
     *
     * @param bmsSearchLog 实例对象
     */
    @Override
    public void insert(BmsSearchLog bmsSearchLog) {
        this.bmsSearchLogDao.save(bmsSearchLog);
    }

    /**
     * 修改数据
     *
     * @param bmsSearchLog 实例对象
     */
    @Override
    public void update(BmsSearchLog bmsSearchLog) {
        this.bmsSearchLogDao.saveorupdate(bmsSearchLog);
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     */
    @Override
    public void deleteById(Long id) {
        this.bmsSearchLogDao.deleteById(BmsSearchLog.class, id);
    }
}