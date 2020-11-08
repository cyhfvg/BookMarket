package cn.cslg.service;

import cn.cslg.model.UmsMemberRuleSettings;
import java.util.List;

/**
 * 会员成长规则
(UmsMemberRuleSettings)表服务接口
 *
 * @author 张广洲
 * @since 2020-02-26 14:17:00
 */
public interface UmsMemberRuleSettingsService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    UmsMemberRuleSettings queryById(Long id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<UmsMemberRuleSettings> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param umsMemberRuleSettings 实例对象
     * @return 实例对象
     */
    void insert(UmsMemberRuleSettings umsMemberRuleSettings);

    /**
     * 修改数据
     *
     * @param umsMemberRuleSettings 实例对象
     * @return 实例对象
     */
    void update(UmsMemberRuleSettings umsMemberRuleSettings);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    void deleteById(Long id);

}