package com.wanliang.micro.service.system;

import com.alibaba.dubbo.config.annotation.Reference;
import com.wanliang.micro.param.system.LoginParam;
import com.wanliang.micro.result.system.LoginResult;

/**
 * @author wanliang
 * @version 1.0
 * @date 2015/11/25
 * @modify
 * @copyright microPlatform
 */
public interface UserService {

    public LoginResult login(LoginParam param);
}
