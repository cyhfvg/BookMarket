package cn.cslg.controller;

import cn.cslg.dto.BmsCartLogAddParam;
import cn.cslg.model.BmsCartLog;
import cn.cslg.service.BmsCartLogService;

import cn.cslg.bean.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import javax.annotation.Resource;
import java.util.Date;

/**
 * 用户购物车内容表(BmsCartLog)表控制层
 *
 * @author zhangguangzhou
 * @since 2020-04-18 15:41:40
 */
@RestController
@RequestMapping("/bmsCartLog")
public class BmsCartLogController implements ApplicationContextAware{

    /**
     * 服务对象
     */
    @Resource
    private BmsCartLogService bmsCartLogService;
    
    private ApplicationContext applicationContext;

    private static Logger logger = LoggerFactory.getLogger(BmsCartLog.class);
    
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
     * 添加购物车记录
     * @param bmsCartLogAddParam dto
     * @return Response
     */
    @RequestMapping(value = "/addBook", method = RequestMethod.POST)
    public Response addCart(@RequestBody BmsCartLogAddParam bmsCartLogAddParam) {
        Response response = new Response();

        BmsCartLog bmsCartLog = new BmsCartLog();
        bmsCartLog.setAddTime(new Date());
        bmsCartLog.setMemberId(bmsCartLogAddParam.getUserId());
        bmsCartLog.setBookId(bmsCartLogAddParam.getBookId());
        bmsCartLog.setIsbn(bmsCartLogAddParam.getIsbn());
        bmsCartLogService.insert(bmsCartLog);
        return response.success();
    }
    
    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }

}