package com.bsg.horus.service;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONObject;
import com.bsg.horus.dao.DaoImpl;
@Service("service_machine")
public class MachineServiceImpl {
	/**@author  zhangdelei
	 * @data 2016年7月27日下午5:49:35
	 *@Description 这里是查询物理机(查询主机)的service层  负责逻辑处理
	 */
//	private static Log log = LogFactory.getLog(MachineServiceImpl.class);

	@Resource(name="daoImpl")
	private  DaoImpl daoImpl;
	/**
	 * @author  zhangdelei
	 * @data 2016年7月27日下午6:06:23
	 *@Description 查询当前使用的主机
	 */
	public  JSONObject getJqueryMachine(String url){
		String fullURL="http://"+url+"/v1.0/nodes";
		JSONObject result=new JSONObject();
		try{
			result=daoImpl.getqueryMachinesByGet(fullURL);
		}catch(Exception e){
			  e.printStackTrace();
	//		  log.info("Service_machine出现异常，   异常为"+e);
		}
		
		return result;
	}
	
	public  JSONObject getJqueryServices(String url){
		String fullURL="http://"+url+"/v1.0/services";
		JSONObject result=new JSONObject();
		try{
			result=daoImpl.getqueryMachinesByGet(fullURL);
		}catch(Exception e){
			  e.printStackTrace();
//			  log.info("Service_Services出现异常，   异常为"+e);
		}
		
		return result;
	}
	
}
