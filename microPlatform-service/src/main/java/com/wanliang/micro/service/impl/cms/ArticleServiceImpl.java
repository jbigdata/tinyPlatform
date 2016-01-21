/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.wanliang.micro.service.impl.cms;

import com.alibaba.dubbo.config.annotation.Service;
import com.google.common.collect.Lists;
import com.wanliang.micro.entity.cms.Article;
import com.wanliang.micro.entity.cms.ArticleData;
import com.wanliang.micro.entity.cms.Category;
import com.wanliang.micro.param.PageParam;
import com.wanliang.micro.persistence.BaseRepository;
import com.wanliang.micro.persistence.Page;
import com.wanliang.micro.repository.cms.ArticleDataRepository;
import com.wanliang.micro.repository.cms.ArticleRepository;
import com.wanliang.micro.repository.cms.CategoryRepository;
import com.wanliang.micro.result.PageResult;
import com.wanliang.micro.result.cms.ArticleDataResult;
import com.wanliang.micro.result.cms.ArticleResult;
import com.wanliang.micro.service.BaseService;
import com.wanliang.micro.service.cms.ArticleService;
import com.wanliang.micro.service.impl.BaseServiceImpl;
import org.apache.commons.lang.StringEscapeUtils;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.time.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 文章Service
 *
 * @author ThinkGem
 * @version 2013-05-15
 */
@Service
public class ArticleServiceImpl extends BaseServiceImpl<Article> implements ArticleService {

    @Autowired
    private ArticleDataRepository articleDataRepository;
    @Autowired
    private CategoryRepository categoryRepository;
    @Autowired
    private ArticleRepository articleRepository;


    @Transactional(readOnly = false)
    public PageResult<ArticleResult> findPage(Page<Article> page, Article article, boolean isDataScopeFilter) {
        // 更新过期的权重，间隔为“6”个小时
        //`	Date updateExpiredWeightDate =  (Date)CacheUtils.get("updateExpiredWeightDateByArticle");
        //if (updateExpiredWeightDate == null || (updateExpiredWeightDate != null
        //		&& updateExpiredWeightDate.getTime() < new Date().getTime())){
        articleRepository.updateExpiredWeight(article);
        //	CacheUtils.put("updateExpiredWeightDateByArticle", DateUtils.addHours(new Date(), 6));
        //}
//		DetachedCriteria dc = dao.createDetachedCriteria();
//		dc.createAlias("category", "category");
//		dc.createAlias("category.site", "category.site");
        if (article.getCategory() != null && StringUtils.isNotBlank(article.getCategory().getId()) && !Category.isRoot(article.getCategory().getId())) {
            Category category = categoryRepository.get(article.getCategory().getId());
            if (category == null) {
                category = new Category();
            }
            category.setParentIds(category.getId());
            category.setSite(category.getSite());
            article.setCategory(category);
        } else {
            article.setCategory(new Category());
        }
//		if (StringUtils.isBlank(page.getOrderBy())){
//			page.setOrderBy("a.weight,a.update_date desc");
//		}
//		return dao.find(page, dc);
        //	article.getSqlMap().put("dsf", dataScopeFilter(article.getCurrentUser(), "o", "u"));
        return null;//super.findPage(page, article);

    }

    @Override
    public PageResult<ArticleResult> indexArticle(PageParam pageParam) { 
        Article article=new Article();
        Page<Article> page=new Page<>(pageParam.getCurPage(),pageParam.getRepage(),pageParam.getPageSize(),pageParam.getSortName(),-2);
        article.setPage(page);
        List<Article> list=articleRepository.findList(article);
        page.setList(list);
        List<ArticleResult> resultList=new ArrayList<>();
        for(Article article1:list){
            ArticleResult articleResult=new ArticleResult();
            articleResult.setId(article1.getId());
            articleResult.setTitle(article1.getTitle());
            articleResult.setCategory(article1.getCategory().getId());
            articleResult.setDescription(article1.getDescription());
            articleResult.setKeywords(article1.getKeywords());
            // articleResult.setPassword(user.getPassword());
            articleResult.setWeightDate(article1.getWeightDate());
            articleResult.setUserName(article1.getUser().getName());
            articleResult.setBeginDate(article1.getBeginDate());
            articleResult.setLink(article1.getLink());
            articleResult.setHits(article1.getHits());
            resultList.add(articleResult);
        }
        PageResult<ArticleResult> pageResult=new PageResult<>();
        pageResult.setData(resultList);
        pageResult.setSuccess(true);
        pageResult.setTotalRows(page.getCount());
        pageResult.setCurPage(page.getPageNo());
        return pageResult;
    }

