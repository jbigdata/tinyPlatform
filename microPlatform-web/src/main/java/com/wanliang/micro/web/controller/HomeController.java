package com.wanliang.micro.web.controller;

import com.alibaba.dubbo.config.annotation.Reference;
import com.wanliang.micro.param.PageParam;
import com.wanliang.micro.result.PageResult;
import com.wanliang.micro.result.cms.ArticleResult;
import com.wanliang.micro.service.cms.ArticleService;
import com.wanliang.micro.service.cms.CategoryService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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

    @RequestMapping(value = "/",method = RequestMethod.GET)
    public String index(Model model){
        model.addAttribute( "categorys", categoryService.loadCategory());
        return "index";
    }


   public  void load(){

   }
    @RequestMapping(value = {"/front/cms/list"})
    @ResponseBody
    public PageResult<ArticleResult> list(PageParam param, Model model) {

        return articleService.indexArticle(param);
    }
}
