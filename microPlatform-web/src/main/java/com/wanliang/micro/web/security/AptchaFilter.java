package com.wanliang.micro.web.security;

import com.google.code.kaptcha.Constants;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.authentication.BadCredentialsException;
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
* @modify spring-boot-scaffold
* @copyright Navi  TSP
*/
public class AptchaFilter extends UsernamePasswordAuthenticationFilter {

    private static final Logger log = LoggerFactory.getLogger(AptchaFilter.class);
    public AptchaFilter() {
        super();
    }

    private String captchaParameter = "verification";
    private boolean state = Boolean.TRUE;


    public AptchaFilter(boolean state) {
        this.state = state;
    }

    protected String obtainCaptcha(HttpServletRequest request) {
        return request.getParameter(captchaParameter);
    }


    @Override
    public Authentication attemptAuthentication(HttpServletRequest request,
                                                HttpServletResponse response) throws AuthenticationException {
        String captcha = this.obtainCaptcha(request);

        //不开启验证码不验证
        if (!state) {
            log.warn("Captcha isn't execute !!!", state);
        } else if (StringUtils.isBlank(captcha)) {
            log.error("Captcha is Invalid,params={}", ToStringBuilder.reflectionToString(request.getParameterMap()));
            throw new BadCredentialsException("Captcha is NULL !");
        } else {
            String sessionCaptcha = (String) request.getSession(false).getAttribute(Constants.KAPTCHA_SESSION_KEY);
            log.info("sessionCaptcha:---------------"+sessionCaptcha);
            if (StringUtils.isNotBlank(sessionCaptcha)
                    && !sessionCaptcha.equalsIgnoreCase(captcha)) {
                log.error("Captcha is Invalid,params={}", ToStringBuilder.reflectionToString(request.getParameterMap()));
                throw new BadCredentialsException("Captcha is Invalid !");
            }
        }
        return super.attemptAuthentication(request, response);
    }
}