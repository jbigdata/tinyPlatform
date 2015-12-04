package com.wanliang.micro.service;

import com.wanliang.micro.MybatisScan;
import com.wanliang.micro.configuration.DataSourceConfig;
import com.wanliang.micro.service.configruation.DubboConfig;
import com.wanliang.micro.service.configruation.RedisConfiguration;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.embedded.ConfigurableEmbeddedServletContainer;
import org.springframework.boot.context.embedded.EmbeddedServletContainerCustomizer;
import org.springframework.boot.context.web.SpringBootServletInitializer;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

@SpringBootApplication
@Configuration
@ComponentScan(basePackageClasses = {Application.class})
@EnableAutoConfiguration
@Import({RedisConfiguration.class, DataSourceConfig.class, DubboConfig.class})
public class Application {

    private static final Logger logger = LoggerFactory.getLogger(Application.class);

    public static void main(String[] args) {

        SpringApplication.run(Application.class, args);

    }

}
