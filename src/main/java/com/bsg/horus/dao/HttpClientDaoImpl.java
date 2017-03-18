package com.bsg.horus.dao;
/*
 *@author zhangdelei@bsgchina.com
 *@data 2016��6��15������9:45:33
 *@Description TODO
 */

import java.io.InputStream;
import java.util.Date;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpMethod;
import org.apache.commons.httpclient.methods.GetMethod;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.commons.httpclient.methods.RequestEntity;
import org.apache.commons.httpclient.methods.StringRequestEntity;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Repository;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;




@Repository(value="httpClientDao")
public class HttpClientDaoImpl  {
	  /**
	   * @author zhangdelei@bsgchina.com
	   * @data 2016��6��16������12:45:46
	   * transJson  是post传递的参数 	uri是传递过来的地址
	   * @Description this is Dao of  get all data 
	   * @param 这是是真实的DAO获得数据 这是用一种老的方式来获得后台数据-org.apache.commons.httpclient.HttpClient;
	   * @return
	   */
	public void save(){
		System.out.println("dao save");
	}
	private static Log log = LogFactory.getLog(HttpClientDaoImpl.class);
	public static JSONObject getDataMonitorByPost(String uri,String transJson){
		       JSONObject result=new JSONObject();
		       JSONArray array=new JSONArray();
		       PostMethod postMethod;
		       String a="";
//		       for(int i = 0; i < 100; i++){
//		    	   JSONObject v1 = new JSONObject();
//			       v1.put("timestamp", 1470063540 + i*300);
//			       int a1=(int) (Math.random()*100);
//			       v1.put("value", a1);
//			       array.add(v1);
//		       }
//		      
//		       result.put("usage", array);
	       try{
				HttpClient client=new HttpClient();    //老版的httpclient
	            postMethod=new PostMethod(uri);   
	            RequestEntity se = new StringRequestEntity(transJson, "application/json", "UTF-8");
	            postMethod.setRequestEntity(se);
	            int statusCode=client.executeMethod(postMethod);
	            a=getResponseString(postMethod.getResponseBodyAsStream());   //有可能返回一个正常的json对象 也有可能返回一个字符串** error\n
	            try {
	            	result=JSONObject.parseObject(a);
				} catch (Exception e) {
					/**@author  zhangdelei
					 * @data 2016年7月21日下午3:26:27
					 *@Description 这里是对返回的值进行判断，是否可以转换成jsonObject  有可能是到达后台API但是后台没值 返回
					 *500 返回 ** error 通过键result的值进行判断 为 0 就是正常json对象 为其他就为不正常
					 */
					Date date=new Date();
					log.info("getApiData  "+a);
				}     //如果正常的json值就可以转，但是如果不是，就出现错误 
	            if(statusCode==200){
	               // result.put("result","0");
	            	
	            }else{
	                result.put("result",statusCode);
	            }
	        }catch(Exception e){
	        	//如果出现异常，说明代码出现问题，可能无法访问后台，后台关闭通过result的值为-来判断
	            e.printStackTrace();
	            result.put("msg",e);
	            result.put("result","-1");
	        }finally {
	        	postMethod=new PostMethod();  
	        	postMethod.releaseConnection();
			}
	        return result;
	    }
	/**
	 * @author  zhangdelei
	 * @data 2016年7月27日下午4:42:23
	 *@Description 这是用get方式来获取后台API
	 * org.apache.commons.httpclient.HttpClient;
	 */
	public static JSONObject getqueryMachinesByGet(String uri){
	       JSONObject result=new JSONObject();
	       HttpMethod getmethod;  
//	       PostMethod postMethod;
	       String a="";
    try{
    	
			HttpClient client=new HttpClient();    //老版的httpclient
			getmethod=new GetMethod(uri);   
//         RequestEntity se = new StringRequestEntity(transJson, "application/json", "UTF-8");
///         postMethod.setRequestEntity(se);
			int statusCode=client.executeMethod(getmethod);  //提交get请求
//			a=getResponseString(getmethod.getResponseBodyAsStream());   //有可能返回一个正常的json对象 也有可能返回一个字符串** error\n
			a =getmethod.getResponseBodyAsString();
			log.info("打印信息，获得的后台API响应="+a);
			log.info("返回的状态码"+statusCode);
         try {
				//result=JSONObject.parseObject(a);
        	 JSONArray array = (JSONArray) JSONArray.parse(a); 
        	 log.info(array);
        	 result.put("data", array);
			} catch (Exception e) {
				/**@author  zhangdelei
				 * @data 2016年7月21日下午3:26:27
				 *@Description 这里是对返回的值进行判断，是否可以转换成jsonObject  有可能是到达后台API但是后台没值 返回
				 *500 返回 ** error 通过键result的值进行判断 为 0 就是正常json对象 为其他就为不正常
				 */
				Date date=new Date();
				log.info(""+date+"getApiData  "+a);
			}     //如果正常的json值就可以转，但是如果不是，就出现错误 
         if(statusCode==200){
             result.put("result","0");
         }else{
             result.put("result",statusCode);
         }
     }catch(Exception e){
     	//如果出现异常，说明代码出现问题，可能无法访问后台，后台关闭通过result的值为-来判断
         e.printStackTrace();
         result.put("msg",e);
         result.put("result","-1");
     }finally {
    	 getmethod=new GetMethod();  
    	 getmethod.releaseConnection();
		}
     return result;
 }
	/**
	 * @author  zhangdelei
	 * @data 2016年6月30日上午10:38:50
	 *@Description 这是用来处理'com.alibaba.fastjson.JSONException: syntax error, pos 1' bug 
	 *
	 public static JSONObject getTestDataMonitorByPost(String uri,String transJson){
	       JSONObject result=null;
	       JSONArray result2=new JSONArray();
    try{
         HttpClient client=new HttpClient();  
         PostMethod postMethod=new PostMethod(uri);   
         RequestEntity se = new StringRequestEntity(transJson, "application/json", "UTF-8");
         postMethod.setRequestEntity(se);
        
         int statusCode=client.executeMethod(postMethod);
         result= JSONObject.parseObject(getResponseString(postMethod.getResponseBodyAsStream()));
         System.out.println("得到结果="+result);
         if(statusCode==HttpStatus.SC_OK){
             result.put("result","0");
         }else{
        	 result=new JSONObject();
             result.put("result",statusCode);
         }
     }catch(Exception e){
         e.printStackTrace();
         result.put("msg",e);
         result.put("result","-1");
         System.out.println("dao异常");
     }
     return result;
 }
	 */
	
	

	/**
	  * @author  zhangdelei
	  * @data 2016年6月30日上午10:07:20
	  *@Description TODO
	  */
	  private static  String getResponseString( InputStream inputStream ){
	        if(inputStream==null){
	            return null;
	        }
	        StringBuffer sb=new StringBuffer();
	        try {
	            byte[] b = new byte[1024];
	            int r_len = 0;
	            while ((r_len = inputStream.read(b)) > 0) {
	                sb.append(new String(b, 0, r_len,"UTF-8"));
	            }
	        }catch (Exception e){
	            e.printStackTrace();
	            return null;
	        }finally {
	            try{
	                inputStream.close();
	            }catch (Exception e){
	                e.printStackTrace();
	            }
	        }
	        return sb.toString();
	    }
}
