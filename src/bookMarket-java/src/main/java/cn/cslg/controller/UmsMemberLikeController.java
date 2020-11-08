package cn.cslg.controller;

import cn.cslg.dto.MemberBookActionParam;
import cn.cslg.dto.MemberBookActionSetParam;
import cn.cslg.dto.UmsMemberLikePromoteParam;
import cn.cslg.model.*;
import cn.cslg.security.IgnoreSecurity;
import cn.cslg.service.UmsMemberLikeService;

import cn.cslg.bean.Response;
import cn.cslg.util.CollectionUtil;
import cn.cslg.util.StringUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import javax.annotation.Resource;
import java.util.*;

/**
 * (UmsMemberLike)表控制层
 *
 * @author zhangguangzhou
 * @since 2020-04-20 10:38:06
 */
@RestController
@RequestMapping("/umsMemberLike")
public class UmsMemberLikeController implements ApplicationContextAware{

    /**
     * 服务对象
     */
    @Resource
    private UmsMemberLikeService umsMemberLikeService;
    
    private ApplicationContext applicationContext;

    private static Logger logger = LoggerFactory.getLogger(UmsMemberLike.class);
    
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
     * 获取书籍用户倒查表
     * @return Response
     */
    @IgnoreSecurity
    @RequestMapping(value = "/memberBookTable", method = RequestMethod.GET)
    public Response getMemberBookTable() {
        Response response = new Response();
        MemberBookActionSetParam table = umsMemberLikeService.getMemberBookTable();

        return response.success(table);
    }

    /**
     * 推荐列表写入数据库
     * @param umsMemberLikePromoteParam [{userId:id, likeBooks: [string...]}, ...]
     * @return
     */
    @RequestMapping(value = "/promote", method = RequestMethod.POST)
    public Response promote(@RequestBody UmsMemberLikePromoteParam umsMemberLikePromoteParam) {
        Response response = new Response();
        umsMemberLikeService.insertPromoteQueue(umsMemberLikePromoteParam);
        return response.success();
    }

    /**
     * 列出用户可能喜欢的书籍
     * @param userId long 用户id
     * @return Response
     */
    @RequestMapping(value = "listLikeBooks", method = RequestMethod.GET)
    public Response listLikeBooks(@RequestParam("userId") long userId) {
        Response response = new Response();
        List<BmsBook> result = umsMemberLikeService.getMemberPromoteByMemberId(userId);
        return response.success(result);
    }

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }

}