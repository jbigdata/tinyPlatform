package com.wanliang.micro.common.util.constants;

/**
 * @author wanlianbh
 * @version 1.0
 * @date 2015-10-10
 * @modify
 * @copyright Navi Tsp
 */
public interface GlobalConstans {

    /**
     * 存放redis的前缀
     */
    String REDIS_KEY_PREFIX = "op_usr.";

    String REDIS_KEY_SESSION = "session.";

    String REDIS_KEY_USER = "user.";

    /**
     * device_id  的  header名称
     */
    String HEADER_DEVICE_ID = "device_id";

    /**
     * device_type 的 header 名称
     */
    String HEADER_DEVICE_TYPE = "deviceType";

    /**
     * app_version  的  header 名称
     */
    String HEADER_APP_VERSION = "app_version";

    byte IS_VALID_Y = 1;
    byte IS_VALID_N = 0;

}
