package com.wanliang.micro.web.configuration;

import com.alibaba.dubbo.config.ApplicationConfig;
import com.alibaba.dubbo.config.ProtocolConfig;
import com.alibaba.dubbo.config.RegistryConfig;
import com.alibaba.dubbo.config.annotation.Service;
import com.alibaba.dubbo.config.spring.AnnotationBean;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

/**
 * DubboConfig
 *
 * @author Jinkai.Ma
 */
@Configuration
//@ImportResource("classpath:dubbo-consumer.xml")
//@ComponentScan(basePackages = {"com.wanliang.micro.service"}, includeFilters = {@ComponentScan.Filter(value = Service.class)})
public class DubboConfig {

    @Value("${dubbo.registry.address:zookeeper://127.0.0.11:2181}")
    private   String REGISTRY_ADDRESS ;

    @Value("${dubbo.application.name:micro}")
    private   String APPLICATION_NAME ;

    @Value("${dubbo.application.owner:wanliang}")
    private   String APPLICATION_OWNER ;

    @Value("${dubbo.protocol.port:20880}")
    private   Integer PROTOCOL_PORT;

    @Value("${dubbo.package.base:com.wanliang.micro}")
    private static  String PACKAGE="com.wanliang.micro";

    @Bean
    public static AnnotationBean annotationBean() {
        AnnotationBean annotationBean = new AnnotationBean();
        annotationBean.setPackage(PACKAGE);
        return annotationBean;
    }

    @Bean
    public ApplicationConfig applicationConfig() {
        ApplicationConfig applicationConfig = new ApplicationConfig();
        applicationConfig.setName(APPLICATION_NAME);
        applicationConfig.setOwner(APPLICATION_OWNER);
        return applicationConfig;
    }

    @Bean
    public RegistryConfig registryConfig() {
        RegistryConfig registryConfig = new RegistryConfig();
        registryConfig.setAddress(REGISTRY_ADDRESS);

        return registryConfig;
    }

    @Bean
    public ProtocolConfig protocolConfig() {
        ProtocolConfig protocolConfig = new ProtocolConfig("dubbo");
        protocolConfig.setPort(PROTOCOL_PORT);
        return protocolConfig;
    }
}
