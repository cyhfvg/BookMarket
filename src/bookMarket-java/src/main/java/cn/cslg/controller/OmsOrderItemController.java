package cn.cslg.controller;

import cn.cslg.dto.OmsOrderItemSendParam;
import cn.cslg.model.OmsOrderItem;
import cn.cslg.service.OmsOrderItemService;

import cn.cslg.bean.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import javax.annotation.Resource;

/**
 * 订单中所包含的商品(OmsOrderItem)表控制层
 *
 * @author zhangguangzhou
 * @since 2020-04-13 10:06:18
 */
@RestController
@RequestMapping("/omsOrderItem")
public class OmsOrderItemController implements ApplicationContextAware{

    /**
     * 服务对象
     */
    @Resource
    private OmsOrderItemService omsOrderItemService;
    
    private ApplicationContext applicationContext;

    private static Logger logger = LoggerFactory.getLogger(OmsOrderItem.class);
    
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

    /**
     * 用户发货书籍
     * @param omsOrderItemSendParam dto
     * @return Response
     */
    @RequestMapping(value = "/sendBook", method = RequestMethod.PATCH)
    public Response sendBook(@RequestBody OmsOrderItemSendParam omsOrderItemSendParam) {
        long itemId = omsOrderItemSendParam.getItemId();
        OmsOrderItem item = omsOrderItemService.queryById(itemId);
        // 设置为1 表示 已发货
        item.setProductCategoryId((long) 1);
        omsOrderItemService.update(item);
        return new Response().success();
    }
    
    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }

}