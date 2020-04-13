package cn.cslg.controller;

import cn.cslg.model.OmsCompanyAddress;
import cn.cslg.service.OmsCompanyAddressService;

import cn.cslg.bean.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import javax.annotation.Resource;

/**
 * (OmsCompanyAddress)表控制层
 *
 * @author zhangguangzhou
 * @since 2020-04-13 10:06:45
 */
@RestController
@RequestMapping("/omsCompanyAddress")
public class OmsCompanyAddressController implements ApplicationContextAware{

    /**
     * 服务对象
     */
    @Resource
    private OmsCompanyAddressService omsCompanyAddressService;
    
    private ApplicationContext applicationContext;

    private static Logger logger = LoggerFactory.getLogger(OmsCompanyAddress.class);
    
    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @RequestMapping(value = "/selectOne", method = RequestMethod.GET)
    public Response selectOne(Long id) {
        return new Response().failure("");
    }
    
    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }

}