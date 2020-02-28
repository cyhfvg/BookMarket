package cn.cslg.dao.impl;

import cn.cslg.model.UmsMemberTag;
import cn.cslg.dao.UmsMemberTagDao;
import org.springframework.stereotype.Repository;

/**
 * 用户标签表(UmsMemberTag)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 13:36:01
 */
@Repository("umsMemberTagDao")
public class UmsMemberTagDaoImpl extends GenericDaoImpl<UmsMemberTag, Long> implements UmsMemberTagDao {

}