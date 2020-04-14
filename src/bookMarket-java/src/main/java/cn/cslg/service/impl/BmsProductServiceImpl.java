package cn.cslg.service.impl;

import cn.cslg.model.BmsProduct;
import cn.cslg.dao.BmsProductDao;
import cn.cslg.service.BmsProductService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * 商品信息(BmsProduct)表服务实现类
 *
 * @author zhangguangzhou
 * @since 2020-04-14 14:56:00
 */
@Service("bmsProductService")
public class BmsProductServiceImpl implements BmsProductService {
    @Resource(name="bmsProductDao")
    private BmsProductDao bmsProductDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public BmsProduct queryById(Long id) {
        return this.bmsProductDao.findById(BmsProduct.class, id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<BmsProduct> queryAllByLimit(int offset, int limit) {
        return this.bmsProductDao.findAll(BmsProduct.class, offset, limit);
    }

    /**
     * 新增数据
     *
     * @param bmsProduct 实例对象
     */
    @Override
    public void insert(BmsProduct bmsProduct) {
        this.bmsProductDao.save(bmsProduct);
    }

    /**
     * 修改数据
     *
     * @param bmsProduct 实例对象
     */
    @Override
    public void update(BmsProduct bmsProduct) {
        this.bmsProductDao.saveorupdate(bmsProduct);
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     */
    @Override
    public void deleteById(Long id) {
        this.bmsProductDao.deleteById(BmsProduct.class, id);
    }
}