    @Transactional(readOnly = false)
    public void save(Article article) {
        if (article.getArticleData().getContent() != null) {
            article.getArticleData().setContent(StringEscapeUtils.unescapeHtml(
                    article.getArticleData().getContent()));
        }
        // 如果没有审核权限，则将当前内容改为待审核状态
        //if (!UserUtils.getSubject().isPermitted("cms:article:audit")){
        article.setDelFlag(Article.DEL_FLAG_AUDIT);
        //}
        // 如果栏目不需要审核，则将该内容设为发布状态
//		if (article.getCategory()!=null&&StringUtils.isNotBlank(article.getCategory().getId())){
//			Category category = categoryRepository.get(article.getCategory().getId());
//			if (!Global.YES.equals(category.getIsAudit())){
//				article.setDelFlag(Article.DEL_FLAG_NORMAL);
//			}
//		}
        //article.setUpdateBy(UserUtils.getUser());
        article.setUpdateDate(new Date());
        if (StringUtils.isNotBlank(article.getViewConfig())) {
            article.setViewConfig(StringEscapeUtils.unescapeHtml(article.getViewConfig()));
        }

        ArticleData articleData = new ArticleData();
        ;
        if (StringUtils.isBlank(article.getId())) {
            article.preInsert();
            articleData = article.getArticleData();
            articleData.setId(article.getId());
            articleRepository.insert(article);
            articleDataRepository.insert(articleData);
        } else {
            article.preUpdate();
            articleData = article.getArticleData();
            articleData.setId(article.getId());
            articleRepository.update(article);
            articleDataRepository.update(article.getArticleData());
        }
    }

    @Transactional(readOnly = false)
    public void delete(Article article, Boolean isRe) {
//		dao.updateDelFlag(id, isRe!=null&&isRe?Article.DEL_FLAG_NORMAL:Article.DEL_FLAG_DELETE);
        // 使用下面方法，以便更新索引。
        //Article article = dao.get(id);
        //article.setDelFlag(isRe!=null&&isRe?Article.DEL_FLAG_NORMAL:Article.DEL_FLAG_DELETE);
        //dao.insert(article);
        articleRepository.delete(article);
    }

    /**
     * 通过编号获取内容标题
     *
     * @return new Object[]{栏目Id,文章Id,文章标题}
     */
    public List<Object[]> findByIds(String ids) {
        if (ids == null) {
            return new ArrayList<Object[]>();
        }
        List<Object[]> list = Lists.newArrayList();
        String[] idss = StringUtils.split(ids, ",");
        Article e = null;
        for (int i = 0; (idss.length - i) > 0; i++) {
            e = articleRepository.get(idss[i]);
            list.add(new Object[]{e.getCategory().getId(), e.getId(), StringUtils.abbreviate(e.getTitle(), 50)});
        }
        return list;
    }

    /**
     * 点击数加一
     */
    @Transactional(readOnly = false)
    public void updateHitsAddOne(String id) {
        articleRepository.updateHitsAddOne(id);
    }

    /**
     * 更新索引
     */
    public void createIndex() {
        //dao.createIndex();
    }

    /**
     * 全文检索
     */
    //FIXME 暂不提供检索功能
    public Page<Article> search(Page<Article> page, String q, String categoryId, String beginDate, String endDate) {

        // 设置查询条件
//		BooleanQuery query = dao.getFullTextQuery(q, "title","keywords","description","articleData.content");
//		
//		// 设置过滤条件
//		List<BooleanClause> bcList = Lists.newArrayList();
//
//		bcList.add(new BooleanClause(new TermQuery(new Term(Article.FIELD_DEL_FLAG, Article.DEL_FLAG_NORMAL)), Occur.MUST));
//		if (StringUtils.isNotBlank(categoryId)){
//			bcList.add(new BooleanClause(new TermQuery(new Term("category.ids", categoryId)), Occur.MUST));
//		}
//		
//		if (StringUtils.isNotBlank(beginDate) && StringUtils.isNotBlank(endDate)) {   
//			bcList.add(new BooleanClause(new TermRangeQuery("updateDate", beginDate.replaceAll("-", ""),
//					endDate.replaceAll("-", ""), true, true), Occur.MUST));
//		}   

        //BooleanQuery queryFilter = dao.getFullTextQuery((BooleanClause[])bcList.toArray(new BooleanClause[bcList.size()]));

//		System.out.println(queryFilter);

        // 设置排序（默认相识度排序）
        //FIXME 暂时不提供lucene检索
        //Sort sort = null;//new Sort(new SortField("updateDate", SortField.DOC, true));
        // 全文检索
        //dao.search(page, query, queryFilter, sort);
        // 关键字高亮
        //dao.keywordsHighlight(query, page.getList(), 30, "title");
        //dao.keywordsHighlight(query, page.getList(), 130, "description","articleData.content");

        return page;
    }

    @Override
    public ArticleResult getArticle(String id){
      Article article=  articleRepository.get(id);
      ArticleData articleData=articleDataRepository.get(id);
      ArticleResult result=new ArticleResult();
      if(article!=null){
          result.setTitle(article.getTitle());
          result.setLink(article.getLink());
          result.setDescription(article.getDescription());
          result.setKeywords(article.getKeywords());
          result.setUserName(article.getUser().getName());
          result.setCreateDate(article.getCreateDate());
          ArticleDataResult articleResult=new ArticleDataResult();
          articleResult.setId(article.getId());
          articleResult.setAllowComment(articleData.getAllowComment());
          articleResult.setContent(articleData.getContent());
          articleResult.setRelation(articleData.getRelation());
          articleResult.setCopyfrom(articleData.getCopyfrom());
          result.setArticleData(articleResult);
      }
        return result;
    }


}
