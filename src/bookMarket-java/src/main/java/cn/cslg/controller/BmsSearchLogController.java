package cn.cslg.controller;

import cn.cslg.dto.BmsSearchLogLookHistoryAddParam;
import cn.cslg.model.BmsSearchLog;
import cn.cslg.service.BmsSearchLogService;

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
 * (BmsSearchLog)表控制层
 *
 * @author zhangguangzhou
 * @since 2020-04-18 12:56:14
 */
@RestController
@RequestMapping("/bmsSearchLog")
public class BmsSearchLogController implements ApplicationContextAware{

    /**
     * 服务对象
     */
    @Resource
    private BmsSearchLogService bmsSearchLogService;
    
    private ApplicationContext applicationContext;

    private static Logger logger = LoggerFactory.getLogger(BmsSearchLog.class);
    
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
     * 增加用户浏览记录
     * @param param BmsSearchLogLookHistoryAddParam
     * @return Response
     */
    @RequestMapping(value = "/lookHistory", method = RequestMethod.POST)
    public Response insertLookHistory(@RequestBody BmsSearchLogLookHistoryAddParam param) {
        Response response = new Response();
        BmsSearchLog bmsSearchLog = new BmsSearchLog();
        bmsSearchLog.setMemberId(param.getUserId());
        bmsSearchLog.setIsbn(param.getBook().getIsbn());
        bmsSearchLog.setCreateTime(new Date());
        bmsSearchLogService.insert(bmsSearchLog);

        return response.success();
    }
    
    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }

}