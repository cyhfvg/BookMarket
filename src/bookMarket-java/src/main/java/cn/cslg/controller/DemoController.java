package cn.cslg.controller;

import cn.cslg.bean.Response;
import cn.cslg.security.IgnoreSecurity;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author 张广洲
 * @version 1.00
 * @time 2020/1/11 11:16
 * @description
 */

@RestController
@RequestMapping("/home")
public class DemoController {

    private static Logger logger = LoggerFactory.getLogger(DemoController.class);

    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public Response index() {
        logger.trace("trace level");
        logger.debug("debug level");
        logger.info("info level");
        logger.warn("warn level");
        logger.error("error level");
        logger.error("字符串拼接方式一:{},此方式比+快", "logger");
        logger.error("字符串拼接方式二:" + "logger");
        return new Response().success();
    }
}
