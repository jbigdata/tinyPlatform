package com.wanliang.micro.repository.cms;

import com.wanliang.micro.entity.cms.Article;
import com.wanliang.micro.entity.cms.Category;
import com.wanliang.micro.persistence.BaseRepository;
import com.wanliang.micro.persistence.annotation.MyBatis;

import java.util.List;

/**
 * 文章DAO接口
 * @author ThinkGem
 * @version 2013-8-23
 */
@MyBatis
public interface ArticleRepository extends BaseRepository<Article> {
	
	public List<Article> findByIdIn(String[] ids);
//	{
//		return find("from Article where id in (:p1)", new Parameter(new Object[]{ids}));
//	}
	
	public int updateHitsAddOne(String id);
//	{
//		return update("update Article set hits=hits+1 where id = :p1", new Parameter(id));
//	}
	
	public int updateExpiredWeight(Article article);
	
	public List<Category> findStats(Category category);
//	{
//		return update("update Article set weight=0 where weight > 0 and weightDate < current_timestamp()");
//	}
	
}
