package com.wanliang.micro.web.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.wanliang.micro.param.system.UserParam;
import com.wanliang.micro.result.system.MenuResult;
import com.wanliang.micro.service.system.MenuService;
import com.wanliang.micro.web.security.CurrentUser;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.WebAuthenticationDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @author wanliang
 * @version 1.0
 * @date 2015/11/23
 * @modify
 * @copyright microPlatform
 */
@Controller
@RequestMapping("/system")
public class IndexController {

    @Reference
    private MenuService menuService;


    @RequestMapping(value = "",method = RequestMethod.GET)
    public String index(ModelMap modelMap){
      WebAuthenticationDetails webAuthenticationDetails=(WebAuthenticationDetails) SecurityContextHolder.getContext().getAuthentication().getDetails();
       CurrentUser user=(CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        UserParam userParam=new UserParam();
        userParam.setId(user.getId());
        userParam.setAdmin(true);
        modelMap.addAttribute("menuList",menuService.loadParentMenu(userParam));
        return "home";
    }

    @RequestMapping(value = "/menu/{menuId}",method = RequestMethod.GET)
    @ResponseBody
    public List<MenuResult> menu(@PathVariable String menuId){
        WebAuthenticationDetails webAuthenticationDetails=(WebAuthenticationDetails) SecurityContextHolder.getContext().getAuthentication().getDetails();
        CurrentUser user=(CurrentUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        UserParam userParam=new UserParam();
        userParam.setId(user.getId());
        userParam.setAdmin(true);
        return menuService.getMenus(menuId);
    }

    @RequestMapping(value = "/main",method = RequestMethod.GET)
    public String main(ModelMap modelMap){

        return "system/main";
    }

    @RequestMapping(value = "/user/profile",method = RequestMethod.GET)
    public String profile(ModelMap modelMap){

        return "system/user/profile";
    }
}
