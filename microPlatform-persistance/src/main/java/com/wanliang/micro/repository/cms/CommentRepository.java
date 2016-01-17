/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.wanliang.micro.repository.cms;


import com.wanliang.micro.entity.cms.Comment;
import com.wanliang.micro.persistence.BaseRepository;
import com.wanliang.micro.persistence.annotation.MyBatis;

/**
 * 评论DAO接口
 * @author ThinkGem
 * @version 2013-8-23
 */
@MyBatis
public interface CommentRepository extends BaseRepository<Comment> {

}
