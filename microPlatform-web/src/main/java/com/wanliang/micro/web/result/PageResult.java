package com.wanliang.micro.web.result;

import java.util.List;

/**
 * @author wanliang
 * @version 1.0
 * @date 2015/11/21
 * @modify
 * @copyright microPlatform
 */
public class PageResult<T> extends CommonResult<List<T>> {

    private int totalPage;

    private long totalNum;

    private int pageSize;

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

    public PageResult<T> setData(List<T> datas) {
        super.setData(datas);
        return this;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }
}
