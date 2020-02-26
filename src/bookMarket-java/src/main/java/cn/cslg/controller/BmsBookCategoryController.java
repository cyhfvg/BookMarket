package cn.cslg.controller;

import cn.cslg.model.BmsBookCategory;
import cn.cslg.service.BmsBookCategoryService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeansException;
import org.springframework.web.bind.annotation.*;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import javax.annotation.Resource;

/**
 * 书籍分类(BmsBookCategory)表控制层
 *
 * @author 张广洲
 * @since 2020-02-26 17:26:29
 */
@RestController
@RequestMapping("/bmsBookCategory")
public class BmsBookCategoryController implements ApplicationContextAware{

    /**
     * 服务对象
     */
    @Resource
    private BmsBookCategoryService bmsBookCategoryService;
    
    private ApplicationContext applicationContext;

    private static Logger logger = LoggerFactory.getLogger(BmsBookCategory.class);
    
    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("selectOne")
    public BmsBookCategory selectOne(Long id) {
        return this.bmsBookCategoryService.queryById(id);
    }
    
    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }

}