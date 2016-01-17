package com.wanliang.micro.web.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.wanliang.micro.param.system.UserParam;
import com.wanliang.micro.result.PageResult;
import com.wanliang.micro.result.system.UserResult;
import com.wanliang.micro.service.system.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author wanliang
 * @version 1.0
 * @date 2016/1/10
 * @modify
 * @copyright microPlatform
 */
@Controller
@RequestMapping("/sys")
public class UserController {

    private static final Logger LOGGER = LoggerFactory.getLogger(UserController.class);
    @Reference
    private UserService userService;

    @RequestMapping(value = "/user/index", method = RequestMethod.GET)
    public String main(ModelMap modelMap, UserParam userParam) {
        return "system/user/userList";
    }

    @RequestMapping(value = "/user/userList")
    @ResponseBody
    public PageResult<UserResult> userList(ModelMap modelMap, UserParam userParam) {

        return userService.findUser(userParam);
    }


    // @PreAuthorize("@currentUserServiceImpl.canAccessUser(principal, #id)")
    @RequestMapping("/user/{id}")
    public ModelAndView getUserPage(@PathVariable String id) {
        LOGGER.debug("Getting user page for user={}", id);
        return new ModelAndView("system/user/profile", "user", userService.getUserById(id));
    }
}
