package com.wanliang.micro.service.demo;

import com.alibaba.dubbo.config.annotation.Reference;
import com.wanliang.micro.model.demo.Address;
import com.wanliang.micro.model.demo.User;
import org.springframework.stereotype.Service;

/**
 * Created by Administrator on 2015/11/2.
 */

public interface DemoService {
    @Reference
    public User findUser(Long id,String firstName,String lastName);
    @Reference
    public Address findAddress(Long id,String province,String city);
}
