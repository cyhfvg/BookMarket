package cn.cslg.controller;

import cn.cslg.dto.*;
import cn.cslg.model.UmsMember;
import cn.cslg.security.IgnoreSecurity;
import cn.cslg.security.TokenManager;
import cn.cslg.service.UmsMemberLoginLogService;
import cn.cslg.service.UmsMemberService;

import cn.cslg.bean.Response;
import cn.cslg.util.CollectionUtil;
import cn.cslg.util.DateUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import javax.annotation.Resource;
import java.util.List;

/**
 * 会员表(UmsMember)表控制层
 *
 * @author 张广洲
 * @since 2020-02-27 23:03:01
 */
@RestController
public class UmsMemberController implements ApplicationContextAware{

    /**
     * 用户服务对象
     */
    @Resource
    private UmsMemberService umsMemberService;

    /**
     * 用户登录记录服务对象
     */
    @Resource
    private UmsMemberLoginLogService umsMemberLoginLogService;

    /**
     * 令牌管理器
     */
    @Resource
    private TokenManager tokenManager;

    private ApplicationContext applicationContext;

    private static Logger logger = LoggerFactory.getLogger(UmsMember.class);
    
    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @IgnoreSecurity
    @RequestMapping(method = RequestMethod.GET)
    public Response selectOne(Long id) {
        return new Response().failure("");
    }

    /**
     * 添加一个用户/普通用户注册
     * @return Response 对象
     */
    @IgnoreSecurity
    @RequestMapping(value = "/umsMember", method = RequestMethod.POST)
    public Response insertOne(@RequestBody UmsMemberParam umsMemberParam) {
        UmsMember umsMember = umsMemberService.register(umsMemberParam);
        Response response = new Response();
        if (umsMember == null) {
            logger.debug("新用户注册失败");
            return response.failure("用户已存在,注册失败");
        }
        logger.debug("新用户注册成功");
        return response.success(umsMember);
    }

    /**
     * 获取个人信息
     * @param userId 用户id
     * @return Response 对象
     */
    @RequestMapping(value = "/umsMember", method = RequestMethod.GET)
    public Response selectOne(@RequestParam("userId") long userId) {
        Response response = new Response();
        UmsMember umsMember = umsMemberService.queryById(userId);
        if (umsMember != null) {
            umsMember.setPassword("");
            logger.debug("获取{}用户信息", userId);
            return response.success(umsMember);
        }
        return response.failure("用户信息不存在");
    }

    /**
     *  修改个人信息
     * @param umsMemberInfoUpdateParam UmsMember dto
     * @return Response
     */
    @RequestMapping(value = "/umsMember", method = RequestMethod.PATCH)
    public Response updateOne(@RequestBody UmsMemberInfoUpdateParam umsMemberInfoUpdateParam) {

        UmsMember umsMember = umsMemberService.queryById(umsMemberInfoUpdateParam.getId());

        // note: 参数获取成功后，可判断数据是否修改，若无修改，可不用更新
        umsMember.setBirthday(DateUtil.parseDate(umsMemberInfoUpdateParam.getBirthday()));
        umsMember.setCity(umsMemberInfoUpdateParam.getCity());
        umsMember.setGender(umsMemberInfoUpdateParam.getGender());
        umsMember.setId(umsMemberInfoUpdateParam.getId());
        umsMember.setJob(umsMemberInfoUpdateParam.getJob());
        umsMember.setNickname(umsMemberInfoUpdateParam.getNickname());

        umsMemberService.update(umsMember);
        return new Response().success();

    }

    /**
     * 更新用户头像
     * @param umsMemberHeadUpdateParam 用户头像dto
     * @return Response
     */
    @RequestMapping(value = "/umsMember/icon", method = RequestMethod.PATCH)
    public Response updateOneHead(@RequestBody UmsMemberHeadUpdateParam umsMemberHeadUpdateParam) {
        UmsMember umsMember = umsMemberService.queryById(umsMemberHeadUpdateParam.getId());
        String oldIcon = umsMember.getIcon();
        umsMember.setIcon(umsMemberHeadUpdateParam.getIcon());

        umsMemberService.update(umsMember);
        return new Response().success(oldIcon);
    }

