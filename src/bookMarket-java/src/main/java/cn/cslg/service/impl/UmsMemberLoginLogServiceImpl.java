package cn.cslg.service.impl;

import cn.cslg.dto.UmsMemberLoginLogParam;
import cn.cslg.dto.UmsMemberParam;
import cn.cslg.model.UmsMemberLoginLog;
import cn.cslg.dao.UmsMemberLoginLogDao;
import cn.cslg.service.UmsMemberLoginLogService;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * 会员登录日志表(UmsMemberLoginLog)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 14:20:02
 */
@Service("umsMemberLoginLogService")
public class UmsMemberLoginLogServiceImpl implements UmsMemberLoginLogService {
    @Resource(name="umsMemberLoginLogDao")
    private UmsMemberLoginLogDao umsMemberLoginLogDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public UmsMemberLoginLog queryById(Long id) {
        return this.umsMemberLoginLogDao.findById(UmsMemberLoginLog.class, id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<UmsMemberLoginLog> queryAllByLimit(int offset, int limit) {
        return this.umsMemberLoginLogDao.findAll(UmsMemberLoginLog.class, offset, limit);
    }

    /**
     * 新增数据
     *
     * @param umsMemberLoginLog 实例对象
     */
    @Override
    public void insert(UmsMemberLoginLog umsMemberLoginLog) {
        this.umsMemberLoginLogDao.save(umsMemberLoginLog);
    }

    /**
     * 用户登录记录
     * @param umsMemberLoginLogParam 用户登录信息dto
     * @return 实例对象
     */
    @Override
    public UmsMemberLoginLog insert(UmsMemberLoginLogParam umsMemberLoginLogParam) {
        UmsMemberLoginLog umsMemberLoginLog = new UmsMemberLoginLog();
        BeanUtils.copyProperties(umsMemberLoginLogParam, umsMemberLoginLog);
        umsMemberLoginLog.setCreateTime(new Date());
        umsMemberLoginLogDao.save(umsMemberLoginLog);
        return umsMemberLoginLog;
    }

    /**
     * 修改数据
     *
     * @param umsMemberLoginLog 实例对象
     */
    @Override
    public void update(UmsMemberLoginLog umsMemberLoginLog) {
        this.umsMemberLoginLogDao.saveorupdate(umsMemberLoginLog);
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     */
    @Override
    public void deleteById(Long id) {
        this.umsMemberLoginLogDao.deleteById(UmsMemberLoginLog.class, id);
    }
}