package com.wanliang.micro.web.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.wanliang.micro.param.system.LoginParam;
import com.wanliang.micro.result.demo.User;
import com.wanliang.micro.result.system.LoginResult;
import com.wanliang.micro.result.system.UserResult;
import com.wanliang.micro.service.demo.DemoService;
import com.wanliang.micro.service.system.UserService;
import com.wanliang.micro.web.result.CommonResult;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.Optional;

/**
 * @author wanliang
 * @version 1.0
 * @date 2015/11/22
 * @modify
 * @copyright microPlatform
 */
@Controller
@RequestMapping("/")
public class LoginController {

    private static final Logger LOGGER = LoggerFactory.getLogger(LoginController.class);

    @Reference
    private UserService userService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login(@RequestParam Optional<String> error) {
        LOGGER.debug("Getting login page, error={}", error);
        return new ModelAndView("login", "error", error);
    }

//    @RequestMapping(value = "/login", method = RequestMethod.POST)
//    public String loginSubmit(LoginParam loginParam) {
//        LoginResult result = userService.login(loginParam);
//        if (result == null) {
//
//             return "/login";
//        }
//        //    demoService.getAll();
//        return "redirect:/system";
//    }
}
