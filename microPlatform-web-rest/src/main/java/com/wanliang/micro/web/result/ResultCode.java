package com.wanliang.micro.web.result;

/**
 * @author wanliang
 * @version 1.0
 * @date 2015/11/21
 * @modify
 * @copyright microPlatform
 */
public enum ResultCode implements Result{
    SUCCESS(200, "success", 200),
    NO_RESULT(204, "无结果!", 204),
    REDIRECT(302, "请求跳转!", 302),
    BAD_REQUEST(400, "请求无效!", 400),
    UNAUTHORIZED(401, "未授权!", 401),
    FORBIDDEN(403, "拒绝访问!", 403),
    SERVER_ERROR(500, "服务器内部错误!", 500),
    PARAM_ERROR(1001, "参数有误!", 400),
    LOGIN_FAILED(1002, "登录失败!", 400),
//    	ACCOUNT_INVALID(1027, "帐号已注销!", 403)
    ;

    private int code;
    private int httpCode;
    private String message;
    private ResultCode(int code, String message, int httpCode) {
        this.code = code;
        this.message = message;
        this.httpCode = httpCode;
    }

    @Override
    public int code() {
        return code;
    }

    @Override
    public String message() {
        return message;
    }

    public int httpCode(){
        return httpCode;
    }

    public static ResultCode valueOf(int code){
        for(ResultCode resultCode : values()) {
            if(resultCode.code() == code) {
                return resultCode;
            }
        }

        throw new IllegalArgumentException("No Constants match ! code : " + code );
    }
}
