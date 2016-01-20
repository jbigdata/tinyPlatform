package com.wanliang.micro.web.controller.front.cms;

import com.alibaba.dubbo.config.annotation.Reference;
import com.wanliang.micro.service.cms.ArticleService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author wanliang
 * @version 1.0
 * @date 2016/1/18
 * @modify
 * @copyright Navi  TSP
 */
@Controller
@RequestMapping("/front")
public class ArticleController {

    private static final Logger LOGGER = LoggerFactory.getLogger(ArticleController.class);
    @Reference
    private ArticleService articleService;

    @RequestMapping(value = "/article/{id}")
    public ModelAndView userList(@PathVariable String id, ModelMap modelMap) {
        LOGGER.debug("Getting user page for user={}", id);
        return new ModelAndView("front/article", "article", articleService.getArticle(id));
    }

}
