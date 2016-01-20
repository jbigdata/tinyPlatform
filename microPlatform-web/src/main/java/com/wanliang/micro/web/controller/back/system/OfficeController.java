/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.wanliang.micro.web.controller.back.system;

import com.alibaba.dubbo.config.annotation.Reference;
import com.wanliang.micro.param.system.OfficeParam;
import com.wanliang.micro.result.PageResult;
import com.wanliang.micro.result.system.OfficeResult;
import com.wanliang.micro.service.system.OfficeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
