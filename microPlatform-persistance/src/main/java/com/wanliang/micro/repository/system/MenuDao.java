/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.wanliang.micro.repository.system;

import com.wanliang.micro.entity.system.Menu;
import com.wanliang.micro.persistence.CrudDao;

import java.util.List;


/**
 * 菜单DAO接口
 * @author ThinkGem
 * @version 2014-05-16
 */
public interface MenuDao extends CrudDao<Menu> {

	public List<Menu> findByParentIdsLike(Menu menu);

	public List<Menu> findByUserId(Menu menu);
	
	public int updateParentIds(Menu menu);
	
	public int updateSort(Menu menu);
	
}
