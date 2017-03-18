package test.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import com.alibaba.fastjson.JSONArray;
import com.bsg.horus.service.CpuServiceImpl;

public class TestServiceImpl {
	/**@author  zhangdelei
	 * @data 2016年6月22日上午11:10:49
	 *@Description TODO
	 */
	// private static CpuServiceImpl se=new CpuServiceImpl();
	    @Before
	    public void setUp() throws Exception {
	       System.out.println("测试开始！！！！！！");
	    }
	/**
	 * @author zhangdelei@bsgchina.com
	 * @data 2016年6月16日上午9:17:55
	 * @Description 这里一个测试controller调用
	 */
	    @Test
	    public void testCpuMonitor(){
	    	 Map<String,Object> result=new HashMap<String,Object>();
	    	 JSONArray a=new JSONArray();
	    	  List<Map> list;
	    	try {
	    	//	a=se.getTestDayCpuMontiorByPo("http://192.168.3.123:8000", "74290a3a437fcc0b9a2135cb5d35b6eae13b5fdb82418e49d2cdd173116e0a8d");
	   // 	 a=se.getTestHoursCpuMontiorByPo("http://192.168.3.123:8000","33369cd0772dbfd056f8e9cea0310cdfef55a317e4e3101d26b5089998fb5d58");
	    		System.out.println("返回信息="+a);
	    	} catch (Exception e) {
				System.out.println("service调用异常");
			}
	    }
	    /**
	     * @author zhangdelei@bsgchina.com
	     * @data 2016年6月16日下午1:32:29
	     * @Description 这是向后台看能不能获得数据
	     */
	    @After
	    public void tearDown(){
	    	System.out.println("测试结束！！！！！");
	    }
	
}
