package com.wanliang.micro.web.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.wanliang.micro.param.system.UserParam;
import com.wanliang.micro.service.system.MenuService;
import com.wanliang.micro.web.security.CurrentUser;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.WebAuthenticationDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author wanliang
 * @version 1.0
 * @date 2015/11/23
 * @modify
 * @copyright microPlatform
 */
@Controller
public class IndexController {

    @Reference
    private MenuService menuService;


    @RequestMapping(value = "/system",method = RequestMethod.GET)
    public String index(ModelMap modelMap){
      WebAuthenticationDetails webAuthenticationDetails=(WebAuthenticationDetails) SecurityContextHolder.getContext().getAuthentication().getDetails();
       CurrentUser user=(CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        UserParam userParam=new UserParam();
        userParam.setId(user.getId());
        userParam.setAdmin(true);
        modelMap.addAttribute("menuList",menuService.loadParentMenu(userParam));
        return "home";
    }
}
