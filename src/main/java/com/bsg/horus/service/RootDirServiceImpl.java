package com.bsg.horus.service;

import java.util.Calendar;
import java.util.Date;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.alibaba.fastjson.JSONObject;
import com.bsg.horus.dao.HttpClientDaoImpl;
import com.bsg.horus.util.DateUtil;
/**@author  zhangdelei
 * @data 2016年6月30日下午1:43:20
 *@Description 这是root目录使用率service层
 */
@Service("rootDirService")
public class RootDirServiceImpl {
	
	@Resource
	private  HttpClientDaoImpl httpClientDao;
/**
 * @author  zhangdelei
 * @data 2016年6月30日下午1:45:14
 *@Description 这个是获得目录使用率一天的信息
 */
	public JSONObject getDayRootdirMontiorByPo(String http,String node_id){
		JSONObject apiResult=new JSONObject();
		String statusurl=null;
		statusurl=http+"/v1/monitor/node/"+node_id+"/rootdir";
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
	/**
	 * @author  zhangdelei
	 * @data 2016年6月30日下午1:46:31
	 *@Description 这是获得root一周使用率
	 */
	public JSONObject getWeekRootdirMontiorByPo(String http,String node_id){
		JSONObject apiResult=new JSONObject();
		String statusurl=null;
		statusurl=http+"/v1/monitor/node/"+node_id+"/rootdir";
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
		return apiResult;
	}
	/**
	 * @author  zhangdelei
	 * @data 2016年6月30日下午1:47:07
	 *@Description 这是获得root目录一月使用率
	 */
	public JSONObject getMonthRootdirMontiorByPo(String http,String node_id){
		JSONObject apiResult=new JSONObject();
		String statusurl=null;
		statusurl=http+"/v1/monitor/node/"+node_id+"/rootdir_month";
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
}
