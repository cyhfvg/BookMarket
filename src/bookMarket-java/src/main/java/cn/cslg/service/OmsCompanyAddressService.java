package cn.cslg.service;

import cn.cslg.model.OmsCompanyAddress;
import java.util.List;

/**
 * (OmsCompanyAddress)表服务接口
 *
 * @author zhangguangzhou
 * @since 2020-04-13 10:06:45
 */
public interface OmsCompanyAddressService {

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    OmsCompanyAddress queryById(Long id);

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    List<OmsCompanyAddress> queryAllByLimit(int offset, int limit);

    /**
     * 新增数据
     *
     * @param omsCompanyAddress 实例对象
     * @return 实例对象
     */
    void insert(OmsCompanyAddress omsCompanyAddress);

    /**
     * 修改数据
     *
     * @param omsCompanyAddress 实例对象
     * @return 实例对象
     */
    void update(OmsCompanyAddress omsCompanyAddress);

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     * @return 是否成功
     */
    void deleteById(Long id);

    /**
     *
     * @param memberId 用户编号
     * @return 查询结果集
     */
    List<OmsCompanyAddress> getAddressByMemberId(long memberId);

}