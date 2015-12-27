/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.wanliang.micro.repository.system;

import com.wanliang.micro.entity.system.Dict;
import com.wanliang.micro.persistence.BaseRepository;

import java.util.List;


/**
 * @author wanliang
 * @version 1.0
 * @date 2015/11/18
 * @modify
 * @copyright tinyPlatform
 */
public interface DictRepository extends BaseRepository<Dict> {

	public List<String> findTypeList(Dict dict);
	
}
