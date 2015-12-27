package com.wanliang.micro.web.configuration;

import com.google.code.kaptcha.Producer;
import com.google.code.kaptcha.impl.DefaultKaptcha;
import com.google.code.kaptcha.util.Config;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.Properties;

/**
 * @author wanliang
 * @version 1.0
 * @date 2015/12/25
 * @modify
 * @copyright microPlatform
 */
@Configuration
public class KaptchaConfig  {

   @Value("${kaptcha.border:yes}")
   private String border;

    @Value("${kaptcha.border.color:105,179,90}")
    private String borderColor;

    @Value("${kaptcha.textproducer.font.color:blue}")
    private String fontColor;

    @Value("${kaptcha.obscurificator.impl:com.google.code.kaptcha.impl.ShadowGimpy}")
    private String obscurificator;

    @Value("${kaptcha.image.width:100}")
    private String width;

    @Value("${kaptcha.image.height:40}")
    private String height;

    @Value("${kaptcha.textproducer.font.size:45}")
    private String fontSize;

    @Value("${kaptcha.session.key:code}")
    private String sessionKey;


    @Value("${kaptcha.textproducer.char.length:4}")
    private String length;


    @Value("${kaptcha.textproducer.font.names:宋体,楷体,微软雅黑}")
    private String fontNames;
    @Bean
    public DefaultKaptcha captchaProducer(Config config){
        DefaultKaptcha producer=new DefaultKaptcha();
        producer.setConfig(config);
        return producer;
    }

    @Bean
    public Config config(Properties properties){
        properties.put("kaptcha.border",border);
        properties.put("kaptcha.border.color",borderColor);
        properties.put("kaptcha.textproducer.font.color",fontColor );
        properties.put("kaptcha.obscurificator.impl",obscurificator);
        properties.put("kaptcha.image.width",width);
        properties.put("kaptcha.image.height",height);
        properties.put("kaptcha.textproducer.font.size",fontSize);
        properties.put("kaptcha.session.key",sessionKey);
        properties.put("kaptcha.textproducer.char.length",length);
        properties.put("kaptcha.textproducer.font.names",fontNames);
        Config config=new Config(properties);
        return config;
    }
}
