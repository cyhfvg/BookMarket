package controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author 张广洲
 * @version 1.00
 * @time 2020/1/11 11:16
 * @description
 */

@RestController
@RequestMapping("/home")
public class DemoController {
    @RequestMapping("/index")
    public ModelAndView index() {
        ModelAndView mv = new ModelAndView("index");
        return mv;
    }
}
