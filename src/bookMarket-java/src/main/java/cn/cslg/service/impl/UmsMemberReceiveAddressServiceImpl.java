package cn.cslg.service.impl;

import cn.cslg.model.UmsMemberReceiveAddress;
import cn.cslg.dao.UmsMemberReceiveAddressDao;
import cn.cslg.service.UmsMemberReceiveAddressService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 会员收货地址表

(UmsMemberReceiveAddress)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 14:20:02
 */
@Service("umsMemberReceiveAddressService")
public class UmsMemberReceiveAddressServiceImpl implements UmsMemberReceiveAddressService {
    @Resource(name="umsMemberReceiveAddressDao")
    private UmsMemberReceiveAddressDao umsMemberReceiveAddressDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public UmsMemberReceiveAddress queryById(Long id) {
        return this.umsMemberReceiveAddressDao.findById(UmsMemberReceiveAddress.class, id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<UmsMemberReceiveAddress> queryAllByLimit(int offset, int limit) {
        return this.umsMemberReceiveAddressDao.findAll(UmsMemberReceiveAddress.class, offset, limit);
    }

    /**
     * 新增数据
     *
     * @param umsMemberReceiveAddress 实例对象
     */
    @Override
    public void insert(UmsMemberReceiveAddress umsMemberReceiveAddress) {
        this.umsMemberReceiveAddressDao.save(umsMemberReceiveAddress);
    }

    /**
     * 修改数据
     *
     * @param umsMemberReceiveAddress 实例对象
     */
    @Override
    public void update(UmsMemberReceiveAddress umsMemberReceiveAddress) {
        this.umsMemberReceiveAddressDao.saveorupdate(umsMemberReceiveAddress);
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     */
    @Override
    public void deleteById(Long id) {
        this.umsMemberReceiveAddressDao.deleteById(UmsMemberReceiveAddress.class, id);
    }
}