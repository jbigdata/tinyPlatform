package com.wanliang.micro.web.controller.demo;

import com.wanliang.micro.entity.demo.Address;
import com.wanliang.micro.entity.demo.User;
import com.wanliang.micro.service.demo.DemoService;
import com.wanliang.micro.web.result.CommonResult;
import com.wanliang.micro.web.result.ResultCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Administrator on 2015/11/2.
 */
@Controller
@RequestMapping("/demo")
public class DemoController {

    @Autowired
    DemoService demoService;

    @RequestMapping("/test")
    @ResponseBody
    public CommonResult<String> putCache(){
        demoService.findUser(1l,"wang","yunfei");
        demoService.findAddress(1l,"anhui","hefei");
        System.out.println("若下面没出现“无缓存的时候调用”字样且能打印出数据表示测试成功");
        return CommonResult.newInstance(ResultCode.SUCCESS,String.class);
    }
    @RequestMapping("/test2")
    @ResponseBody
    public String testCache(){
        User user = demoService.findUser(1l,"wang","yunfei");
        Address address =demoService.findAddress(1l,"anhui","hefei");
        System.out.println("我这里没执行查询");
        System.out.println("user:"+"/"+user.getFirstName()+"/"+user.getLastName());
        System.out.println("address:"+"/"+address.getProvince()+"/"+address.getCity());
        return "ok";
    }
}
