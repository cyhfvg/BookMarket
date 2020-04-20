package cn.cslg.controller;

import cn.cslg.dto.OmsCompanyAddressAddParam;
import cn.cslg.model.OmsCompanyAddress;
import cn.cslg.service.OmsCompanyAddressService;

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

    /**
     * 获取用户地址
     * @param userId 用户编号
     * @return Response
     */
    @RequestMapping(value = "/memberAddress")
    public Response getMemberAddress(@RequestParam("userId") long userId) {
        Response response = new Response();
        List<OmsCompanyAddress> list = omsCompanyAddressService.getAddressByMemberId(userId);
        if (CollectionUtil.isEmpty(list)) {
            return response.failure("无地址");
        }
        return response.success(list);
    }

    /**
     * 用户添加一个地址
     * @param omsCompanyAddressAddParam dto
     * @return Response
     */
    @RequestMapping(value = "/addAddress", method = RequestMethod.POST)
    public Response addAddress(@RequestBody OmsCompanyAddressAddParam omsCompanyAddressAddParam) {
        OmsCompanyAddress omsCompanyAddress = new OmsCompanyAddress();

        omsCompanyAddress.setAddressName(omsCompanyAddressAddParam.getCity() + omsCompanyAddressAddParam.getRegion());
        omsCompanyAddress.setCity(omsCompanyAddressAddParam.getCity());
        omsCompanyAddress.setDetailAddress(omsCompanyAddressAddParam.getDetailAddress());
        omsCompanyAddress.setMemberId(omsCompanyAddressAddParam.getUserId());
        omsCompanyAddress.setName(omsCompanyAddressAddParam.getName());
        omsCompanyAddress.setPhone(omsCompanyAddressAddParam.getPhone());
        omsCompanyAddress.setProvince(omsCompanyAddressAddParam.getProvince());
        omsCompanyAddress.setReceiveStatus(0);
        omsCompanyAddress.setRegion(omsCompanyAddressAddParam.getRegion());
        omsCompanyAddress.setSendStatus(0);

        omsCompanyAddressService.insert(omsCompanyAddress);
        return new Response().success();
    }
    
    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        this.applicationContext = applicationContext;
    }

}