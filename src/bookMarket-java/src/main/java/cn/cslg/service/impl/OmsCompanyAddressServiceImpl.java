package cn.cslg.service.impl;

import cn.cslg.model.OmsCompanyAddress;
import cn.cslg.dao.OmsCompanyAddressDao;
import cn.cslg.service.OmsCompanyAddressService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * (OmsCompanyAddress)表服务实现类
 *
 * @author zhangguangzhou
 * @since 2020-04-13 10:06:45
 */
@Service("omsCompanyAddressService")
public class OmsCompanyAddressServiceImpl implements OmsCompanyAddressService {
    @Resource(name="omsCompanyAddressDao")
    private OmsCompanyAddressDao omsCompanyAddressDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public OmsCompanyAddress queryById(Long id) {
        return this.omsCompanyAddressDao.findById(OmsCompanyAddress.class, id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<OmsCompanyAddress> queryAllByLimit(int offset, int limit) {
        return this.omsCompanyAddressDao.findAll(OmsCompanyAddress.class, offset, limit);
    }

    /**
     * 新增数据
     *
     * @param omsCompanyAddress 实例对象
     */
    @Override
    public void insert(OmsCompanyAddress omsCompanyAddress) {
        this.omsCompanyAddressDao.save(omsCompanyAddress);
    }

    /**
     * 修改数据
     *
     * @param omsCompanyAddress 实例对象
     */
    @Override
    public void update(OmsCompanyAddress omsCompanyAddress) {
        this.omsCompanyAddressDao.saveorupdate(omsCompanyAddress);
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     */
    @Override
    public void deleteById(Long id) {
        this.omsCompanyAddressDao.deleteById(OmsCompanyAddress.class, id);
    }

    /**
     *
     * @param memberId 用户编号
     * @return 返回结果集
     */
    @Override
    public List<OmsCompanyAddress> getAddressByMemberId(long memberId) {
        return omsCompanyAddressDao.findByProperty(OmsCompanyAddress.class, "memberId", memberId);
    }
}