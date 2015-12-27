package com.wanliang.micro.web.util;

import com.google.code.kaptcha.Constants;

import javax.servlet.http.HttpServletRequest;

/**
 * @author wanliang
 * @version 1.0
 * @date 2015/12/25
 * @modify
 * @copyright microPlatform
 */
public class CaptchaUtils {
    public static boolean verify(HttpServletRequest request) {
        //从session中取出servlet生成的验证码text值
        String expected = (String) request.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY);
        //获取用户页面输入的验证码
        String received = request.getParameter("verification");
        return received != null && received.equalsIgnoreCase(expected);
    }
}
