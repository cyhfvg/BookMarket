package cn.cslg.controller;

import cn.cslg.dto.UmsMemberParam;
import cn.cslg.model.UmsMember;
import cn.cslg.security.IgnoreSecurity;
import cn.cslg.service.UmsMemberService;

import cn.cslg.bean.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import javax.annotation.Resource;

/**
 * 会员表(UmsMember)表控制层
 *
 * @author 张广洲
 * @since 2020-02-27 23:03:01
 */
@RestController
@RequestMapping("/umsMember")
public class UmsMemberController implements ApplicationContextAware{

    /**
     * 服务对象
     */
    @Resource
    private UmsMemberService umsMemberService;
    
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
     * 添加一个用户
     * @return
     */
    @IgnoreSecurity
    @RequestMapping(method = RequestMethod.POST)
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
    
    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }

}