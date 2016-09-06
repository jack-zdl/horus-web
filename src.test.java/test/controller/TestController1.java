package test.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import com.alibaba.fastjson.JSONObject;
import com.bsg.horus.controller.Controller_cpu;

public class TestController1 {
     private Controller_cpu co=new Controller_cpu();
	 @Before
	    public void setUp() throws Exception {
	       System.out.println("测试Controler_cpu");
	    }
	  @Test
	    public void testCpuMonitor(){
	    	 Map<String,Object> result=new HashMap<String,Object>();
	    	 JSONObject a=new JSONObject();
	    	 
	    	  List<Map> list;
	    	try {
	    		result=co.getDayCpuMontiorByPo("", "");
	    		System.out.println("结果="+result);
	    	} catch (Exception e) {
				System.out.println("service异常");
			}
	    }
	  @After
	    public void tearDown(){
	    	System.out.println("娴嬭瘯缁撴潫锛侊紒锛侊紒锛�");
	    }
}
