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
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

    /**
     * 退出
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value="/logout", method = RequestMethod.GET)
    public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        LOGGER.debug("user logout");
        if (auth != null){
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/login?logout";
    }
}
