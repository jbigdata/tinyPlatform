package com.wanliang.micro.web.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.wanliang.micro.param.PageParam;
import com.wanliang.micro.result.PageResult;
import com.wanliang.micro.result.cms.ArticleResult;
import com.wanliang.micro.service.cms.ArticleService;
import com.wanliang.micro.service.cms.CategoryService;
import freemarker.template.Configuration;
import freemarker.template.Template;
import freemarker.template.TemplateException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.util.Map;

/**
 * @author wanliang
 * @version 1.0
 * @date 2015/12/31
 * @modify
 * @copyright microPlatform
 */
@Controller
public class HomeController {

    @Reference
    private CategoryService categoryService;

    @Reference
    private ArticleService articleService;


    @Autowired
    private Configuration configuration;

    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String index(Model model){
        model.addAttribute( "categorys", categoryService.loadCategory());
        return "index";
    }


    @ResponseBody
    @RequestMapping(value = "/static/index")
    public ImmutableMap<String,String> staticPage2(Model model) throws IOException, TemplateException {
        Template template = configuration.getTemplate("index.ftl");

        Map<String,Object> ftlRoot = Maps.newHashMap();
        ftlRoot.put("name", "张三ddd");
        ftlRoot.put("email", "levinzhang1981@gmail.com");
        ftlRoot.put("categorys", categoryService.loadCategory());
        String path = this.getClass().getResource("/static").getPath();
        //FileWriter fileWriter = new FileWriter(path+"/index.html");
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(path+"/index.html"),"UTF-8"));
        template.process(ftlRoot,bw);

        bw.flush();

        return ImmutableMap.of("status","1");
    }

    @RequestMapping(value = {"/front/cms/list"})
    @ResponseBody
    public PageResult<ArticleResult> list(PageParam param, Model model) {

        return articleService.indexArticle(param);
    }
}
