package com.bsg.horus.service;

import java.util.Calendar;
import java.util.Date;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.bsg.horus.dao.HttpClientDaoImpl;
import com.bsg.horus.util.DateUtil;
@Service("memService")
public class MemServiceImpl {
	/**@author  zhangdelei
	 * @data 2016年6月29日下午4:32:56
	 *@Description 这是内存使用的service层
	 */
	@Resource
	private  HttpClientDaoImpl httpClientDao;
	/**
	 * @author  zhangdelei
	 * @data 2016年6月30日上午9:28:11
	 *@Description 这是获得当前一天的时间内存使用率
	 */
	public JSONArray getDayMemMontiorByPo(String http,String node_id){
		JSONObject apiResult=new JSONObject();
		JSONArray result2=new JSONArray();
		String statusurl=null;
		statusurl=http+"/v1/monitor/node/"+node_id+"/mem";
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
		result2= (JSONArray) apiResult.get("usage");
		
		return result2;
	}
	/**
	 * @author  zhangdelei
	 * @data 2016年6月30日上午9:28:54
	 *@Description 这是获得当前一周的内存使用率
	 
	 int dBefore1;
		dBefore1=bb;
		for(int i=0;i<1440;i++){
			for(int b=0;b<result.size();b++){
				JSONObject jsobject=new JSONObject();
				jsobject=result.get(b);
				int bd=(Integer) jsobject.get("timestamp");
				if(dBefore1 <=bd && bd<=(dBefore1+60)){
					String objStr=JSON.toJSONString(jsobject);  
					Map<String,Object> value = JSON.parseObject(objStr,Map.class);
					value.put("timestamp",i);
					objStr=JSON.toJSONString(value);
					JSONObject vo = JSON.parseObject(objStr, JSONObject.class);
				     result2.add(vo);
				}
			}
			dBefore1=dBefore1+60;
		}
	 */
	public JSONArray getWeekMemMontiorByPo(String http,String node_id){
		JSONObject apiResult=new JSONObject();
		JSONArray result2=new JSONArray();
		String statusurl=null;
		statusurl=http+"/v1/monitor/node/"+node_id+"/mem";
		Date dNow = new Date();   
		Date dBefore = new Date();
		Calendar calendar3 = Calendar.getInstance();  
		calendar3.setTime(dNow);
		Calendar calendar4 = Calendar.getInstance();  
		calendar4.setTime(dNow);
		calendar4.add(Calendar.MINUTE, -1);  
		dNow=calendar4.getTime();
		calendar3.add(Calendar.WEEK_OF_MONTH, -1);  
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
		result2= (JSONArray) apiResult.get("usage");
		
		return result2;
	}
	/**
	 * @author  zhangdelei
	 * @data 2016年6月30日上午9:30:14
	 *@Description 这是获得当前时间一月的内存使用率
	 */
	public JSONArray getMonthMemMontiorByPo(String http,String node_id){
		JSONObject apiResult=new JSONObject();
		JSONArray result2=new JSONArray();
		String statusurl=null;
		statusurl=http+"/v1/monitor/node/"+node_id+"/mem";
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
		result2= (JSONArray) apiResult.get("usage");
		return result2;
	}
}
