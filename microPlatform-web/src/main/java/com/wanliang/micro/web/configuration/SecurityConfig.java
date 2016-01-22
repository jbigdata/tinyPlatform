package com.wanliang.micro.web.configuration;

import com.wanliang.micro.web.security.AptchaFilter;
import com.wanliang.micro.web.security.MicroAuthenticationSuccessHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.security.SecurityProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.servlet.configuration.EnableWebMvcSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.access.channel.ChannelProcessingFilter;
import org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.util.matcher.RegexRequestMatcher;
import org.springframework.security.web.util.matcher.RequestMatcher;

import javax.servlet.Filter;
import javax.servlet.http.HttpServletRequest;

/**
 * @author wanliang
 * @version 1.0
 * @date 2015/12/19
 * @modify
 * @copyright microPlatform
 */
@Configuration
@EnableGlobalMethodSecurity(prePostEnabled = true)
@Order(SecurityProperties.ACCESS_OVERRIDE_ORDER)
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private UserDetailsService userDetailsService;

    /**
     * 不需要拦截处理的URI
     */
    public static final String[] IGNORE_URIS = {
            "/error/**",
            "/kaptcha/**",
            "/auth/**",
            "/login",
            "/signin/**",
            "/signup/**",
            "/front/**",
            "/register",
            "/static/**"
    };


    /**
     * 过滤资源
     */
    public static final String[] IGNORE_RESOURCES = {
            "/bower_components/**",
            "/**/*.css",
            "/**/*.png",
            "/**/*.gif",
            "/**/*.jpg",
            "/**/*.js",
            "/**/*.woff",
            "/**/*.woff2",
            "/**/*.ttf"
    };

    @Bean
    public SavedRequestAwareAuthenticationSuccessHandler successRedirectHandler() {
        SavedRequestAwareAuthenticationSuccessHandler successRedirectHandler =
                new SavedRequestAwareAuthenticationSuccessHandler();
        successRedirectHandler.setDefaultTargetUrl("/");
        successRedirectHandler.setTargetUrlParameter("/");
        return successRedirectHandler;
    }

    /**
     * 配置security
     *
     * @param http
     * @throws Exception
     */
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.csrf()
                .and()
                .authorizeRequests()
                .antMatchers("/","/bootstrap.html", "/static/**", "/public/**", "/captcha.jpg").permitAll()
                .antMatchers(IGNORE_URIS).permitAll()
                .antMatchers(IGNORE_RESOURCES).permitAll()
                .antMatchers("/system/**","sys/**", "/system").hasAuthority("ADMIN")
                .antMatchers("/front").hasAnyAuthority("USER")
                .anyRequest().fullyAuthenticated()
                .and()
                .formLogin()
                .loginPage("/login")
                .failureUrl("/login?error")
                .usernameParameter("loginName")
                .passwordParameter("password")
                .permitAll()
                .defaultSuccessUrl("/system")
                .and()
                .logout()
                .logoutUrl("/logout")
                .deleteCookies("remember-me")
                .logoutSuccessUrl("/login")
                .permitAll()
                .and()
                .rememberMe().and().addFilterBefore(captchaFilter(), UsernamePasswordAuthenticationFilter.class);//.and() .addFilterBefore(aptchaFilter, UsernamePasswordAuthenticationFilter.class);
    }

    /**
     * 自定义验证码
     *
     * @return
     * @throws Exception
     */
    public AbstractAuthenticationProcessingFilter captchaFilter() throws Exception {
        AptchaFilter captchaAuthenticationProcessingFilter = new AptchaFilter();
        captchaAuthenticationProcessingFilter.setAuthenticationManager(authenticationManagerBean());
        return captchaAuthenticationProcessingFilter;
    }

    @Override
    public void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService)
                .passwordEncoder(new BCryptPasswordEncoder());

        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        String hashedPassword = passwordEncoder.encode("123456");
        System.out.println(hashedPassword);
    }

    @Bean
    public SavedRequestAwareAuthenticationSuccessHandler
    savedRequestAwareAuthenticationSuccessHandler() {

        SavedRequestAwareAuthenticationSuccessHandler auth
                = new SavedRequestAwareAuthenticationSuccessHandler();
        auth.setTargetUrlParameter("targetUrl");
        auth.setDefaultTargetUrl("/home");
        return auth;
    }
}