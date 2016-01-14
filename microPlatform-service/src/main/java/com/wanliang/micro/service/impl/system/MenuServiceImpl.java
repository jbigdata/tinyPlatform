package com.wanliang.micro.service.impl.system;

import com.alibaba.dubbo.config.annotation.Service;
import com.wanliang.micro.entity.system.Menu;
import com.wanliang.micro.entity.system.Role;
import com.wanliang.micro.param.system.UserParam;
import com.wanliang.micro.repository.system.MenuRepository;
import com.wanliang.micro.repository.system.RoleRepository;
import com.wanliang.micro.result.system.MenuResult;
import com.wanliang.micro.service.impl.BaseServiceImpl;
import com.wanliang.micro.service.system.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;

import java.util.ArrayList;
import java.util.List;

/**
 * @author wanliang
 * @version 1.0
 * @date 2016/1/2
 * @modify
 * @copyright microPlatform
 */
@Service
public class MenuServiceImpl extends BaseServiceImpl<Menu> implements MenuService{

    @Autowired
    private MenuRepository menuRepository;

    @Autowired
    private RoleRepository roleRepository;

    @Override
    @Cacheable(value = "userMenucache",keyGenerator = "#user.getId()")
    public List<MenuResult> loadParentMenu(UserParam user){
        List<Menu> menuList=this.loadAllMenu();
        List<MenuResult> menuResults = new ArrayList<>();
        if (menuList == null) {
            if (user.isAdmin()) {
                menuList = menuRepository.findAllList(new Menu());
            } else {
                Menu m = new Menu();
                m.setUserId(user.getId());
                menuList = menuRepository.findByUserId(m);
            }

            for (Menu menu : menuList) {
                MenuResult menuResult = new MenuResult();
                menuResult.setName(menu.getName());
                menuResult.setHref(menu.getHref());
                menuResult.setParentId(menu.getParentId());
                menuResults.add(menuResult);
            }
        }
        return menuResults;
    }

    @Cacheable(value = "menucache")
    private List<Menu> loadAllMenu(){
      return   menuRepository.findAllList(new Menu());
    }

}
