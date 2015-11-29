package com.wanliang.micro.result.system;

import java.io.Serializable;

/**
 * @author wanliang
 * @version 1.0
 * @date 2015/11/27
 * @modify
 * @copyright microPlatform
 */
public class LoginResult implements Serializable {

    private String userId;
    private String nickname;
    private String token;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }
}
