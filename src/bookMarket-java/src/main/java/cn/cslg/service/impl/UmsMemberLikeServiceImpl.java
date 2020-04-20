package cn.cslg.service.impl;

import cn.cslg.dao.BmsSearchLogDao;
import cn.cslg.dao.OmsOrderItemDao;
import cn.cslg.dao.UmsMemberDao;
import cn.cslg.dto.MemberBookActionParam;
import cn.cslg.dto.MemberBookActionSetParam;
import cn.cslg.dto.UmsMemberLikePromoteParam;
import cn.cslg.model.BmsSearchLog;
import cn.cslg.model.OmsOrderItem;
import cn.cslg.model.UmsMember;
import cn.cslg.model.UmsMemberLike;
import cn.cslg.dao.UmsMemberLikeDao;
import cn.cslg.service.BmsSearchLogService;
import cn.cslg.service.UmsMemberLikeService;
import cn.cslg.util.CollectionUtil;
import cn.cslg.util.StringUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.*;

/**
 * (UmsMemberLike)表服务实现类
 *
 * @author zhangguangzhou
 * @since 2020-04-20 10:38:06
 */
@Service("umsMemberLikeService")
public class UmsMemberLikeServiceImpl implements UmsMemberLikeService {
    @Resource(name="umsMemberLikeDao")
    private UmsMemberLikeDao umsMemberLikeDao;

    @Resource(name = "bmsSearchLogDao")
    private BmsSearchLogDao bmsSearchLogDao;

    @Resource(name = "omsOrderItemDao")
    private OmsOrderItemDao omsOrderItemDao;

    @Resource(name = "umsMemberDao")
    private UmsMemberDao umsMemberDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public UmsMemberLike queryById(Long id) {
        return this.umsMemberLikeDao.findById(UmsMemberLike.class, id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<UmsMemberLike> queryAllByLimit(int offset, int limit) {
        return this.umsMemberLikeDao.findAll(UmsMemberLike.class, offset, limit);
    }

    /**
     * 新增数据
     *
     * @param umsMemberLike 实例对象
     */
    @Override
    public void insert(UmsMemberLike umsMemberLike) {
        this.umsMemberLikeDao.save(umsMemberLike);
    }

    /**
     * 修改数据
     *
     * @param umsMemberLike 实例对象
     */
    @Override
    public void update(UmsMemberLike umsMemberLike) {
        this.umsMemberLikeDao.saveorupdate(umsMemberLike);
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     */
    @Override
    public void deleteById(Long id) {
        this.umsMemberLikeDao.deleteById(UmsMemberLike.class, id);
    }

    @Override
    public MemberBookActionSetParam getMemberBookTable() {
        List<BmsSearchLog> bmsSearchLogList = bmsSearchLogDao.findAll(BmsSearchLog.class, -1, -1);
        List<OmsOrderItem> omsOrderItemList = omsOrderItemDao.findAll(OmsOrderItem.class, -1, -1);
        List<UmsMember> umsMemberList = umsMemberDao.findAll(UmsMember.class, -1, -1);


        // 数据处理
        // 移除行为记录中无isbn的搜索记录
        bmsSearchLogList.removeIf(bmsSearchLog -> StringUtil.isEmpty(bmsSearchLog.getIsbn()));
        // 移除未启用用户
        umsMemberList.removeIf(umsMember -> umsMember.getStatus() == 0);


        // 每个用户行为表对应存储
        Map<Long, Map<String, Long>> storeMap = new HashMap<>();

        // 用户ID表
        List<Long> memberIds = new ArrayList<>();

        // 为每一个用户生成 书籍用户倒查表
        for (UmsMember member :
                umsMemberList) {
            // 每个用户的行为表
            Map<String, Long> memberActionTable = new HashMap<>();

            long memberId = member.getId();

            // 存入每个用户行为表
            for (BmsSearchLog searchLog :
                    bmsSearchLogList) {
                if (searchLog.getMemberId() == memberId) {
                    memberActionTable.put(searchLog.getIsbn(), memberId);
                }
            }
            for (OmsOrderItem item :
                    omsOrderItemList) {
                if (item.getMemberId() == memberId) {
                    memberActionTable.put(item.getBookIsbn(), memberId);
                }
            }
            if (!memberActionTable.isEmpty()) {
                memberIds.add(memberId);
            }
            // 存储入 所有用户行为表
            storeMap.put(memberId, memberActionTable);
        }

        List<MemberBookActionParam> allMemberActionTable = new ArrayList<>();

        Iterator<Map.Entry<Long, Map<String, Long>>> iterator = storeMap.entrySet().iterator();
        while (iterator.hasNext()) {
            Map.Entry<Long, Map<String, Long>> entry = iterator.next();

            long memberId = entry.getKey();
            Map<String, Long> memberActionTable = entry.getValue();

            if (CollectionUtil.isNotEmpty(memberActionTable)) {
                for (String isbn: memberActionTable.keySet()) {
                    MemberBookActionParam param = new MemberBookActionParam();
                    param.setUserId(memberId);
                    param.setGoodsId(isbn);

                    allMemberActionTable.add(param);
                }
            }
        }

        MemberBookActionSetParam result = new MemberBookActionSetParam();
        result.setMemberIds(memberIds);
        result.setTable(allMemberActionTable);

        return result;
    }

    @Override
    public void insertPromoteQueue(UmsMemberLikePromoteParam param) {
        umsMemberLikeDao.saveAllPromote(param);
    }
}