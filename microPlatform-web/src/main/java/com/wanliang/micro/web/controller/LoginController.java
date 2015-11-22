package com.wanliang.micro.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author wanliang
 * @version 1.0
 * @date 2015/11/22
 * @modify
 * @copyright microPlatform
 */
@Controller
@RequestMapping("/")
public class LoginController  {

    @RequestMapping(value = "/login",method = RequestMethod.GET)
   public String login(ModelAndView view){

        return "/login";
   }
}
