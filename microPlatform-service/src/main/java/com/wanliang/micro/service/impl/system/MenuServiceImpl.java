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
import org.springframework.util.StringUtils;

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
public class MenuServiceImpl extends BaseServiceImpl<Menu> implements MenuService {

    @Autowired
    private MenuRepository menuRepository;

    @Autowired
    private RoleRepository roleRepository;

    @Override
    public List<MenuResult> loadParentMenu(UserParam user) {
        List<Menu> menuList = this.loadAllMenu();
        user.setAdmin(false);
        List<MenuResult> menuResults = new ArrayList<>();

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
            menuResult.setId(menu.getId());
            menuResults.add(menuResult);
        }
        return menuResults;
    }

    @Override
    public List<MenuResult> getMenus(String menuId) {
        List<Menu> menuList = this.loadAllMenu();
        List<MenuResult> menuResults = new ArrayList<>();

        for (Menu menu : menuList) {
            String mId = "";
            if (menu.getParentId().equals(menuId) && !menuId.equals(menu.getId()) && "1".equals(menu.getIsShow())) {
//                MenuResult menuResult = new MenuResult();
//                menuResult.setName(menu.getName());
//                menuResult.setHref(menu.getHref());
//                menuResult.setIcon(menu.getIcon());
//                menuResult.setParentId(menu.getParentId());
//                menuResults.add(menuResult);
                mId = menu.getId();
            }
            if (!StringUtils.isEmpty(mId)) {
                for (Menu menu1 : menuList) {
                    if (menu1.getParentId().equals(mId) && !mId.equals(menu1.getId()) && "1".equals(menu1.getIsShow())) {
                        MenuResult menuResult = new MenuResult();
                        menuResult.setName(menu1.getName());
                        menuResult.setHref(menu1.getHref());
                        menuResult.setIcon(menu1.getIcon());
                        menuResult.setParentId(menu1.getParentId());
                        menuResults.add(menuResult);
                    }
                }
            }
        }

        return menuResults;
    }

    @Cacheable(value = "menucache", keyGenerator = "loadAllMenu")
    private List<Menu> loadAllMenu() {
        return menuRepository.findAllList(new Menu());
    }

}
