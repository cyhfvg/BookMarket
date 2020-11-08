package cn.cslg.dao;

import cn.cslg.dto.UmsMemberLikePromoteParam;
import cn.cslg.model.UmsMemberLike;
import java.util.List;

/**
 * (UmsMemberLike)表数据库访问层
 *
 * @author zhangguangzhou
 * @since 2020-04-20 10:38:06
 */
public interface UmsMemberLikeDao extends GenericDao<UmsMemberLike, Long>{

    /**
     * 写入推荐列表
     * @param param dto
     */
    void saveAllPromote(UmsMemberLikePromoteParam param);

}