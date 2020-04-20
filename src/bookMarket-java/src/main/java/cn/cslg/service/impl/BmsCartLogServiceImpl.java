package cn.cslg.service.impl;

import cn.cslg.model.BmsCartLog;
import cn.cslg.dao.BmsCartLogDao;
import cn.cslg.service.BmsCartLogService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 用户购物车内容表(BmsCartLog)表服务实现类
 *
 * @author zhangguangzhou
 * @since 2020-04-18 15:41:40
 */
@Service("bmsCartLogService")
public class BmsCartLogServiceImpl implements BmsCartLogService {
    @Resource(name="bmsCartLogDao")
    private BmsCartLogDao bmsCartLogDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public BmsCartLog queryById(Long id) {
        return this.bmsCartLogDao.findById(BmsCartLog.class, id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<BmsCartLog> queryAllByLimit(int offset, int limit) {
        return this.bmsCartLogDao.findAll(BmsCartLog.class, offset, limit);
    }

    /**
     * 新增数据
     *
     * @param bmsCartLog 实例对象
     */
    @Override
    public void insert(BmsCartLog bmsCartLog) {
        this.bmsCartLogDao.save(bmsCartLog);
    }

    /**
     * 修改数据
     *
     * @param bmsCartLog 实例对象
     */
    @Override
    public void update(BmsCartLog bmsCartLog) {
        this.bmsCartLogDao.saveorupdate(bmsCartLog);
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     */
    @Override
    public void deleteById(Long id) {
        this.bmsCartLogDao.deleteById(BmsCartLog.class, id);
    }

    /**
     * 获取用户的购物车内容
     * @param memberId 用户id
     * @return List<BmsCartLog>
     */
    @Override
    public List<BmsCartLog> getCarts(long memberId) {
        return bmsCartLogDao.findByProperty(BmsCartLog.class, "memberId", memberId);
    }
}