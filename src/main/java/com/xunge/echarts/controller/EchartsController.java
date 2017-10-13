package com.xunge.echarts.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.xunge.echarts.service.IEchartsService;


@Controller
public class EchartsController {

	@Autowired
	IEchartsService echartsService;
	
	
	@RequestMapping("echarts")
	public ModelAndView echarts(){
		ModelAndView mv = new ModelAndView("echarts");
		return mv;
	}
	
	@RequestMapping("echartsJson")
	public void echartsJson(HttpServletResponse response) throws Exception {
		JSONArray json = echartsService.queryData();
        //System.out.println(json.toString());
        //返回给前段页面
        PrintWriter out = response.getWriter();  
        out.println(json);  
        out.flush();  
        out.close();   
	}
}