    /**
     * 用户充值
     * @param umsMemberChargeParam 充值dto
     * @return Response
     */
    @RequestMapping(value = "/umsMember/charge", method = RequestMethod.PATCH)
    public Response reCharge(@RequestBody UmsMemberChargeParam umsMemberChargeParam) {
        UmsMember umsMember = umsMemberService.queryById(umsMemberChargeParam.getId());
        int charge = umsMemberChargeParam.getCharge();
        umsMember.setBalance(umsMember.getBalance() + charge);

        umsMemberService.update(umsMember);

        return new Response().success(charge);
    }

    /**
     * 普通用户登录
     * @param city 用户登录地
     * @param ip 用户登录ip
     * @param loginType 用户登录类型
     * @param province 用户登录省份
     * @param userName 用户名
     * @param userPassword 用户密码
     * @return response Response 对象
     */
    @IgnoreSecurity
    @RequestMapping(value = "login", method = RequestMethod.GET)
    public Response login(@RequestParam("username") String userName, @RequestParam("password") String userPassword,
                          @RequestParam("city") String city, @RequestParam("ip") String ip,
                          @RequestParam("loginType") int loginType, @RequestParam("province") String province) {
        UmsMember umsMember = umsMemberService.login(new UmsMemberParam(userName, userPassword));
        Response response = new Response();
        if (umsMember != null) {
            if (umsMember.getStatus() == 0) {
                response.failure("账号未启用");
                return response;
            }
            String token = tokenManager.createToken(umsMember.getUsername());
            // 写入登录记录
            UmsMemberLoginLogParam umsMemberLoginLogParam = new UmsMemberLoginLogParam();
            umsMemberLoginLogParam.setMemberId(umsMember.getId());
            umsMemberLoginLogParam.setCity(city);
            umsMemberLoginLogParam.setIp(ip);
            umsMemberLoginLogParam.setLoginType(loginType);
            umsMemberLoginLogParam.setProvince(province);
            umsMemberLoginLogService.insert(umsMemberLoginLogParam);

            return response.success(umsMember).token(token);
        }
        response.failure("用户名或密码错误");
        return response;
    }

    /**
     * 获取分页列表用户
     * @param page 页码
     * @param pageSize 页长
     * @return Response
     */
    @RequestMapping(value = "/umsMember/listAll", method = RequestMethod.GET)
    public Response listAll(@RequestParam("page") int page, @RequestParam("pageSize") int pageSize) {
        Response response = new Response();
        List<UmsMember> list = umsMemberService.queryAllByLimit(pageSize * (page - 1), pageSize);
        return response.success(list);
    }

    /**
     * 删除用户
     * @param umsMemberDeleteMembersParam dto
     * @return Response
     */
    @RequestMapping(value = "/umsMember/deleteMembers", method = RequestMethod.PATCH)
    public Response deleteMembers(@RequestBody UmsMemberDeleteMembersParam umsMemberDeleteMembersParam) {
        Response response = new Response();
        List<UmsMember> members = umsMemberDeleteMembersParam.getMembers();

        for (int i = 0; i < members.size(); i++) {
            members.get(i).setStatus(0);
        }

        umsMemberService.updateMembers(members);
        return response.success();
    }

    /**
     * 根据content模糊搜索用户
     * @param content 搜索内容
     * @param page 页码
     * @param pageSize 页长
     * @return Response
     */
    @RequestMapping(value = "/umsMember/search", method = RequestMethod.GET)
    public Response searchMember(@RequestParam("content") String content, @RequestParam("page") int page,
                                 @RequestParam("pageSize") int pageSize) {
        Response response = new Response();
        List<UmsMember> list = umsMemberService.searchMember(content, page, pageSize);
        if (CollectionUtil.isEmpty(list)) {
            return response.failure("无内容");
        }
        return response.success(list);
    }
    
    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }

}