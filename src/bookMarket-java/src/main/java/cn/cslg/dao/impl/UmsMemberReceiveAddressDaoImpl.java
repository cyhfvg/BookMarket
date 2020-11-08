package cn.cslg.dao.impl;

import cn.cslg.model.UmsMemberReceiveAddress;
import cn.cslg.dao.UmsMemberReceiveAddressDao;
import org.springframework.stereotype.Repository;

/**
 * 会员收货地址表

(UmsMemberReceiveAddress)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 13:36:01
 */
@Repository("umsMemberReceiveAddressDao")
public class UmsMemberReceiveAddressDaoImpl extends GenericDaoImpl<UmsMemberReceiveAddress, Long> implements UmsMemberReceiveAddressDao {

}