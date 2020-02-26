package cn.cslg.dao.impl;

import cn.cslg.dao.GenericDaoImpl;
import cn.cslg.model.UmsMemberRuleSettings;
import cn.cslg.dao.UmsMemberRuleSettingsDao;
import org.springframework.stereotype.Repository;

/**
 * 会员成长规则
(UmsMemberRuleSettings)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 13:36:01
 */
@Repository("umsMemberRuleSettingsDao")
public class UmsMemberRuleSettingsDaoImpl extends GenericDaoImpl<UmsMemberRuleSettings, Long> implements UmsMemberRuleSettingsDao {

}