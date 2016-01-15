package com.wanliang.micro.service.system;

import com.wanliang.micro.param.system.UserParam;
import com.wanliang.micro.result.system.MenuResult;
import com.wanliang.micro.service.BaseService;

import java.util.List;

/**
 * @author wanliang
 * @version 1.0
 * @date 2016/1/2
 * @modify
 * @copyright microPlatform
 */
public interface MenuService  {

    public List<MenuResult> loadParentMenu(UserParam user);

    public List<MenuResult> getMenus(String menuId);
}
