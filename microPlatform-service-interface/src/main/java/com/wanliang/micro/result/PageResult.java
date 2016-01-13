package com.wanliang.micro.result;

import java.io.Serializable;
import java.util.List;

/**
 * @author wanliang
 * @version 1.0
 * @date 2016/1/13
 * @modify
 * @copyright Navi  TSP
 */
public class PageResult<T> implements Serializable {

    private boolean success;
    private long totalRows;
    private int curPage;
    private List<T> data;

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public long getTotalRows() {
        return totalRows;
    }

    public void setTotalRows(long totalRows) {
        this.totalRows = totalRows;
    }

    public int getCurPage() {
        return curPage;
    }

    public void setCurPage(int curPage) {
        this.curPage = curPage;
    }

    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }
}