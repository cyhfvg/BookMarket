package cn.cslg.service.impl;

import cn.cslg.model.UmsMemberRuleSettings;
import cn.cslg.dao.UmsMemberRuleSettingsDao;
import cn.cslg.service.UmsMemberRuleSettingsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 会员成长规则
(UmsMemberRuleSettings)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 14:20:02
 */
@Service("umsMemberRuleSettingsService")
public class UmsMemberRuleSettingsServiceImpl implements UmsMemberRuleSettingsService {
    @Resource(name="umsMemberRuleSettingsDao")
    private UmsMemberRuleSettingsDao umsMemberRuleSettingsDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public UmsMemberRuleSettings queryById(Long id) {
        return this.umsMemberRuleSettingsDao.findById(UmsMemberRuleSettings.class, id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<UmsMemberRuleSettings> queryAllByLimit(int offset, int limit) {
        return this.umsMemberRuleSettingsDao.findAll(UmsMemberRuleSettings.class, offset, limit);
    }

    /**
     * 新增数据
     *
     * @param umsMemberRuleSettings 实例对象
     */
    @Override
    public void insert(UmsMemberRuleSettings umsMemberRuleSettings) {
        this.umsMemberRuleSettingsDao.save(umsMemberRuleSettings);
    }

    /**
     * 修改数据
     *
     * @param umsMemberRuleSettings 实例对象
     */
    @Override
    public void update(UmsMemberRuleSettings umsMemberRuleSettings) {
        this.umsMemberRuleSettingsDao.saveorupdate(umsMemberRuleSettings);
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     */
    @Override
    public void deleteById(Long id) {
        this.umsMemberRuleSettingsDao.deleteById(UmsMemberRuleSettings.class, id);
    }
}