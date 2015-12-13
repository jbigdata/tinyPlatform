package com.wanliang.micro.service.impl.system;

import com.alibaba.dubbo.config.annotation.Service;
import com.wanliang.micro.common.util.uuid.UUIDUtil;
import com.wanliang.micro.entity.system.User;
import com.wanliang.micro.param.system.LoginParam;
import com.wanliang.micro.repository.system.UserRepository;
import com.wanliang.micro.result.system.LoginResult;
import com.wanliang.micro.service.system.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;

/**
 * @author wanliang
 * @version 1.0
 * @date 2015/11/25
 * @modify
 * @copyright microPlatform
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    @Cacheable(value = "usercache",key = "#param.getLoginName()")
    public LoginResult login(LoginParam param) {
        User user=new User();
        user.setLoginName(param.getLoginName());
        user.setPassword(param.getPassword());
        user= userRepository.getByLoginName(param.getLoginName());

        LoginResult loginResult=new LoginResult();
        loginResult.setNickname(user.getName());
        loginResult.setToken(param.getType()+"_"+UUIDUtil.randomUUID());
        return loginResult;
    }
}
