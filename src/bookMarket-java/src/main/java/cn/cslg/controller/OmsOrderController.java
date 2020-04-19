package cn.cslg.controller;

import cn.cslg.dto.OmsOrderBuyBooksParam;
import cn.cslg.model.BmsBook;
import cn.cslg.model.OmsOrder;
import cn.cslg.service.OmsOrderService;

import cn.cslg.bean.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import javax.annotation.Resource;
import java.util.List;

/**
 * (OmsOrder)表控制层
 *
 * @author zhangguangzhou
 * @since 2020-04-13 10:06:18
 */
@RestController
@RequestMapping("/omsOrder")
public class OmsOrderController implements ApplicationContextAware{

    /**
     * 服务对象
     */
    @Resource
    private OmsOrderService omsOrderService;
    
    private ApplicationContext applicationContext;

    private static Logger logger = LoggerFactory.getLogger(OmsOrder.class);
    
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
     * 用户买书
     * @param omsOrderBuyBooksParam dto
     * @return Response
     */
    @RequestMapping(value = "/buyBooks", method = RequestMethod.POST)
    public Response buyBooks(@RequestBody OmsOrderBuyBooksParam omsOrderBuyBooksParam) {
        logger.debug("/omsOrder/buyBooks controller");
        boolean flag = omsOrderService.buyBooks(omsOrderBuyBooksParam);
        Response response = new Response();
        if (flag) {
            return response.success();
        }
        return response.failure("买书失败");
    }
    
    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }

}