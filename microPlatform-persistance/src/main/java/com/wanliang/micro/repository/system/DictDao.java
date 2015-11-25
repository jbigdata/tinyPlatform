/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.wanliang.micro.repository.system;

import com.wanliang.micro.entity.system.Dict;
import com.wanliang.micro.persistence.CrudDao;

import java.util.List;


/**
 * 字典DAO接口
 * @author ThinkGem
 * @version 2014-05-16
 */
public interface DictDao extends CrudDao<Dict> {

	public List<String> findTypeList(Dict dict);
	
}