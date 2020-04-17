package cn.cslg.dao.impl;

import cn.cslg.model.BmsBook;
import cn.cslg.dao.BmsBookDao;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * 商品信息(BmsBook)表服务实现类
 *
 * @author zhangguangzhou
 * @since 2020-04-15 13:44:51
 */
@Repository("bmsBookDao")
public class BmsBookDaoImpl extends GenericDaoImpl<BmsBook, Long> implements BmsBookDao {

//    Fixme: 修复 getCount函数 不损耗性能
    @Override
    public long getCount() {
        List<BmsBook> list = findAll(BmsBook.class);
        return list.size();
    }
}