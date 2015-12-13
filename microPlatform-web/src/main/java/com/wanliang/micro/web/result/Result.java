package com.wanliang.micro.web.result;

/**
 * @author wanliang
 * @version 1.0
 * @date 2015/11/20
 * @modify
 * @copyright microPlatform
 */
public interface Result {

    public int httpCode();

    public int code();

    public String message();
}
