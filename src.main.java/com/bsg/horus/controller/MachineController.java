package com.bsg.horus.controller;

import java.util.HashMap;
import java.util.Map;
import javax.annotation.Resource;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.bsg.horus.service.MachineServiceImpl;
/**
 * @author  zhangdelei
 * @data 2016年7月26日下午10:27:02
 *@Description TODO
 */
@Controller
@RequestMapping("/v1.0/horus")
public class MachineController {
	/**@author  zhangdelei
	 * @data 2016年7月26日下午9:59:33
	 *@Description 这个Logger跟我之前的logger不一样，之前是org.apache.commons.logging.Log;现在不是，但是应该受伤一样的用法
	 *？？？
	 */
	@Resource(name="service_machine")
	private MachineServiceImpl service_machine;
	//private static Log log = LogFactory.getLog(MachineController.class);
	
	 @RequestMapping(value = "/machine/queryMachines",method=RequestMethod.POST)
	 @ResponseBody
	    public JSONArray queryMachines() {
	        Map map = new HashMap();
	        JSONObject result=new JSONObject();
	        String url="192.168.2.121:4000";
	        JSONArray array=new JSONArray();
	        try{
	        	//引入service层
	        	result=service_machine.getJqueryMachine(url);
//	        	log.info("进入了Machine的Controller");
//	        	log.info("查询主机==result==="+result);
	        	array=result.getJSONArray("data");
//	        	log.info("数组结果="+array);
	            map.put("data",result);
	        }catch (Exception e){
	            e.printStackTrace();
	           // log.error("物理机查询失败，异常为:",e);
	            map.put("result",-1);
	        }
	        return array;
	    }
	 @RequestMapping(value = "/machine/queryServices",method=RequestMethod.POST)
	 @ResponseBody
	 public JSONArray getServices(){
		 String url="192.168.2.121:4000";
		 JSONObject result=new JSONObject();
		 JSONArray array=new JSONArray();
		 try{
			 result=service_machine.getJqueryServices(url);
			// log.info("查询Service实例服务==result==="+result);
			 array=result.getJSONArray("data");
		 }catch(Exception e){
			 e.printStackTrace();
	       //  log.error("物理机查询失败，异常为:",e);
		 }
		 return array;
	 }
	 
}
