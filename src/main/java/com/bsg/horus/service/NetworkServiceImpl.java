package com.bsg.horus.service;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.bsg.horus.dao.HttpClientDaoImpl;
import com.bsg.horus.util.DateUtil;
/**@author  zhangdelei
 * @data 2016年6月30日下午4:27:40
 *@Description 这是用来做流量管理的service层
 */
@Service("networkService")
public class NetworkServiceImpl {
	@Resource
	private  HttpClientDaoImpl httpClientDao;
	/**@author  zhangdelei
	 * @data 2016年6月30日下午4:27:40
	 *@Description 这是获得一天的流量
	 */
	public JSONObject getDayNetworkMontiorByPo(String http,String node_id){
		JSONObject apiResult=new JSONObject();
		String statusurl=null;
		statusurl=http+"/v1/monitor/node/"+node_id+"/network";
		Date dNow = new Date();   
		Date dBefore = new Date();
		Calendar calendar3 = Calendar.getInstance();  
		calendar3.setTime(dNow);
		Calendar calendar4 = Calendar.getInstance();  
		calendar4.setTime(dNow);
		calendar4.add(Calendar.MINUTE, -1);  
		dNow=calendar4.getTime();
		calendar3.add(Calendar.DAY_OF_MONTH, -1);  
		dBefore = calendar3.getTime();   
		try {
			JSONObject  jsonObcject=new JSONObject();
		    jsonObcject.put("startTime", DateUtil.getIntDate( dBefore));
	        jsonObcject.put("endTime", DateUtil.getIntDate(dNow));
	        String transJson = jsonObcject.toString();
			apiResult=HttpClientDaoImpl.getDataMonitorByPost(statusurl, transJson);
		} catch (Exception e) {
			System.out.println("service_getDayCpuMontiorByPo异常");
			apiResult=null;
		}
		return apiResult;
	}
	
	public JSONObject getMonthNetworkMontiorByPo(String http,String node_id){
		JSONObject apiResult=new JSONObject();
		String statusurl=null;
		statusurl=http+"/v1/monitor/node/"+node_id+"/network_month";
		Date dNow = new Date();   
		Date dBefore = new Date();
		Calendar calendar3 = Calendar.getInstance();  
		calendar3.setTime(dNow);
		Calendar calendar4 = Calendar.getInstance();  
		calendar4.setTime(dNow);
		calendar4.add(Calendar.MINUTE, -1);  
		dNow=calendar4.getTime();
		calendar3.add(Calendar.MONTH, -1);  
		dBefore = calendar3.getTime();   
		try {
			JSONObject  jsonObcject=new JSONObject();
		    jsonObcject.put("startTime", DateUtil.getIntDate( dBefore));
	        jsonObcject.put("endTime", DateUtil.getIntDate(dNow));
	        String transJson = jsonObcject.toString();
			apiResult=HttpClientDaoImpl.getDataMonitorByPost(statusurl, transJson);
		} catch (Exception e) {
			System.out.println("service_getDayCpuMontiorByPo异常");
			apiResult=null;
		}
		return apiResult;
	}
	
	@SuppressWarnings("rawtypes")
	public JSONObject getTestData(String http,String node_id){
		Random random=new Random();
		Map<String,Float> map=new HashMap<String,Float>();
		List list=new ArrayList();
		List list1=new ArrayList();
		List list2=new ArrayList();
		JSONObject object=new JSONObject();
		JSONObject object1=new JSONObject();
		JSONObject object2=new JSONObject();
		JSONArray array=new JSONArray();
		JSONObject object3=new JSONObject();
		try {
			for(int i=0;i<1440;i++){
				map.put("input", 100*random.nextFloat());
			}
			list.add(map);
			for(int j=0;j<1440;j++){
				map.put("ouput", 100*random.nextFloat());
			}
			list.add(map);
			object.put("bond1", list);
			
			for(int i=0;i<1440;i++){
				map.put("input", 100*random.nextFloat());
			}
			list1.add(map);
			for(int j=0;j<1440;j++){
				map.put("ouput", 100*random.nextFloat());
			}
			list1.add(map);
			object1.put("bond2", list1);
			for(int i=0;i<1440;i++){
				map.put("input", 100*random.nextFloat());
			}
			list2.add(map);
			for(int j=0;j<1440;j++){
				map.put("ouput", 100*random.nextFloat());
			}
			list2.add(map);
			object2.put("bond2", list2);
			array.add(object);
			array.add(object1);
			array.add(object2);
			object3.put("result", array);
		} catch (Exception e) {
			System.out.println("Service_network_test异常");
		}
		return object3;
	}
}
