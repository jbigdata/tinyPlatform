package com.wanliang.micro.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author wanliang
 * @version 1.0
 * @date 2015/12/31
 * @modify
 * @copyright microPlatform
 */
@Controller
public class HomeController {
    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String login(ModelAndView view){
        System.out.println("-----------------------------");
        return "index";
    }
}
