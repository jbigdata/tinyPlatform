package com.wanliang.micro.web.directive;

import freemarker.core.Environment;
import freemarker.template.*;
import org.apache.commons.lang.StringUtils;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.context.support.WebApplicationContextUtils;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.Writer;
import java.util.Map;

/**
 * @author wanliang
 * @version 1.0
 * @date 2016/1/21
 * @modify
 * @copyright Navi  TSP
 */
public class TitleDirective implements TemplateDirectiveModel {

    public void execute(Environment env,
                        Map params, TemplateModel[] loopVars,
                        TemplateDirectiveBody body) throws TemplateException, IOException {
        ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
        HttpServletRequest request = attr.getRequest();
        WebApplicationContext webAppContext = WebApplicationContextUtils.getRequiredWebApplicationContext(request.getServletContext());
        String message = webAppContext.getMessage("html.title." + StringUtils.split(env.getMainTemplate().getName(), ".")[0], null, env.getLocale());
        Writer out = env.getOut();
        out.write(message);
    }

}
