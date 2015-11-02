package com.wanliang.tiny.service.impl.demo;

import com.wanliang.tiny.entity.demo.Address;
import com.wanliang.tiny.entity.demo.User;
import com.wanliang.tiny.service.demo.DemoService;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

/**
 *  test service
 */
@Service
public class DemoServiceImpl implements DemoService {
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
}
