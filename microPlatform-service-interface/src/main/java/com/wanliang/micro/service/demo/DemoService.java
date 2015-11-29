package com.wanliang.micro.service.demo;

import com.alibaba.dubbo.config.annotation.Reference;
import com.wanliang.micro.result.demo.Address;
import com.wanliang.micro.result.demo.User;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2015/11/2.
 */

public interface DemoService {
    @Reference
    public User findUser(Long id,String firstName,String lastName);
    @Reference
    public Address findAddress(Long id,String province,String city);

    @Reference
    public String getAll();
}
