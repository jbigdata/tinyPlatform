package com.wanliang.micro.service.impl.system;

import com.alibaba.dubbo.config.annotation.Service;
import com.wanliang.micro.common.util.security.Digests;
import com.wanliang.micro.common.util.security.Encodes;
import com.wanliang.micro.common.util.uuid.UUIDUtil;
import com.wanliang.micro.entity.system.User;
import com.wanliang.micro.param.system.LoginParam;
import com.wanliang.micro.repository.system.UserRepository;
import com.wanliang.micro.result.system.LoginResult;
import com.wanliang.micro.result.system.UserResult;
import com.wanliang.micro.service.system.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;

import java.util.Optional;

/**
 * @author wanliang
 * @version 1.0
 * @date 2015/11/25
 * @modify
 * @copyright microPlatform
 */
@Service
public class UserServiceImpl implements UserService {

    private static final Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);

    public static final String HASH_ALGORITHM = "SHA-1";
    public static final int HASH_INTERATIONS = 1024;

    @Autowired
    private UserRepository userRepository;

    @Override
    @Cacheable(value = "usercache", key = "#param.getLoginName()")
    public LoginResult login(LoginParam param) {
        User user = new User();
        user.setLoginName(param.getLoginName());
        user = userRepository.getByLoginName(param.getLoginName());
        if (user == null) {
            return null;
        }

//        boolean isflag = validatePassword(param.getPassword(), user.getPassword());
//        if (!isflag) {
//            return null;
//        }
        LoginResult loginResult = new LoginResult();
        loginResult.setNickname(user.getName());
        loginResult.setToken(param.getType() + "_" + UUIDUtil.randomUUID());
        return loginResult;
    }

    /**
     * 验证密码
     *
     * @param plainPassword 明文密码
     * @param password      密文密码
     * @return 验证成功返回true
     */
    public static boolean validatePassword(String plainPassword, String password) {
        byte[] salt = Encodes.decodeHex(password.substring(0, 16));
        byte[] hashPassword = Digests.sha1(plainPassword.getBytes(), salt, HASH_INTERATIONS);
        logger.debug("password:" + (Encodes.encodeHex(salt) + Encodes.encodeHex(hashPassword)));
        return password.equals(Encodes.encodeHex(salt) + Encodes.encodeHex(hashPassword));
    }


    public UserResult getUserByEmail(String email) {
        logger.debug("Getting user by email={}", email.replaceFirst("@.*", "@***"));
        User user = userRepository.getByLoginName(email);
        if (user==null){
            return null;
        }
        UserResult userResult=new UserResult();
        userResult.setLoginName(user.getLoginName());
        userResult.setMobile(user.getMobile());
        userResult.setEmail(user.getEmail());
        userResult.setPassword(user.getPassword());
        userResult.setId(user.getId());
        return userResult;
    }
}
