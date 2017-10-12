package com.xunge.echarts.service.impl;

import java.util.ArrayList;
import java.util.List;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xunge.echarts.dao.EchartsDao;
import com.xunge.echarts.pojo.Echarts;
import com.xunge.echarts.service.IEchartsService;


@Service
public class EchartsServiceImpl implements IEchartsService{

    @Autowired
    EchartsDao echartsDao;
    
    
	@Override
	public JSONArray queryData() throws Exception {
		List<Echarts> newList = new ArrayList<Echarts>();
		newList = echartsDao.findAll();
		//调用JSONArray.fromObject方法把array中的对象转化为JSON格式的数组
        JSONArray json=JSONArray.fromObject(newList);
		return json;
	}

}
