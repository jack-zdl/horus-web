package com.bsg.horus.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.bsg.horus.service.MemServiceImpl;
/**
 * @author  zhangdelei
 * @data 2016年6月21日下午3:55:59
 *@Description TODO
 */
@Controller
@RequestMapping("/v1.0/mem")
public class MemController {
	@Resource(name="memServiceImpl")
	private MemServiceImpl memServiceImpl;
	
	@RequestMapping(value = "/Day.do")
    @ResponseBody
    public Map<String,Object> getDayCpuMontiorByPo(String http, String cpuId){
		 Map<String,Object> result=new HashMap<String,Object>();
		 JSONArray b=new JSONArray();
    	try {
    		b=memServiceImpl.getDayMemMontiorByPo("http://192.168.2.123:8000","14c11815035869cc37bccfb8c8d7154fa0de0163abbe4f0d83c7385edbb3eb41");
    		result.put("mem_day",b);
    		System.out.println("我是查看调用了几次menController"+result);
    	} catch (Exception e) {
			System.out.println("Controller异常");
		}
        return  result;
    }
	@RequestMapping(value = "/Week.do")
    @ResponseBody
    public Map<String,Object> getWeekContentMontiorByPo(String http, String cpuId){
		 Map<String,Object> result=new HashMap<String,Object>();
		 JSONArray b=new JSONArray();
    	try {
    		b=memServiceImpl.getWeekMemMontiorByPo("http://192.168.2.123:8000","14c11815035869cc37bccfb8c8d7154fa0de0163abbe4f0d83c7385edbb3eb41");
    		result.put("mem_week",b);
    		System.out.println("我是查看调用了几次menController_Week"+result);
    	} catch (Exception e) {
			System.out.println("Controller异常");
		}
        return  result;
	}
	@RequestMapping(value = "/Month.do")
    @ResponseBody
    public  Map<String,Object> getMonthContentMontiorByPo(String http, String cpuId){
		 Map<String,Object> result=new HashMap<String,Object>();
		 JSONArray b=new JSONArray();
    	try {
    		b=memServiceImpl.getMonthMemMontiorByPo("http://192.168.2.123:8000","14c11815035869cc37bccfb8c8d7154fa0de0163abbe4f0d83c7385edbb3eb41");
    		result.put("mem_month",b);
    		System.out.println("我是查看调用了几次menController_Month"+result);
    	} catch (Exception e) {
			System.out.println("Controller异常");
		}
        return  result;
	}
	
}

