/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.wanliang.micro.service.system;

import java.util.List;

import com.wanliang.micro.param.system.OfficeParam;
import com.wanliang.micro.result.PageResult;
import com.wanliang.micro.result.system.OfficeResult;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


/**
 * @author wanliang
 * @version 1.0
 * @date 2015/11/25
 * @modify
 * @copyright microPlatform
 */
public interface OfficeService {

	public List<OfficeResult> findAll();

	public List<OfficeResult> findList(Boolean isAll);

	public PageResult<OfficeResult> findList(OfficeParam officeParam);

	public void save(OfficeParam officeParam) ;

	public void delete(String ids);
}
