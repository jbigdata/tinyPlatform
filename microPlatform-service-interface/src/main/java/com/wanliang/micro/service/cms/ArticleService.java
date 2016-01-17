package com.wanliang.micro.service.cms;

import com.wanliang.micro.param.PageParam;
import com.wanliang.micro.result.PageResult;
import com.wanliang.micro.result.cms.ArticleResult;

/**
 * @author wanliang
 * @version 1.0
 * @date 2016/1/16
 * @modify
 * @copyright microPlatform
 */
public interface ArticleService {

    public PageResult<ArticleResult> indexArticle(PageParam pageParam);
}
