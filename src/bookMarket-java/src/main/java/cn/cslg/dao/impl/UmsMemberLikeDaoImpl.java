package cn.cslg.dao.impl;

import cn.cslg.dto.UmsMemberLikePromoteParam;
import cn.cslg.dto.UmsSingleMemberLikePromoteParam;
import cn.cslg.model.UmsMemberLike;
import cn.cslg.dao.UmsMemberLikeDao;
import org.springframework.stereotype.Repository;

import java.lang.reflect.Member;
import java.util.List;

/**
 * (UmsMemberLike)表服务实现类
 *
 * @author zhangguangzhou
 * @since 2020-04-20 10:38:06
 */
@Repository("umsMemberLikeDao")
public class UmsMemberLikeDaoImpl extends GenericDaoImpl<UmsMemberLike, Long> implements UmsMemberLikeDao {

    /**
     * 写入推荐列表
     * @param param dto
     */
    @Override
    public void saveAllPromote(UmsMemberLikePromoteParam param) {
        List<UmsSingleMemberLikePromoteParam> likePromoteParamList = param.getPromotes();
        // 写入新推荐列表之前 先 删除所有旧的记录
        List<UmsMemberLike> toDelete = super.getHibernateTemplate().loadAll(UmsMemberLike.class);
        super.getHibernateTemplate().deleteAll(toDelete);

        for (UmsSingleMemberLikePromoteParam p :
                likePromoteParamList) {
            long memberId = p.getMemberId();
            List<String> bookQueue = p.getLikeBooks();
            for (String isbn :
                    bookQueue) {
                UmsMemberLike memberLike = new UmsMemberLike();
                memberLike.setIsbn(isbn);
                memberLike.setMemberId(memberId);
                super.getHibernateTemplate().save(memberLike);
            }
        }
    }
}