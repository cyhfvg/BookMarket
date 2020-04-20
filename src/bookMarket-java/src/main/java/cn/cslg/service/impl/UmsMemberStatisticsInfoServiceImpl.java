package cn.cslg.service.impl;

import cn.cslg.model.UmsMemberStatisticsInfo;
import cn.cslg.dao.UmsMemberStatisticsInfoDao;
import cn.cslg.service.UmsMemberStatisticsInfoService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 会员统计信息
(UmsMemberStatisticsInfo)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 14:20:02
 */
@Service("umsMemberStatisticsInfoService")
public class UmsMemberStatisticsInfoServiceImpl implements UmsMemberStatisticsInfoService {
    @Resource(name="umsMemberStatisticsInfoDao")
    private UmsMemberStatisticsInfoDao umsMemberStatisticsInfoDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public UmsMemberStatisticsInfo queryById(Long id) {
        return this.umsMemberStatisticsInfoDao.findById(UmsMemberStatisticsInfo.class, id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<UmsMemberStatisticsInfo> queryAllByLimit(int offset, int limit) {
        return this.umsMemberStatisticsInfoDao.findAll(UmsMemberStatisticsInfo.class, offset, limit);
    }

    /**
     * 新增数据
     *
     * @param umsMemberStatisticsInfo 实例对象
     */
    @Override
    public void insert(UmsMemberStatisticsInfo umsMemberStatisticsInfo) {
        this.umsMemberStatisticsInfoDao.save(umsMemberStatisticsInfo);
    }

    /**
     * 修改数据
     *
     * @param umsMemberStatisticsInfo 实例对象
     */
    @Override
    public void update(UmsMemberStatisticsInfo umsMemberStatisticsInfo) {
        this.umsMemberStatisticsInfoDao.saveorupdate(umsMemberStatisticsInfo);
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     */
    @Override
    public void deleteById(Long id) {
        this.umsMemberStatisticsInfoDao.deleteById(UmsMemberStatisticsInfo.class, id);
    }
}