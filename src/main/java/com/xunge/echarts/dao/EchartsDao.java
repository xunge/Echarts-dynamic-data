package com.xunge.echarts.dao;

import java.util.List;

import com.xunge.echarts.pojo.Echarts;

public interface EchartsDao {

	public List<Echarts> findAll() throws Exception;
}
