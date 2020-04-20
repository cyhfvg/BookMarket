package cn.cslg.dao.impl;

import cn.cslg.model.UmsMemberStatisticsInfo;
import cn.cslg.dao.UmsMemberStatisticsInfoDao;
import org.springframework.stereotype.Repository;

/**
 * 会员统计信息
(UmsMemberStatisticsInfo)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 13:36:01
 */
@Repository("umsMemberStatisticsInfoDao")
public class UmsMemberStatisticsInfoDaoImpl extends GenericDaoImpl<UmsMemberStatisticsInfo, Long> implements UmsMemberStatisticsInfoDao {

}