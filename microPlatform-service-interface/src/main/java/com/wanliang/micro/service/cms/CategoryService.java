package com.wanliang.micro.service.cms;

import com.wanliang.micro.result.cms.CategoryResult;

import java.util.List;

/**
 * @author wanliang
 * @version 1.0
 * @date 2016/1/19
 * @modify
 * @copyright Navi  TSP
 */
public interface CategoryService {

    public List<CategoryResult> loadCategory();
}
