package com.wanliang.micro.param.system;

import com.wanliang.micro.param.PageParam;

import java.io.Serializable;

/**
 * @author wanliang
 * @version 1.0
 * @date 2016/1/3
 * @modify
 * @copyright microPlatform
 */
public class UserParam extends PageParam implements Serializable{

    private String id;

    private boolean isAdmin;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public boolean isAdmin() {
        return isAdmin;
    }

    public void setAdmin(boolean isAdmin) {
        this.isAdmin = isAdmin;
    }
}
