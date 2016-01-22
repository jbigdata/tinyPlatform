package com.wanliang.micro.param.system;

import java.io.Serializable;

/**
 * @author wanliang
 * @version 1.0
 * @date 2016/1/20
 * @modify
 * @copyright Navi  TSP
 */
public class RegisterParam  implements Serializable{

    private String username;

    private String nickname;

    private String password;

    private String mobile;

    private String email;

    private int  type;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }
}
