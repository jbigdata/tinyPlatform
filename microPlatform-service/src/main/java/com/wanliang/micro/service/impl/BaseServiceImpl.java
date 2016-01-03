package com.wanliang.micro.service.impl;

import com.wanliang.micro.persistence.BaseRepository;
import com.wanliang.micro.persistence.DataEntity;
import com.wanliang.micro.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * @author wanliang
 * @version 1.0
 * @date 2016/1/2
 * @modify
 * @copyright microPlatform
 */
public class BaseServiceImpl<T extends DataEntity> implements BaseService<T> {

    @Autowired
    private BaseRepository<T> baseRepository;

    @Override
    public T get(String id) {
        return baseRepository.get(id);
    }

    @Override
    public void save(T entity) {

        baseRepository.insert(entity);
    }

    @Override
    public void delete(T entity) {
        baseRepository.delete(entity);
    }

    @Override
    public void update(T entity) {

        baseRepository.update(entity);
    }

    @Override
    public List<T> query(T entity) {
        return baseRepository.findList(entity);
    }
}
