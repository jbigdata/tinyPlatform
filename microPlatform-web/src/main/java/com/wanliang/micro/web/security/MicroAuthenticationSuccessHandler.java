package com.wanliang.micro.web.security;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author wanliang
 * @version 1.0
 * @date 2015/12/29
 * @modify
 * @copyright Navi  TSP
 */
@Component
public class MicroAuthenticationSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
      //  CustomWebAuthenticationDetails details = (CustomWebAuthenticationDetails) authentication.getDetails();
      //  if(StringUtils.hasText(details.getItemId())) {
            //TODO sanity and security check for itemId needed
            String redirectUrl ="/" ;//"item/" + details.getItemId();
            response.sendRedirect(redirectUrl);

        //}
    //    throw new IllegalStateException("itemId in authentication details not found");
    }


}