package com.wanliang.micro.param;

import java.io.Serializable;

/**
 * @author wanliang
 * @version 1.0
 * @date 2016/1/12
 * @modify
 * @copyright microPlatform
 */
public class BaseParam implements Serializable {
    private int pageSize;
    private int pageNo;

    private String orderBy;

    public int getOrderType() {
        return orderType;
    }

    public void setOrderType(int orderType) {
        this.orderType = orderType;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPageNo() {
        return pageNo;
    }

    public void setPageNo(int pageNo) {
        this.pageNo = pageNo;
    }

    public String getOrderBy() {
        return orderBy;
    }

    public void setOrderBy(String orderBy) {
        this.orderBy = orderBy;
    }

    private int orderType;


}
