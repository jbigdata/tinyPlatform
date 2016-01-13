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
public class PageResult<T>  implements Serializable {

    private int totalPage;

    private long totalNum;

    private int pageSize;

    private List<T> data;

    private String html;

    public long getTotalNum() {
        return totalNum;
    }

    public void setTotalNum(long totalNum) {
        this.totalNum = totalNum;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void calculateTotalPage() {
        this.setTotalPage(Long.valueOf((this.getTotalNum() % this.getPageSize() == 0) ?
                (this.getTotalNum() / this.getPageSize()) :
                (this.getTotalNum() / this.getPageSize() + 1))
                .intValue());
    }

    public PageResult<T> setData(List<T> data) {
      this.data=data;
        return this;
    }

    public List<T> getData() {
        return data;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public String getHtml() {
        return html;
    }

    public void setHtml(String html) {
        this.html = html;
    }
}