package cn.cslg.service;

import cn.cslg.dto.MemberBookActionParam;
import cn.cslg.dto.MemberBookActionSetParam;
import cn.cslg.dto.UmsMemberLikePromoteParam;
import cn.cslg.model.BmsBook;
import cn.cslg.model.UmsMemberLike;
import java.util.List;
import java.util.Map;

/**
 * (UmsMemberLike)表服务接口
 *
 * @author zhangguangzhou
 * @since 2020-04-20 10:38:06
 */
public interface UmsMemberLikeService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    UmsMemberLike queryById(Long id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<UmsMemberLike> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param umsMemberLike 实例对象
     * @return 实例对象
     */
    void insert(UmsMemberLike umsMemberLike);

    /**
     * 修改数据
     *
     * @param umsMemberLike 实例对象
     * @return 实例对象
     */
    void update(UmsMemberLike umsMemberLike);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    void deleteById(Long id);

    MemberBookActionSetParam getMemberBookTable();

    /**
     * 写入推荐列表
     * @param param dto
     */
    void insertPromoteQueue(UmsMemberLikePromoteParam param);

    /**
     * 根据用户id获取用户的推荐列表
     * @param memberId 用户id
     * @return List
     */
    List<BmsBook> getMemberPromoteByMemberId(long memberId);

}