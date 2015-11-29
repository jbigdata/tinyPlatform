package com.wanliang.micro.web.controller.system;

import com.alibaba.dubbo.config.annotation.Reference;
import com.wanliang.micro.param.system.LoginParam;
import com.wanliang.micro.result.system.LoginResult;
import com.wanliang.micro.service.demo.DemoService;
import com.wanliang.micro.service.system.UserService;
import com.wanliang.micro.web.result.CommonResult;
import com.wanliang.micro.web.result.ResultCode;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Administrator on 2015/11/2.
 */
@Controller
@RequestMapping("/user")
public class LoginController {

    @Reference
    UserService userService;

    @RequestMapping("/login")
    @ResponseBody
    public CommonResult<LoginResult> login(@RequestBody LoginParam loginParam){
        LoginResult result= userService.login(loginParam);
          return CommonResult.newInstance(ResultCode.SUCCESS,LoginResult.class).setData(result);
    }

}
