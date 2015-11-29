package com.wanliang.micro.param.system;

import javax.validation.constraints.NotNull;
import java.io.Serializable;

/**
 * @author wanliang
 * @version 1.0
 * @date 2015/11/27
 * @modify
 * @copyright microPlatform
 */
public class LoginParam implements Serializable {

      @NotNull
      private String loginName;

      @NotNull
      private String password;

      private String  type;

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
