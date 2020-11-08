package cn.cslg.controller;

import cn.cslg.dto.BmsBookDeleteBooksParam;
import cn.cslg.dto.OmsBookParam;
import cn.cslg.dto.OmsOrderBuyBooksParam;
import cn.cslg.dto.OmsOrderDeleteOrdersParam;
import cn.cslg.model.BmsBook;
import cn.cslg.model.OmsOrder;
import cn.cslg.model.UmsMember;
import cn.cslg.service.OmsOrderService;

import cn.cslg.bean.Response;
import cn.cslg.util.CollectionUtil;
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

    /**
     * 获取分页列表
     * @param page 页码
     * @param pageSize 页长
     * @return Response
     */
    @RequestMapping(value = "/listAll", method = RequestMethod.GET)
    public Response listAll(@RequestParam("page") int page, @RequestParam("pageSize") int pageSize) {
        Response response = new Response();
        List<OmsOrder> list = omsOrderService.queryAllByLimit(pageSize * (page - 1), pageSize);
        return response.success(list);
    }

    /**
     * 管理员根据内容搜索订单
     * @param content 内容
     * @param page 页码
     * @param pageSize 页长
     * @return Response
     */
    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public Response searchOrder(@RequestParam("content") String content, @RequestParam("page") int page,
                                 @RequestParam("pageSize") int pageSize) {
        Response response = new Response();
        List<OmsOrder> list = omsOrderService.searchOrder(content, page, pageSize);
        if (CollectionUtil.isEmpty(list)) {
            return response.failure("无内容");
        }
        return response.success(list);
    }

    /**
     * 批量删除订单
     * @param OmsOrderDeleteOrdersParam 订单列表dto
     * @return Response
     */
    @RequestMapping(value = "/deleteOrders", method = RequestMethod.PATCH)
    public Response deleteOrders(@RequestBody OmsOrderDeleteOrdersParam OmsOrderDeleteOrdersParam) {
        Response response = new Response();
        List<OmsOrder> orders = OmsOrderDeleteOrdersParam.getOrders();
        for (int i = 0; i < orders.size(); i++) {
            orders.get(i).setDeleteStatus(1);
        }
        omsOrderService.deleteOrders(orders);
        return response.success();
    }

    /**
     * 由脚本调用
     * 将余额交送给商家
     */
    @RequestMapping(value = "/checkBalance", method = RequestMethod.PATCH)
    public void checkBalance2Shop() {
        logger.debug("omsOrder checkBalance2Shop invoked");
        omsOrderService.checkBalance2Shop();
    }

    /**
     * 用户（商家身份）的订单处理
     * @param memberId 用户id
     * @return Response
     */
    @RequestMapping(value = "/getMyOrder", method = RequestMethod.GET)
    public Response getMyOrder(@RequestParam("memberId") long memberId) {
        Response response = new Response();
        List<OmsBookParam> result = omsOrderService.getMyOrders(memberId);
        return response.success(result);
    }
    
    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }

}