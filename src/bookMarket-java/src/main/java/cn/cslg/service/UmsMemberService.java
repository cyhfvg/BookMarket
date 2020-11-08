package cn.cslg.service;

import cn.cslg.dto.UmsMemberParam;
import cn.cslg.model.UmsMember;
import java.util.List;

/**
 * 会员表(UmsMember)表服务接口
 *
 * @author 张广洲
 * @since 2020-02-26 14:17:00
 */
public interface UmsMemberService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    UmsMember queryById(Long id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<UmsMember> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param umsMember 实例对象
     * @return 实例对象
     */
    void insert(UmsMember umsMember);

    /**
     * 注册新用户
     * @param umsMemberParam
     */
    UmsMember register(UmsMemberParam umsMemberParam);

    UmsMember login(UmsMemberParam umsMemberParam);

    /**
     * 修改数据
     *
     * @param umsMember 实例对象
     * @return 实例对象
     */
    void update(UmsMember umsMember);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    void deleteById(Long id);

    /**
     * 一次更新多个用户
     * @param members 用户列表
     */
    void updateMembers(List<UmsMember> members);

    /**
     * 根据内容搜索用户
     * @param content 搜索内容
     * @param page 页码
     * @param pageSize 页长
     * @return List<UmsMember>
     */
    List<UmsMember> searchMember(String content, int page, int pageSize);

}