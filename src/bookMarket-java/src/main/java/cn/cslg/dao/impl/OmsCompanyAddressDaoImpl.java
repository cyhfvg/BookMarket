package cn.cslg.dao.impl;

import cn.cslg.model.OmsCompanyAddress;
import cn.cslg.dao.OmsCompanyAddressDao;
import org.springframework.stereotype.Repository;

/**
 * (OmsCompanyAddress)表服务实现类
 *
 * @author zhangguangzhou
 * @since 2020-04-13 10:06:45
 */
@Repository("omsCompanyAddressDao")
public class OmsCompanyAddressDaoImpl extends GenericDaoImpl<OmsCompanyAddress, Long> implements OmsCompanyAddressDao {

}