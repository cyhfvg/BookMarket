package cn.cslg.dao.impl;

import cn.cslg.model.BmsProduct;
import cn.cslg.dao.BmsProductDao;
import org.springframework.stereotype.Repository;

/**
 * 商品信息(BmsProduct)表服务实现类
 *
 * @author zhangguangzhou
 * @since 2020-04-14 14:56:00
 */
@Repository("bmsProductDao")
public class BmsProductDaoImpl extends GenericDaoImpl<BmsProduct, Long> implements BmsProductDao {

}