package com.wanliang.micro.web.directive;

import freemarker.template.TemplateHashModelEx;
import freemarker.template.TemplateMethodModelEx;
import freemarker.template.TemplateModelException;

import java.util.List;

/**
 * @author wanliang
 * @version 1.0
 * @date 2015/11/22
 * @modify
 * @copyright microPlatform
 */

public class UrlMethod implements TemplateMethodModelEx {
    @Override
    public Object exec(List arguments) throws TemplateModelException {
        if(arguments.size()<1)
            throw new TemplateModelException("arguments takes at least 1 parameter");
        String path=arguments.get(0).toString();
        TemplateHashModelEx params=null;
        if(arguments.size()>1 && arguments.get(1) instanceof TemplateHashModelEx){
            Object tmp=arguments.get(1);
            if(tmp instanceof TemplateHashModelEx){
                params=(TemplateHashModelEx)tmp;
            }else
                throw new TemplateModelException("second parameter must be map");
        }
        return Utils.makeURI(path, params);
    }
}