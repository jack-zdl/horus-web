package com.bsg.horus.controller;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.alibaba.fastjson.JSONObject;
import com.bsg.horus.service.ServiceImpl_rootdir;
/**@author  zhangdelei
 * @data 2016年6月30日下午1:39:08
 *@Description 这是root目录使用率检测的Controller层
 */
@Controller
@RequestMapping("/rootdir")
public class Controller_rootdir {
	@Resource(name="service_rootdir_Impl")
	private  ServiceImpl_rootdir  service_rootdir_Impl;
/**
 * @author  zhangdelei
 * @data 2016年6月30日下午2:13:45
 *@Description 这是获得rootdir目录使用率的一天的数据
 */
	@RequestMapping(value = "/Day.do")
    @ResponseBody
    public Map<String,JSONObject> getDayRootMontiorByPo(){
		 Map<String,JSONObject> result=new HashMap<String,JSONObject>();
		 JSONObject a=new JSONObject();
    	try {
    		a=service_rootdir_Impl.getDayRootdirMontiorByPo("http://192.168.2.123:8000","14c11815035869cc37bccfb8c8d7154fa0de0163abbe4f0d83c7385edbb3eb41");
    		result.put("rootdir",a);
    		System.out.println("rootdir="+result);
    	} catch (Exception e) {
			System.out.println("Controller异常");
		}
        return  result;
    }
	/**
	 * @author  zhangdelei
	 * @data 2016年6月30日下午2:13:45
	 *@Description 这是获得rootdir目录使用率的一周的数据
	 */
	@RequestMapping(value = "/Week.do")
    @ResponseBody
    public Map<String,Object> getWeekRootMontiorByPo(){
		 Map<String,Object> result=new HashMap<String,Object>();
		 JSONObject a=new JSONObject();
    	try {
    		a=service_rootdir_Impl.getWeekRootdirMontiorByPo("http://192.168.2.123:8000","14c11815035869cc37bccfb8c8d7154fa0de0163abbe4f0d83c7385edbb3eb41");
    		result.put("rootdir_week",a);
    		System.out.println("rootdir_week="+result);
    	} catch (Exception e) {
			System.out.println("Controller异常");
		}
        return  result;
    }
	/**
	 * @author  zhangdelei
	 * @data 2016年6月30日下午2:13:45
	 *@Description 这是获得rootdir目录使用率的一月的数据
	 */
	@RequestMapping(value = "/Month.do")
    @ResponseBody
    public Map<String,Object> getMonthRootMontiorByPo(){
		 Map<String,Object> result=new HashMap<String,Object>();
		 JSONObject a=new JSONObject();
    	try {
    		a=service_rootdir_Impl.getMonthRootdirMontiorByPo("http://192.168.2.123:8000","14c11815035869cc37bccfb8c8d7154fa0de0163abbe4f0d83c7385edbb3eb41");
    		result.put("rootdir_month",a);
    		System.out.println("rootdir_month="+result);
    	} catch (Exception e) {
			System.out.println("Controller异常");
		}
        return  result;
    }
}
