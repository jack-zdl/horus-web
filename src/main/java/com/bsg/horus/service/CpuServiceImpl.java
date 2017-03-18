package com.bsg.horus.service;

import java.util.Calendar;
import java.util.Date;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.bsg.horus.dao.HttpClientDaoImpl;
import com.bsg.horus.util.DataHandelUtil;
import com.bsg.horus.util.DateUtil;

@Service("cpuService")
public class CpuServiceImpl {

	@Resource
	private  HttpClientDaoImpl httpClientDao;
	
	@Resource
	private  DataHandelUtil dataHandelUtil;
	/**
	 * @author  zhangdelei
	 * @data 2016年7月4日上午11:02:48
	 *@Description 这个方法是用来将时间戳的数据之间返回给前台，让前台直接解析，以时间戳来返回给来显示X轴显示给前端。
	 */

	public JSONArray getTestDayCpuMontiorByPo(String http,String node_id){
		JSONObject apiResult=new JSONObject();
		JSONArray result2=new JSONArray();
		String statusurl=null;
		statusurl=http+"/v1/monitor/node/"+node_id+"/cpu";
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
		int data=DateUtil.getIntDate( dBefore);
		result2= (JSONArray) apiResult.get("usage");
		System.out.println("之前的result2="+result2);
		result2=dataHandelUtil.SimpleData(result2, data);
		System.out.println("之后的result2="+result2);
		return result2;
	}
/**
 * @author  zhangdelei
 * @data 2016年7月13日下午4:36:49
 *@Description 这是获得当前一天的cpu使用率   并进行业务处理-将没有值得时间戳-value自动设为null-为了前端能够显示数据为断点
 */
	public JSONArray getDayCpuMontiorByPo(String http,String node_id){
		JSONObject apiResult=new JSONObject();
		JSONArray result2=new JSONArray();
		String statusurl=null;
		statusurl=http+"/v1/monitor/node/"+node_id+"/cpu";
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

	public JSONArray getWeekCpuMontiorByPo(String http,String node_id){
		JSONObject apiResult=new JSONObject();
		JSONArray result2=new JSONArray();
		String statusurl=null;
		statusurl=http+"/v1/monitor/node/"+node_id+"/cpu";
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
			System.out.println("service_getWeekCpuMontiorByPo异常");
			apiResult=null;
		}
		result2= (JSONArray) apiResult.get("usage");
		return result2;
	}
	
	public JSONArray getMonthCpuMontiorByPo(String http,String node_id){
		JSONObject apiResult=new JSONObject();
		JSONArray result2=new JSONArray();
		String statusurl=null;
		statusurl=http+"/v1/monitor/node/"+node_id+"/cpu_month";
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
			System.out.println("service_getMonthCpuMontiorByPo异常");
			apiResult=null;
		}
		result2= (JSONArray) apiResult.get("usage");
		return result2;
	}
/**
 * @author  zhangdelei
 * @data 2016骞�6鏈�22鏃ヤ笂鍗�10:51:51
 *@Description 杩欐槸娴嬭瘯鐨剆ervice灞�  鎸囧畾鏃堕棿鏉ヨ幏寰楁暟鎹甤opy
 *
 public JSONArray getTestHoursCpuMontiorByPo(String http,String node_id){
		List<JSONObject> result;
		List<JSONObject> result1;
		JSONArray result2=new JSONArray();
		JSONObject Result=new JSONObject();
		JSONObject apiResult=new JSONObject();
		String statusurl;
		statusurl=http+"/v1/monitor/node/"+node_id+"/cpu";
		int dBefore=1466668920;
		int dNow=1466755320;
		try {
			JSONObject  jsonObcject=new JSONObject();
		     jsonObcject.put("startTime", dBefore);
	            jsonObcject.put("endTime",dNow);
	            String transJson = jsonObcject.toString();
			apiResult=DaoImpl.getDataMonitorByPost(statusurl, transJson);
		} catch (Exception e) {
			System.out.println("浠庡悗鍙拌幏鍙栭敊璇�");
		}
		result= (List<JSONObject>) apiResult.get("usage");
		JSONArray myJsonArray ;
		myJsonArray= new JSONArray();
		JSONObject bc=new JSONObject();
		int dBefore1;
		dBefore1=dBefore;
		for(int i=0;i<1440;i++){
			for(int b=0;b<result.size();b++){
				JSONObject jsobject=new JSONObject();
				jsobject=result.get(b);
				int bd=(Integer) jsobject.get("timestamp");
				if(dBefore1 <=bd && bd<=(dBefore1+60)){
					String objStr=JSON.toJSONString(jsobject);   //寮傚父锛侊紒锛侊紒锛�
					Map<String,Object> value = JSON.parseObject(objStr,Map.class);
					value.put("timestamp",i);//鏀瑰彉zzmm鐨勫��
					objStr=JSON.toJSONString(value);
					JSONObject vo = JSON.parseObject(objStr, JSONObject.class);
				     result2.add(vo);
				}
			}
			dBefore1=dBefore1+60;
		}
		return result2;
	}
	 public List<Map> cpuMonitor(){
	        Random random=new Random();
	        JSONObject jsonobject=new JSONObject();
	          List list=new ArrayList();
	         for(int i=0;i<1440;i++){
	             Map<String,Float> map=new HashMap<String,Float>();
	             map.put("timestamp", (float) i);
	             map.put("value",100*random.nextFloat());
	             list.add(map);
	         }
	        return list;
	    }
 */
	
	
}
