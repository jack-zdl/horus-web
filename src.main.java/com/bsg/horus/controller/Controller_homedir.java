package com.bsg.horus.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.bsg.horus.service.ServiceImpl_homedir;
/**@author  zhangdelei
 * @data 2016年6月30日下午2:15:59
 *@Description 这是获得home目录使用率的Controller
 */
@Controller
@RequestMapping("/homedir")
public class Controller_homedir {
	/**@author  zhangdelei
	 * @data 2016年6月30日下午2:15:59
	 *@Description TODO
	 */
	@Resource(name="service_homedir")
	private ServiceImpl_homedir service_homedir;
	
	@RequestMapping(value = "/Day.do")
    @ResponseBody
    public Map<String,Object> getDayHomedirMontiorByPo(String http, String cpuId){
		 Map<String,Object> result=new HashMap<String,Object>();
		 JSONObject a=new JSONObject();
    	try {
    		a=service_homedir.getDayHomedirMontiorByPo("http://192.168.2.123:8000","14c11815035869cc37bccfb8c8d7154fa0de0163abbe4f0d83c7385edbb3eb41");
    		result.put("homedir",a);
    	} catch (Exception e) {
			System.out.println("Controller异常");
		}
        return  result;
    }
	
	@RequestMapping(value = "/Week.do")
    @ResponseBody
    public Map<String,Object> getWeekHomedirMontiorByPo(String http, String cpuId){
		 Map<String,Object> result=new HashMap<String,Object>();
		 JSONObject a=new JSONObject();
    	try {
    		a=service_homedir.getWeekHomedirMontiorByPo("http://192.168.2.123:8000","14c11815035869cc37bccfb8c8d7154fa0de0163abbe4f0d83c7385edbb3eb41");
    		result.put("homedir_week",a);
    	} catch (Exception e) {
			System.out.println("Controller异常");
		}
        return  result;
    }
	
	@RequestMapping(value = "/Month.do")
    @ResponseBody
    public Map<String,Object> getMonthHomedirMontiorByPo(String http, String cpuId){
		 Map<String,Object> result=new HashMap<String,Object>();
		 JSONObject a=new JSONObject();
    	try {
    		a=service_homedir.getMonthHomedirMontiorByPo("http://192.168.2.123:8000","14c11815035869cc37bccfb8c8d7154fa0de0163abbe4f0d83c7385edbb3eb41");
    		result.put("homedir_month",a);
    	} catch (Exception e) {
			System.out.println("Controller异常");
		}
        return  result;
    }
}
