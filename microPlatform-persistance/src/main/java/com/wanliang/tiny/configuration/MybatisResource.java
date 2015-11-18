package com.wanliang.tiny.configuration;

import org.springframework.core.io.Resource;

/**
 * @author wanliang
 * @version 1.0
 * @date 2015/11/18
 * @modify
 * @copyright tinyPlatform
 */
public class MybatisResource {

    private Resource[] mapperResources;

    public MybatisResource(){}

    public MybatisResource(Resource[] mapperResources){
        this.mapperResources = mapperResources;
    }

    public Resource[] getMapperResources() {
        return mapperResources;
    }

    public void setMapperResources(Resource[] mapperResources) {
        this.mapperResources = mapperResources;
    }
}
