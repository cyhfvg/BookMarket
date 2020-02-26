package cn.cslg.controller;

import cn.cslg.model.UmsRolePermissionRelation;
import cn.cslg.service.UmsRolePermissionRelationService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.web.bind.annotation.*;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import javax.annotation.Resource;

/**
 * 后台用户角色-权限 关系表
(UmsRolePermissionRelation)表控制层
 *
 * @author 张广洲
 * @since 2020-02-26 17:26:29
 */
@RestController
@RequestMapping("/umsRolePermissionRelation")
public class UmsRolePermissionRelationController implements ApplicationContextAware{

    /**
     * 服务对象
     */
    @Resource
    private UmsRolePermissionRelationService umsRolePermissionRelationService;
    
    private ApplicationContext applicationContext;

    private static Logger logger = LoggerFactory.getLogger(UmsRolePermissionRelation.class);
    
    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public UmsRolePermissionRelation selectOne(Long id) {
        return this.umsRolePermissionRelationService.queryById(id);
    }
    
    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }

}