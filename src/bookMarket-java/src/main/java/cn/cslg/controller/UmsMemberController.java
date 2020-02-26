package cn.cslg.controller;

import cn.cslg.model.UmsMember;
import cn.cslg.service.UmsMemberService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.web.bind.annotation.*;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import javax.annotation.Resource;

/**
 * 会员表(UmsMember)表控制层
 *
 * @author 张广洲
 * @since 2020-02-26 17:26:29
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
    @GetMapping("selectOne")
    public UmsMember selectOne(Long id) {
        return this.umsMemberService.queryById(id);
    }
    
    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }

}