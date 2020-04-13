package cn.cslg.dao.impl;

import cn.cslg.model.OmsOrder;
import cn.cslg.dao.OmsOrderDao;
import org.springframework.stereotype.Repository;

/**
 * (OmsOrder)表服务实现类
 *
 * @author zhangguangzhou
 * @since 2020-04-13 10:06:18
 */
@Repository("omsOrderDao")
public class OmsOrderDaoImpl extends GenericDaoImpl<OmsOrder, Long> implements OmsOrderDao {

}