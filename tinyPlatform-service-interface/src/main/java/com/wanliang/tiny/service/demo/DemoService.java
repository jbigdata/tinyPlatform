package com.wanliang.tiny.service.demo;

import com.wanliang.tiny.entity.demo.Address;
import com.wanliang.tiny.entity.demo.User;

/**
 * Created by Administrator on 2015/11/2.
 */
public interface DemoService {
    public User findUser(Long id,String firstName,String lastName);
    public Address findAddress(Long id,String province,String city);
}
