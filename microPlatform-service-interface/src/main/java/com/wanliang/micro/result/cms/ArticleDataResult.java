package com.wanliang.micro.result.cms;

import java.io.Serializable;

/**
 * @author wanliang
 * @version 1.0
 * @date 2016/1/19
 * @modify
 * @copyright Navi  TSP
 */
public class ArticleDataResult implements Serializable {

    private String id;		// 编号
    private String content;	// 内容
    private String copyfrom;// 来源
    private String relation;// 相关文章
    private String allowComment;// 是否允许评论


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getCopyfrom() {
        return copyfrom;
    }

    public void setCopyfrom(String copyfrom) {
        this.copyfrom = copyfrom;
    }

    public String getRelation() {
        return relation;
    }

    public void setRelation(String relation) {
        this.relation = relation;
    }

    public String getAllowComment() {
        return allowComment;
    }

    public void setAllowComment(String allowComment) {
        this.allowComment = allowComment;
    }

}
