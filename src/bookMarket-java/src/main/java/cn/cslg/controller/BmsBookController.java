package cn.cslg.controller;

import cn.cslg.dao.OmsOrderItemDao;
import cn.cslg.dto.BmsBookSubmitParam;
import cn.cslg.dto.BmsBookUpdateAlbumsParam;
import cn.cslg.dto.MemberBookActionParam;
import cn.cslg.model.BmsBook;
import cn.cslg.model.BmsSearchLog;
import cn.cslg.model.OmsOrderItem;
import cn.cslg.model.UmsMember;
import cn.cslg.service.BmsBookService;

import cn.cslg.bean.Response;
import cn.cslg.service.BmsSearchLogService;
import cn.cslg.service.OmsOrderItemService;
import cn.cslg.service.UmsMemberService;
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

    @Resource
    private BmsSearchLogService bmsSearchLogService;

    @Resource
    private OmsOrderItemService omsOrderItemService;

    @Resource
    private UmsMemberService umsMemberService;
    
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

        bmsBook.setDeleteStatus(0);
        bmsBook.setPublishStatus(0);

        bmsBookService.insert(bmsBook);

        return new Response().success(bmsBook);

    }

    /**
     * 获取用户所有卖书请求
     * @param userId 用户id
     * @return List<Book>
     */
    @RequestMapping(value = "/shop/list", method = RequestMethod.GET)
    public Response listShopBooks(@RequestParam("userId") long userId) {
        Response response = new Response();
        List<BmsBook> list = bmsBookService.listShopBooks(userId);
        if (list == null
            || CollectionUtil.isEmpty(list)) {
            return response.success(new ArrayList<BmsBook>());
        }
        return response.success(list);
    }

    /**
     * 更新书籍上架信息
     * @param bmsBookUpdateAlbumsParam dto
     * @return Response
     */
    @RequestMapping(value = "/onSell", method = RequestMethod.PATCH)
    public Response editAlbum(@RequestBody BmsBookUpdateAlbumsParam bmsBookUpdateAlbumsParam) {
        BmsBook bmsBook = bmsBookService.queryById(bmsBookUpdateAlbumsParam.getId());
        if (bmsBook.getAlbumPics() == null) {
            bmsBook.setAlbumPics("");
        }
        if (StringUtil.isNotEmpty(bmsBook.getAlbumPics())) {
            bmsBook.setAlbumPics(bmsBook.getAlbumPics() + ",");
        }
        bmsBook.setAlbumPics(bmsBook.getAlbumPics() + bmsBookUpdateAlbumsParam.getUrl());
        bmsBook.setDescription(bmsBookUpdateAlbumsParam.getDescription());
        bmsBook.setPublishStatus(1);
        bmsBookService.update(bmsBook);
        return new Response().success(bmsBook);
    }

    /**
     * 分页列出所有书籍
     * @param page int 页码
     * @param pageSize int 页长
     * @return Response {{total: num}, {books: []}}
     */
    @RequestMapping(value = "listAll", method = RequestMethod.GET)
    public Response listAllBooks(@RequestParam("page") int page, @RequestParam("pageSize") int pageSize) {
        Response response = new Response();
        Map<String, Object> map = bmsBookService.listAllBooks(page, pageSize);
        return response.success(map);
    }



    /**
     * 搜索书籍
     * @param memberId 用户id
     * @param searchText 搜索文本
     * @param page 页码
     * @param pageSize 页长
     * @return Response
     */
    @RequestMapping(value = "/searchBooks", method = RequestMethod.GET)
    public Response searchBooks(@RequestParam("userId") long memberId, @RequestParam("searchText") String searchText,
                                @RequestParam("page") int page, @RequestParam("pageSize") int pageSize) {
        Response response = new Response();
        Map<String, Object> map = bmsBookService.searchBooks(memberId, searchText,page, pageSize);
        return response.success(map);
    }

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }

}