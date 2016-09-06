package com.bsg.horus.controller;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.alibaba.fastjson.JSONObject;
import com.bsg.horus.service.ServiceImpl_network;
/**@author  zhangdelei
 * @data 2016年6月30日下午4:25:29
 *@Description 这是用来获得流量的使用率——Controller
 */

@Controller
@RequestMapping("/network")
public class Controller_network {
	
	@Resource(name="service_network")
	private ServiceImpl_network service_network;
	/**@author  zhangdelei
	 * @data 2016年6月30日下午4:25:29
	 *@Description 每天的使用情况
	 */
	
	@RequestMapping(value = "/Day.do")
    @ResponseBody
    public Map<String,Object> getDayNetworkMontiorByPo(){
		 Map<String,Object> result=new HashMap<String,Object>();
		 JSONObject a=new JSONObject();
    	try {
    		a=service_network.getDayNetworkMontiorByPo("http://192.168.2.123:8000","14c11815035869cc37bccfb8c8d7154fa0de0163abbe4f0d83c7385edbb3eb41");
    		result.put("network",a);
    		System.out.println("network=="+result);
    	} catch (Exception e) {
			System.out.println("Controller异常");
		}
        return  result;
    }
	
	@RequestMapping(value = "/Week.do")
    @ResponseBody
    public Map<String,Object> getWeekNetworkMontiorByPo(){
		 Map<String,Object> result=new HashMap<String,Object>();
		 JSONObject a=new JSONObject();
    	try {
    		a=service_network.getDayNetworkMontiorByPo("http://192.168.2.123:8000","14c11815035869cc37bccfb8c8d7154fa0de0163abbe4f0d83c7385edbb3eb41");
    		result.put("network_week",a);
    		System.out.println("network_week="+result);
    	} catch (Exception e) {
			System.out.println("Controller异常");
		}
        return  result;
    }
	
	@RequestMapping(value = "/Month.do")
    @ResponseBody
    public Map<String,Object> getMonthNetworkMontiorByPo(){
		 Map<String,Object> result=new HashMap<String,Object>();
		 JSONObject a=new JSONObject();
    	try {
    		a=service_network.getDayNetworkMontiorByPo("http://192.168.2.123:8000","14c11815035869cc37bccfb8c8d7154fa0de0163abbe4f0d83c7385edbb3eb41");
    		result.put("network_month",a);
    		System.out.println("network_month="+result);
    	} catch (Exception e) {
			System.out.println("Controller异常");
		}
        return  result;
    }
	
	@RequestMapping(value = "/Test.do")
    @ResponseBody
    public Map<String,Object> getTestData(){
		 Map<String,Object> result=new HashMap<String,Object>();
    	try {
    		JSONObject a=service_network.getTestData("", "");
    		result.put("network_test",a);
    	} catch (Exception e) {
			System.out.println("Controller异常");
		}
        return  result;
    }
}
