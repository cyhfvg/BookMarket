package cn.cslg.controller;

import cn.cslg.dto.UmsMemberLoginLogParam;
import cn.cslg.dto.UmsMemberParam;
import cn.cslg.model.UmsMember;
import cn.cslg.security.IgnoreSecurity;
import cn.cslg.security.TokenManager;
import cn.cslg.service.UmsMemberLoginLogService;
import cn.cslg.service.UmsMemberService;

import cn.cslg.bean.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import static java.util.Arrays.asList;

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
    @RequestMapping(value = "umsMember", method = RequestMethod.GET)
    public Response login(@RequestParam("username") String userName, @RequestParam("password") String userPassword,
                          @RequestParam("city") String city, @RequestParam("ip") String ip,
                          @RequestParam("loginType") int loginType, @RequestParam("province") String province) {
        UmsMember umsMember = umsMemberService.login(new UmsMemberParam(userName, userPassword));
        Response response = new Response();
        if (umsMember != null) {
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
    
    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }

}