/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.wanliang.micro.service.impl.cms;

import com.alibaba.dubbo.config.annotation.Service;
import com.google.common.collect.Lists;
import com.google.common.collect.Sets;
import com.wanliang.micro.entity.cms.Category;
import com.wanliang.micro.entity.cms.Site;
import com.wanliang.micro.entity.system.Office;
import com.wanliang.micro.persistence.Page;
import com.wanliang.micro.repository.cms.CategoryRepository;
import com.wanliang.micro.result.cms.CategoryResult;
import com.wanliang.micro.service.BaseService;
import com.wanliang.micro.service.cms.CategoryService;
import com.wanliang.micro.service.impl.BaseServiceImpl;
import org.apache.commons.lang.StringEscapeUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/**
 * 栏目Service
 *
 * @author ThinkGem
 * @version 2013-5-31
 */
@Service
public class CategoryServiceImpl extends BaseServiceImpl<Category> implements CategoryService {


    @Autowired
    private CategoryRepository categoryRepository;

    @Override
    //@Cacheable("categoryCache")
    public List<CategoryResult> loadCategory() {
        Category category = new Category();
        category.setOffice(new Office());
     //   category.getSqlMap().put("dsf", dataScopeFilter(user, "o", "u"));
        category.setSite(new Site());
        category.setParent(new Category());
        List<Category> list = categoryRepository.findList(category);
        List<CategoryResult> results = new ArrayList<>();
        for (Category categoryTemp : list) {

            if (categoryTemp.getParentIds().equals("0,1,")) {
                CategoryResult categoryResult = new CategoryResult();
                BeanUtils.copyProperties(categoryTemp, categoryResult);
                results.add(categoryResult);
            }
        }

        return results;
    }

}
