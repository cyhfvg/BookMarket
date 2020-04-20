package cn.cslg.dao;

import cn.cslg.model.UmsMember;
import java.util.List;

/**
 * 会员表(UmsMember)表数据库访问层
 *
 * @author 张广洲
 * @since 2020-02-26 13:34:08
 */
public interface UmsMemberDao extends GenericDao<UmsMember, Long>{

    /**
     * 更新用户列表
     * @param members 用户列表
     */
    public void updateUmsMembers(List<UmsMember> members);
}