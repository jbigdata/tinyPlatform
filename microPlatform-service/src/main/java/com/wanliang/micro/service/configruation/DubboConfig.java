/**
 * Copyright 2006-2015 handu.com
 * <p/>
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * <p/>
 * http://www.apache.org/licenses/LICENSE-2.0
 * <p/>
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.wanliang.micro.service.configruation;

import com.alibaba.dubbo.config.ApplicationConfig;
import com.alibaba.dubbo.config.ProtocolConfig;
import com.alibaba.dubbo.config.RegistryConfig;
import com.alibaba.dubbo.config.annotation.Service;
import com.alibaba.dubbo.config.spring.AnnotationBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;

/**
 * DubboConfig
 *
 * @author Jinkai.Ma
 */
@Configuration
@ComponentScan(basePackages = {"com.wanliang.micro.service"}, includeFilters = {@ComponentScan.Filter(value = Service.class)})
public class DubboConfig {

    @Value("${dubbo.registry.address:zookeeper://127.0.0.1:2181}")
    private   String REGISTRY_ADDRESS ;

    @Value("${dubbo.application.name:micro}")
    private   String APPLICATION_NAME ;

    @Value("${dubbo.application.owner:wanliang}")
    private   String APPLICATION_OWNER ;

    @Value("${dubbo.protocol.port:20883}")
    private   Integer PROTOCOL_PORT;

    @Value("${dubbo.package.base:com.wanliang.micro.service}")
    private static  String PACKAGE;

    @Bean
    public static AnnotationBean annotationBean() {
        AnnotationBean annotationBean = new AnnotationBean();
        annotationBean.setPackage("com.wanliang.micro.service");
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
