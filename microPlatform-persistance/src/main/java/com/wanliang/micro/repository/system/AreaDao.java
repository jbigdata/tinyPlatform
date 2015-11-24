/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.wanliang.micro.repository.system;


import com.wanliang.micro.common.util.persistence.TreeDao;
import com.wanliang.micro.common.util.persistence.annotation.MyBatisDao;
import com.wanliang.micro.entity.system.Area;

/**
 * 区域DAO接口
 * @author ThinkGem
 * @version 2014-05-16
 */
@MyBatisDao
public interface AreaDao extends TreeDao<Area> {
	
}
