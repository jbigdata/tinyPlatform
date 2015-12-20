package com.wanliang.micro.web;

import com.wanliang.micro.web.configuration.DubboConfig;
import com.wanliang.micro.web.configuration.SecurityConfig;
import com.wanliang.micro.web.configuration.WebappConfig;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

/**
 * Created by Administrator on 2015/10/30.
 */
@Configuration
@ComponentScan(basePackageClasses = {Application.class})
@EnableAutoConfiguration
@Import({WebappConfig.class, SecurityConfig.class, DubboConfig.class})
public class Application {

    private static final Logger logger = LoggerFactory.getLogger(Application.class);

    public static void main(String[] args) {

        SpringApplication.run(Application.class, args);

    }

}
