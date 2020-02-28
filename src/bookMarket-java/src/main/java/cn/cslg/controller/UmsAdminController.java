package cn.cslg.controller;

import cn.cslg.dto.UmsAdminLoginParam;
import cn.cslg.dto.UmsAdminParam;
import cn.cslg.model.UmsAdmin;
import cn.cslg.security.IgnoreSecurity;
import cn.cslg.security.TokenManager;
import cn.cslg.service.UmsAdminService;

import cn.cslg.bean.Response;
import io.swagger.annotations.ApiOperation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import javax.annotation.Resource;

/**
 * 后台用户表
(UmsAdmin)表控制层
 *
 * @author 张广洲
 * @since 2020-02-27 23:03:01
 */
@RestController
@RequestMapping("/umsAdmin")
public class UmsAdminController implements ApplicationContextAware{

    /**
     * 服务对象
     */
    @Resource
    private UmsAdminService umsAdminService;

    /**
     * 令牌管理器
     */
    @Resource
    private TokenManager tokenManager;
    
    private ApplicationContext applicationContext;

    private static Logger logger = LoggerFactory.getLogger(UmsAdmin.class);
    
    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @IgnoreSecurity
    @RequestMapping(value = "/selectOne", method = RequestMethod.GET)
    public Response selectOne(Long id) {
        return new Response().failure("");
    }

    /**
     * 管理员注册
     * @param umsAdminParam
     * @return
     */
    @IgnoreSecurity
    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public Response register(@RequestBody UmsAdminParam umsAdminParam) {
        UmsAdmin umsAdmin = umsAdminService.register(umsAdminParam);
        Response response = new Response();
        if (umsAdmin == null) {
            logger.debug("注册失败");
            return response.failure("注册失败");
        }
        logger.debug("注册成功");
        return response.success(umsAdmin);
    }

    /**
     * 管理员登录
     * @param umsAdminLoginParam
     * @return
     */
    @IgnoreSecurity
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public Response login(@RequestBody UmsAdminLoginParam umsAdminLoginParam) {
        UmsAdmin umsAdmin = umsAdminService.login(umsAdminLoginParam);
        if (umsAdmin != null) {
            String token = tokenManager.createToken(umsAdmin.getUsername());
            return new Response().success(umsAdmin).token(token);
        } else {
            return new Response().failure("用户名或密码错误");
        }
    }

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }

}