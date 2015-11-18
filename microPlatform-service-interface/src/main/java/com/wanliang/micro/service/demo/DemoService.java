package com.wanliang.micro.service.demo;

import com.wanliang.micro.entity.demo.Address;
import com.wanliang.micro.entity.demo.User;

/**
 * Created by Administrator on 2015/11/2.
 */
public interface DemoService {
    public User findUser(Long id,String firstName,String lastName);
    public Address findAddress(Long id,String province,String city);
}
