package com.wanliang.micro.web.configuration;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.embedded.ConfigurableEmbeddedServletContainer;
import org.springframework.boot.context.embedded.EmbeddedServletContainerCustomizer;
import org.springframework.boot.context.embedded.tomcat.TomcatEmbeddedServletContainerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;
import org.springframework.core.io.ClassPathResource;

import java.io.IOException;

/**
 * Configuration capturing incoming HTTP requests and outgoing responses
 * TeeFilter see http://logback.qos.ch/recipes/captureHttp.html
 * and ch.qos.logback.access.tomcat.LogbackValve
 *
 */
@Configuration
@Profile("http-request-logger")
public class HttpLoggerConfig {

    private static final Logger LOG = LoggerFactory.getLogger(HttpLoggerConfig.class);

    @Value("${logging.logback-access:logback-access.xml}")
    private String logbackAccessFilePath;

    @Bean
    public EmbeddedServletContainerCustomizer containerCustomizer(){
        return new EmbeddedServletContainerCustomizer() {
            @Override
            public void customize(ConfigurableEmbeddedServletContainer factory) {

                if(factory instanceof TomcatEmbeddedServletContainerFactory){
                    try {
                        TomcatEmbeddedServletContainerFactory containerFactory = (TomcatEmbeddedServletContainerFactory) factory;
                        LogbackValve logbackValve = new LogbackValve();
                        logbackValve.setConfigFileInputStream(new ClassPathResource(logbackAccessFilePath).getInputStream());
                        containerFactory.addContextValves(logbackValve);
                    } catch (IOException e) {
                        LOG.error("cannot init request-logger", e);
                    }
                }

            }
        };
    }

}
