package com.wanliang.micro.service.enums;

/**
 * @author wanliang
 * @version 1.0
 * @date 2016/1/21
 * @modify
 * @copyright Navi  TSP
 */
public enum Functions {
    REGISTER("register", "账号激活"),
    RESENT_REGISTER("resentRegister", "账号激活"),
    LOGIN("login", ""),
    FIND_PASSWORD("findPassword","重置密码"),
    RESENT_FIND_PASSWORD("resent_findPassword","重置密码"),
    BIND("bind","账号绑定"),
    RESENT_BIND("resent_bind", "账号绑定"),
    UNBIND("unbind","账号解绑"),
    RESENT_UNBIND("resent_unbind","账号解绑"),
    CHANGEBIND("changeBind","更改绑定邮箱"),
    RESENT_CHANGE_BIND("resent_changeBind", "更改绑定邮箱"),
    ADMIN_RESET_PASSWD("admin_reset_passwd", "重置密码"),
    QUIK_LOGIN("quickLogin","");

    private String func;

    /**
     * 如果需要发邮件，这是邮件的主题
     */
    private String emailSubject;

    private Functions(String name, String subject){
        this.func = name;
        this.emailSubject = subject;
    }

    public String func(){
        return func;
    }

    public String emailSubject(){
        return this.emailSubject;
    }

    @Override
    public String toString() {
        return func;
    }

    public static Functions valuesOf(String name) {
        for (Functions status : values()) {
            if (status.func().equals(name)) {
                return status;
            }
        }
        throw new IllegalArgumentException("No matching constant for [" + name + "]");
    }
}
