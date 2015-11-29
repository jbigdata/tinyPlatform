/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.wanliang.micro.repository.demo;


import com.wanliang.micro.entity.demo.Test;
import com.wanliang.micro.entity.system.Area;
import com.wanliang.micro.persistence.TreeDao;

import java.util.List;

/**
 * @author wanliang
 * @version 1.0
 * @date 2015/11/18
 * @modify
 * @copyright tinyPlatform
 */
public interface TestRepository {

    public List<Test> test();
	
}
