package cn.cslg.service.impl;

import cn.cslg.dto.UmsMemberParam;
import cn.cslg.model.UmsMember;
import cn.cslg.dao.UmsMemberDao;
import cn.cslg.service.UmsMemberService;
import cn.cslg.util.CodecUtil;
import cn.cslg.util.CollectionUtil;
import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * 会员表(UmsMember)表服务实现类
 *
 * @author 张广洲
 * @since 2020-02-26 14:20:02
 */
@Service("umsMemberService")
public class UmsMemberServiceImpl implements UmsMemberService {
    @Resource(name="umsMemberDao")
    private UmsMemberDao umsMemberDao;

    /**
     * 通过ID查询单条数据
     *
     * @param id 主键
     * @return 实例对象
     */
    @Override
    public UmsMember queryById(Long id) {
        return this.umsMemberDao.findById(UmsMember.class, id);
    }

    /**
     * 查询多条数据
     *
     * @param offset 查询起始位置
     * @param limit 查询条数
     * @return 对象列表
     */
    @Override
    public List<UmsMember> queryAllByLimit(int offset, int limit) {
        return this.umsMemberDao.findAll(UmsMember.class, offset, limit);
    }

    /**
     * 新增数据
     *
     * @param umsMember 实例对象
     */
    @Override
    public void insert(UmsMember umsMember) {
        this.umsMemberDao.save(umsMember);
    }

    /**
     * 注册新用户
     * @param umsMemberParam dto注册实体
     * @return umsMember 新用户实体
     */
    @Override
    public UmsMember register(UmsMemberParam umsMemberParam) {
        UmsMember umsMember = new UmsMember();
        BeanUtils.copyProperties(umsMemberParam, umsMember);
        umsMember.setBalance(0);
        umsMember.setCreateTime(new Date());
        umsMember.setMemberLevelId((long) 4);
        umsMember.setStatus(1);
        // 判断用户是否已存在
        List<UmsMember> list = umsMemberDao.findByProperty(UmsMember.class, "username", umsMember.getUsername());
        if (CollectionUtil.isNotEmpty(list)) {
            return null;
        }

        // 密码加密
        String encodePassword = CodecUtil.encryptSHA(umsMember.getPassword());
        umsMember.setPassword(encodePassword);
        // 写入数据库
        umsMemberDao.save(umsMember);
        return umsMember;
    }

    @Override
    public UmsMember login(UmsMemberParam umsMemberParam) {
        List<UmsMember> list = umsMemberDao.findByProperty(UmsMember.class, "username", umsMemberParam.getUsername());
        if (CollectionUtil.isNotEmpty(list)) {
            UmsMember umsMember = list.get(0);
            if (umsMember.getPassword().equals(CodecUtil.encryptSHA(umsMemberParam.getPassword()))) {
                return umsMember;
            }
        }
        return null;
    }

    /**
     * 修改数据
     *
     * @param umsMember 实例对象
     */
    @Override
    public void update(UmsMember umsMember) {
        this.umsMemberDao.saveorupdate(umsMember);
    }

    /**
     * 通过主键删除数据
     *
     * @param id 主键
     */
    @Override
    public void deleteById(Long id) {
        this.umsMemberDao.deleteById(UmsMember.class, id);
    }

    @Override
    public void updateMembers(List<UmsMember> members) {
        umsMemberDao.updateUmsMembers(members);
    }

    @Override
    public List<UmsMember> searchMember(String content, int page, int pageSize) {
//        String hql = "from UmsMember as member where member.username like ?0 or member.nickname like ?1 ";
        String hql = "from UmsMember a where " +
                "a.username like ?0 " +
                "or a.nickname like ?1 ";
        Object[] params = {
                "%" + content + "%",
                "%" + content + "%"};

        return umsMemberDao.findAll(UmsMember.class, hql, params, pageSize * (page - 1), pageSize);
    }
}