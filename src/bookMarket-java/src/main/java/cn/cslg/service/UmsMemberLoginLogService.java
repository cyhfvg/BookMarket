package cn.cslg.service;

import cn.cslg.dto.UmsMemberLoginLogParam;
import cn.cslg.dto.UmsMemberParam;
import cn.cslg.model.UmsMember;
import cn.cslg.model.UmsMemberLoginLog;
import java.util.List;

/**
 * 会员登录日志表(UmsMemberLoginLog)表服务接口
 *
 * @author 张广洲
 * @since 2020-02-26 14:17:00
 */
public interface UmsMemberLoginLogService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    UmsMemberLoginLog queryById(Long id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<UmsMemberLoginLog> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param umsMemberLoginLog 实例对象
     * @return 实例对象
     */
    void insert(UmsMemberLoginLog umsMemberLoginLog);

    /**
     * 用户登录记录
     * @param umsMemberLoginLogParam 用户登录信息dto
     * @return 实例对象
     */
    UmsMemberLoginLog insert(UmsMemberLoginLogParam umsMemberLoginLogParam);

    /**
     * 修改数据
     *
     * @param umsMemberLoginLog 实例对象
     * @return 实例对象
     */
    void update(UmsMemberLoginLog umsMemberLoginLog);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    void deleteById(Long id);

}