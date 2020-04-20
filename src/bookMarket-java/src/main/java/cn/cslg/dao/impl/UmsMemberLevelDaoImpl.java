package cn.cslg.dao.impl;

import cn.cslg.model.UmsMemberLevel;
import cn.cslg.dao.UmsMemberLevelDao;
import org.springframework.stereotype.Repository;

/**
 * 会员等级表(UmsMemberLevel)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 13:36:01
 */
@Repository("umsMemberLevelDao")
public class UmsMemberLevelDaoImpl extends GenericDaoImpl<UmsMemberLevel, Long> implements UmsMemberLevelDao {

}