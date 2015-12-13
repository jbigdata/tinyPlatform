package com.wanliang.micro.web.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.wanliang.micro.param.system.LoginParam;
import com.wanliang.micro.result.system.LoginResult;
import com.wanliang.micro.service.system.UserService;
import com.wanliang.micro.web.result.CommonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
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

    @Reference
    private UserService userService;

    @RequestMapping(value = "/login",method = RequestMethod.GET)
   public String login(ModelAndView view){

        return "/login";
   }

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String loginSubmit(LoginParam loginParam){
        userService.login(loginParam);
        return "redirect:/system";
    }
}
