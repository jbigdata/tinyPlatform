package com.wanliang.micro.param;

import java.io.Serializable;

/**
 * 分页参数
 * @author wanliang
 * @version 1.0
 * @date 2016/1/13
 * @modify
 * @copyright Navi  TSP
 */
public class PageParam implements Serializable{

    private String curPage;
    private String repage;
    private String pageSize;
    private String sortName;
    private String sortOrder;

    public String getCurPage() {
        return curPage;
    }

    public void setCurPage(String curPage) {
        this.curPage = curPage;
    }

    public String getRepage() {
        return repage;
    }

    public void setRepage(String repage) {
        this.repage = repage;
    }

    public String getPageSize() {
        return pageSize;
    }

    public void setPageSize(String pageSize) {
        this.pageSize = pageSize;
    }

    public String getSortName() {
        return sortName;
    }

    public void setSortName(String sortName) {
        this.sortName = sortName;
    }

    public String getSortOrder() {
        return sortOrder;
    }

    public void setSortOrder(String sortOrder) {
        this.sortOrder = sortOrder;
    }
}
