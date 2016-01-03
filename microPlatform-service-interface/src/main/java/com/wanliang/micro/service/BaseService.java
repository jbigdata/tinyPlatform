package com.wanliang.micro.service;

import java.util.List;

/**
 * @author wanliang
 * @version 1.0
 * @date 2016/1/2
 * @modify
 * @copyright microPlatform
 */
public interface BaseService<T> {

    public T get(String id);

    public void save(T entity);

    public void delete(T entity);

    public void update(T entity);

    public List<T> query(T entity);

}
