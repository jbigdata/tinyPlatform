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

    private String pageNo;
    private String repage;
    private String pageSize;
    private String orderBy;

    public String getPageNo() {
        return pageNo;
    }

    public void setPageNo(String pageNo) {
        this.pageNo = pageNo;
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

    public String getOrderBy() {
        return orderBy;
    }

    public void setOrderBy(String orderBy) {
        this.orderBy = orderBy;
    }
}
