package com.wanliang.micro.persistence.annotation;

import org.springframework.stereotype.Component;

import java.lang.annotation.*;

/**
 * @author wanliang
 * @version 1.0
 * @date 2015/11/28
 * @modify
 * @copyright microPlatform
 */
@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.TYPE)
@Documented
@Component
public @interface MyBatis {

    /**
     * The value may indicate a suggestion for a logical component name,
     * to be turned into a Spring bean in case of an autodetected component.
     * @return the suggested component name, if any
     */
    String value() default "";

}
