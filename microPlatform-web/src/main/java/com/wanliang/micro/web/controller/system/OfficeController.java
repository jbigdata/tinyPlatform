/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.wanliang.micro.web.controller.system;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import com.alibaba.dubbo.config.annotation.Reference;
import com.wanliang.micro.param.system.OfficeParam;
import com.wanliang.micro.result.PageResult;
import com.wanliang.micro.result.system.OfficeResult;
import com.wanliang.micro.service.system.OfficeService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.common.collect.Lists;
import com.google.common.collect.Maps;

/**
 * 机构Controller
 *
 * @author wanliang
 * @version 2013-5-15
 */
@Controller
@RequestMapping(value = "/sys/office")
public class OfficeController {

    @Reference
    private OfficeService officeService;

    @RequestMapping(value = {""})
    public String index(OfficeParam office, Model model) {
//        model.addAttribute("list", officeService.findAll());
        return "system/office/officeList";
    }

    @RequestMapping(value = {"list"})
    @ResponseBody
    public PageResult<OfficeResult> list(OfficeParam office, Model model) {

        return officeService.findList(office);
    }


}
