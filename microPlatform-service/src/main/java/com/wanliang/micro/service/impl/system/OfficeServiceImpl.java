/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.wanliang.micro.service.impl.system;

import com.alibaba.dubbo.config.annotation.Service;
import com.wanliang.micro.entity.system.Office;
import com.wanliang.micro.param.system.OfficeParam;
import com.wanliang.micro.persistence.Page;
import com.wanliang.micro.repository.system.OfficeRepository;
import com.wanliang.micro.result.PageResult;
import com.wanliang.micro.result.system.OfficeResult;
import com.wanliang.micro.service.impl.BaseServiceImpl;
import com.wanliang.micro.service.system.OfficeService;
import org.springframework.beans.factory.annotation.Autowired;

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
public class OfficeServiceImpl extends BaseServiceImpl<Office> implements OfficeService {

    @Autowired
    private OfficeRepository officeRepository;

    @Override
    public List<OfficeResult> findAll() {

        return new ArrayList<OfficeResult>();
    }

    @Override
    public List<OfficeResult> findList(Boolean isAll) {
        return new ArrayList<OfficeResult>();
    }

    @Override
    public PageResult<OfficeResult> findList(OfficeParam officeParam) {
        Office office=new Office();
        Page<Office> page=new Page<>(officeParam.getCurPage(),officeParam.getRepage(),officeParam.getPageSize(),officeParam.getSortName(),-2);
        office.setPage(page);
        List<Office> officeList= officeRepository.findList(office);
        List<OfficeResult> resultList=new ArrayList<>();
        page.setList(officeList);
        for (Office o:officeList){
            OfficeResult result=new OfficeResult();
            result.setArea(o.getArea().getName());
            result.setName(o.getName());
            result.setZipCode(o.getZipCode());
            result.setCode(o.getCode());
            result.setType(o.getType());
            resultList.add(result);
        }
        PageResult<OfficeResult> pageResult=new PageResult<>();
        pageResult.setData(resultList);
        pageResult.setSuccess(true);
        pageResult.setTotalRows(page.getCount());
        pageResult.setCurPage(page.getPageNo());
        return pageResult;
    }

    @Override
    public void save(OfficeParam office) {

    }

    @Override
    public void delete(String ids) {

    }
}
