package com.wanliang.micro.service.system;

import com.wanliang.micro.param.system.LoginParam;
import com.wanliang.micro.param.system.UserParam;
import com.wanliang.micro.result.PageResult;
import com.wanliang.micro.result.system.LoginResult;
import com.wanliang.micro.result.system.UserResult;


/**
 * @author wanliang
 * @version 1.0
 * @date 2015/11/25
 * @modify
 * @copyright microPlatform
 */
public interface UserService  {

    public LoginResult login(LoginParam param);

    UserResult getUserByEmail(String email);

    public UserResult getUserById(String id);

    public PageResult<UserResult> findUser(UserParam userParam);
}
