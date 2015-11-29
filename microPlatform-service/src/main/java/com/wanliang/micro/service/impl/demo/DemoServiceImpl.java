package com.wanliang.micro.service.impl.demo;

import com.alibaba.dubbo.config.annotation.Service;
import com.wanliang.micro.entity.demo.Test;
import com.wanliang.micro.repository.demo.TestRepository;
import com.wanliang.micro.result.demo.Address;
import com.wanliang.micro.result.demo.User;
import com.wanliang.micro.service.demo.DemoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;

import java.util.ArrayList;
import java.util.List;

/**
 *  test service
 */
@Service
public class DemoServiceImpl implements DemoService {

    @Autowired
    private TestRepository testRepository;

    @Cacheable(value = "usercache",keyGenerator = "wiselyKeyGenerator")
    public User findUser(Long id,String firstName,String lastName){
        System.out.println("无缓存的时候调用这里");
        return new User(id,firstName,lastName);
    }
    @Cacheable(value = "addresscache",keyGenerator = "wiselyKeyGenerator")
    public Address findAddress(Long id,String province,String city){
        System.out.println("无缓存的时候调用这里");
        return new Address(id,province,city);
    }

    public String getAll(){
        System.out.println("=============================test=========");
        List<Test> list=testRepository.test();
        List<String> newList=new ArrayList<>();
        for(Test test:list){
            newList.add(test.getName());

        }
        System.out.println(list.get(0).getName());
        return list.get(0).getName();
    }
}
