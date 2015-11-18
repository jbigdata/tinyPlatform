package com.wanliang.tiny.web;

import com.wanliang.tiny.configuration.DataSourceConfig;
import com.wanliang.tiny.service.ServiceScan;
import com.wanliang.tiny.service.configruation.RedisConfiguration;
import com.wanliang.tiny.web.configuration.WebappConfig;
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
@ComponentScan(basePackageClasses = {ServiceScan.class,Application.class})
@EnableAutoConfiguration
@Import({WebappConfig.class,RedisConfiguration.class, DataSourceConfig.class})
public class Application {

    private static final Logger logger = LoggerFactory.getLogger(Application.class);

    public static void main(String[] args) {

        SpringApplication.run(Application.class, args);

    }

}
