package com.wanliang.micro.web.configuration;

import com.wanliang.micro.web.directive.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;

import javax.annotation.PostConstruct;

/**
* @author wanliang
* @version 1.0
* @date 2015/11/22
* @modify
* @copyright microPlatform
*/
@Configuration
public class FreeMarkerConfig {

    @Autowired
    protected freemarker.template.Configuration configuration;

    @PostConstruct
    public void  setSharedVariable(){
        configuration.setDateFormat("yyyy/MM/dd");
        configuration.setDateTimeFormat("yyyy-MM-dd HH:mm:ss");
        configuration.setSharedVariable("indexOf", new IndexOfMethod());
        configuration.setSharedVariable("static", new StaticMethod());
        configuration.setSharedVariable("url", new UrlMethod());
        configuration.setSharedVariable("upper", new UpperDirective());
        configuration.setSharedVariable("repeat", new RepeatDirective());
        configuration.setSharedVariable("block", new BlockDirective());
        configuration.setSharedVariable("override", new OverrideDirective());
        configuration.setSharedVariable("extends", new ExtendsDirective());
    }
}
