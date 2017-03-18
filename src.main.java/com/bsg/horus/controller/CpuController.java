package com.bsg.horus.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.bsg.horus.service.CpuServiceImpl;
/**
 * @author  zhangdelei
 * @data 2016骞�6鏈�21鏃ヤ笅鍗�3:55:59
 *@Description TODO
 */
@Controller
@RequestMapping("/v1.0/cpu")
public class CpuController {
	@Resource(name="serviceImpl")
	private CpuServiceImpl serviceImpl;
	
	@RequestMapping(value = "/Day.do")
    @ResponseBody
    public Map<String,Object> getDayCpuMontiorByPo(String http, String cpuId){
		 Map<String,Object> result=new HashMap<String,Object>();
		 JSONArray b=new JSONArray();
    	try {
    		b=serviceImpl.getDayCpuMontiorByPo("http://192.168.2.123:8000","14c11815035869cc37bccfb8c8d7154fa0de0163abbe4f0d83c7385edbb3eb41");
    		result.put("cpu",b);
    		System.out.println("结果为=="+result);
    	} catch (Exception e) {
			System.out.println("Controller异常");
		}
        return  result;
    }
	/**
	 * @author  zhangdelei
	 * @data 2016年7月4日下午1:28:46
	 *@Description 这是我测试获得-测试以时间戳的形式往前端传送数据
	 */
	@RequestMapping(value = "/TestDay.do")
    @ResponseBody
    public Map<String,Object> getTestDayCpuMontiorByPo(String http, String cpuId){
		 Map<String,Object> result=new HashMap<String,Object>();
		 JSONArray b=new JSONArray();
    	try {
    		b=serviceImpl.getTestDayCpuMontiorByPo("http://192.168.2.123:8000","14c11815035869cc37bccfb8c8d7154fa0de0163abbe4f0d83c7385edbb3eb41");
    		result.put("cpu_testday",b);
    	} catch (Exception e) {
			System.out.println("Controller异常");
		}
        return  result;
    }
    /**
     * @author  zhangdelei
     * @data 2016年6月22日上午10:50:20
     *@Description这是用来测试用的指定时间来获得数据  String http, String cpuId,HttpServletRequest request,HttpServletResponse response
     *@RequestMapping(value = "/testDay.do")
    @ResponseBody
    
    @RequestMapping(value = "/testDay.do",method=RequestMethod.GET)
    
    public @ResponseBody Map<String,Object> testGetDayCpuMontiorByPoT(){
		Map<String,Object> result=new HashMap<String, Object>();
    	 JSONArray b=new JSONArray();
    	try {
    		b=serviceImpl.getTestHoursCpuMontiorByPo("http://192.168.2.123:8000","74290a3a437fcc0b9a2135cb5d35b6eae13b5fdb82418e49d2cdd173116e0a8d");
    		System.out.println("cpu一周使用率="+b);
    		result.put("machine",b);
    		System.out.println(result);
    	} catch (Exception e) {
			System.out.println("Controller异常");
		}
        return  result;
    }
     */
	
	/**
	 * @author  zhangdelei
	 * @data 2016年6月24日下午1:55:14
	 *@Description 这里调用service，自动生成数据，
	 
	   @RequestMapping(value = "/testcpuWeek")
	    @ResponseBody
	    public Map<String,Object> cpuWeekMonitor(){
	        Map<String,Object> result=new HashMap<String, Object>();
	        try {
	            List<Map> list = serviceImpl.cpuMonitor();
	            result.put("machine", list);
	            System.out.println("数据类型="+result);
	        }catch(Exception e){
	            e.printStackTrace();
	            System.out.println("cpu监控失败");
	        }
	        return result;
	    }
	 */
	
	@RequestMapping(value = "/Week.do")
    @ResponseBody
    public Map<String,Object> getWeekCpuMontiorByPo(String http, String cpuId){
		Map<String,Object> result=new HashMap<String, Object>();
    	 JSONArray b=new JSONArray();
    	try {
    		b=serviceImpl.getWeekCpuMontiorByPo("http://192.168.2.123:8000","14c11815035869cc37bccfb8c8d7154fa0de0163abbe4f0d83c7385edbb3eb41");
    		result.put("cpu_week",b);
    	} catch (Exception e) {
			System.out.println("Controller异常");
		}
		return result;
	}
	@RequestMapping(value = "/Month.do")
    @ResponseBody
    public Map<String,Object> getMonthCpuMontiorByPo(String http, String cpuId){
		Map<String,Object> result=new HashMap<String, Object>();
   	 JSONArray b=new JSONArray();
   	try {
   		b=serviceImpl.getMonthCpuMontiorByPo("http://192.168.2.123:8000","14c11815035869cc37bccfb8c8d7154fa0de0163abbe4f0d83c7385edbb3eb41");
   		result.put("cpu_month",b);
   	} catch (Exception e) {
			System.out.println("Controller异常");
		}
		return result;
	}
	
}
