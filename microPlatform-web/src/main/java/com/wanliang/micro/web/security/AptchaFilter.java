package com.wanliang.micro.web.security;

import com.google.code.kaptcha.Constants;
import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
* @author wanliang
* @version 1.0
* @date 2015/12/29
* @modify
* @copyright Navi  TSP
*/

public class AptchaFilter extends UsernamePasswordAuthenticationFilter {


    @Override
    public Authentication attemptAuthentication(HttpServletRequest request,
                                                HttpServletResponse response) throws AuthenticationException {
        checkValidateCode(request);
        return super.attemptAuthentication(request, response);

    }


    protected void checkValidateCode(HttpServletRequest request) {
        String sessionValidateCode = obtainSessionValidateCode(request);
        String validateCodeParameter = obtainValidateCodeParameter(request);
        if (sessionValidateCode != null
                && !sessionValidateCode.equalsIgnoreCase(validateCodeParameter)) {

            throw new AuthenticationServiceException(messages
                    .getMessage("validateCode.notEquals"));
        }
    }


    private String obtainSessionValidateCode(HttpServletRequest request) {

        HttpSession session = request.getSession(true);

        String code = (String) session

                .getAttribute(Constants.KAPTCHA_SESSION_KEY);

        return code;

    }


    private String obtainValidateCodeParameter(HttpServletRequest request) {

        // 是页面中验证码输入框的name
        return request.getParameter("verification");

    }

}