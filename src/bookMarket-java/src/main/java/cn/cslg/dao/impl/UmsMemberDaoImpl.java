package cn.cslg.dao.impl;

import cn.cslg.model.UmsMember;
import cn.cslg.dao.UmsMemberDao;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 会员表(UmsMember)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 13:36:01
 */
@Repository("umsMemberDao")
public class UmsMemberDaoImpl extends GenericDaoImpl<UmsMember, Long> implements UmsMemberDao {

    @Override
    public void updateUmsMembers(List<UmsMember> members) {
        for (UmsMember member :
                members) {
            super.getHibernateTemplate().update(member);
        }
    }
}