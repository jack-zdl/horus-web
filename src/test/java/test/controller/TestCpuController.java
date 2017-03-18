package test.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import com.alibaba.fastjson.JSONObject;
import com.bsg.horus.controller.CpuController;

public class TestCpuController {
	/**@author  zhangdelei
	 * @data 2016年6月22日上午10:56:44
	 *@Description 这里是用来测试Controller_cpu
	 */
	 private HttpServletRequest request;    
	    private HttpServletResponse response;      
    private CpuController co ;    
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
		    	//	a=co.testGetDayCpuMontiorByPoT();
		    		System.out.println("结果="+result);
		    	} catch (Exception e) {
					System.out.println("Test异常");
				}
		    }
		  @After
		    public void tearDown(){
		    	System.out.println("娴嬭瘯缁撴潫锛侊紒锛侊紒锛�");
		    }
}
