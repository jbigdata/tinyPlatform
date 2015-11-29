package com.wanliang.micro.entity.demo;

import java.io.Serializable;

/**
 * @author wanliang
 * @version 1.0
 * @date 2015/11/29
 * @modify
 * @copyright microPlatform
 */
public class Test implements Serializable{
    private  String id;
    private  String name;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
