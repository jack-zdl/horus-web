package com.bsg.horus.util;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
@Component("dataHandel")
public class DataHandel {
	/**@author  zhangdelei
	 * @data 2016年7月13日下午4:43:49
	 *@Description 这是专门来做数据处理的-一般的数据处理使没有值得时间戳的值设为null，这样就可以在前端显示断点
	 */
	public JSONArray SimpleData(JSONArray result,int dBefore){
		
		JSONArray result2=new JSONArray();
		JSONArray myJsonArray ;
		myJsonArray= new JSONArray();
		JSONObject bc=new JSONObject();
		int dBefore1=dBefore;
		
			
			for(int b=0;b<result.size();b++){
				for(int i=0;i<1440;i++){
				JSONObject jsobject=new JSONObject();
				jsobject=(JSONObject) result.get(b);
				int bd=(Integer) jsobject.get("timestamp");
				if(dBefore1 <=bd && bd<=(dBefore1+60)){
					String objStr=JSON.toJSONString(jsobject);   //寮傚父锛侊紒锛侊紒锛�
					Map<String,Object> value = JSON.parseObject(objStr,Map.class);
					value.put("timestamp",i);//鏀瑰彉zzmm鐨勫��
					objStr=JSON.toJSONString(value);
					JSONObject vo = JSON.parseObject(objStr, JSONObject.class);
				     result2.add(vo);
			
				}else{
					Map<String,Object> value =new HashMap<String,Object>();
					value.put("timestamp",dBefore1);//鏀瑰彉zzmm鐨勫��
					value.put("value", null);
//					JSONObject vo = JSON.parseArray(value, Map.class);
					System.out.println("进入数据处理层");
				     result2.add(value);
					dBefore1=dBefore1+60;
				}
			
			}
			
		}
		return result2;
	}
	
}
