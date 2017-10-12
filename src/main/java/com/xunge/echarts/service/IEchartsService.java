package com.xunge.echarts.service;

import net.sf.json.JSONArray;

import com.xunge.echarts.pojo.Echarts;

public interface IEchartsService {
	public JSONArray queryData() throws Exception;
}
