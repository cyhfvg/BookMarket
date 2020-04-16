package cn.cslg.controller;

import cn.cslg.dto.BmsBookSubmitParam;
import cn.cslg.model.BmsBook;
import cn.cslg.service.BmsBookService;

import cn.cslg.bean.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.*;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import javax.annotation.Resource;

/**
 * 商品信息(BmsBook)表控制层
 *
 * @author zhangguangzhou
 * @since 2020-04-15 13:44:51
 */
@RestController
@RequestMapping("/bmsBook")
public class BmsBookController implements ApplicationContextAware{

    /**
     * 服务对象
     */
    @Resource
    private BmsBookService bmsBookService;
    
    private ApplicationContext applicationContext;

    private static Logger logger = LoggerFactory.getLogger(BmsBook.class);
    
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
     * 用户上交一本卖出请求
     * @param bmsBookSubmitParam book dto
     * @return Response
     */
    @RequestMapping(value = "/submit", method = RequestMethod.POST)
    public Response submit(@RequestBody BmsBookSubmitParam bmsBookSubmitParam) {
        BmsBook bmsBook = new BmsBook();

        bmsBook.setAuthor(bmsBookSubmitParam.getAuthor());
        bmsBook.setIsbn(bmsBookSubmitParam.getIsbn());
        bmsBook.setMemberId(bmsBookSubmitParam.getMemberId());
        bmsBook.setName(bmsBookSubmitParam.getName());
        bmsBook.setPic(bmsBookSubmitParam.getPic());
        bmsBook.setPrice(bmsBookSubmitParam.getPrice());
        bmsBook.setSummary(bmsBookSubmitParam.getSummary());

        bmsBookService.insert(bmsBook);

        return new Response().success(bmsBook);

    }
    
    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }

}