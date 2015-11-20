package com.wanliang.micro.common.util.uuid;

import java.util.UUID;

/**
 * @author wanliang
 * @version 1.0
 * @date 2015-09-29
 * @modify
 * @copyright micro
 */
public class UUIDUtil {

    public static final String randomUUID(){
        return UUID.randomUUID().toString().replace("-","").toLowerCase();
    }

}
