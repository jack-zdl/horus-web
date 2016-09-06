package test.util;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;

import com.alibaba.fastjson.JSONObject;
import com.bsg.horus.service.ServiceImpl_cpu;
import com.bsg.horus.util.DateUtil;

public class TestUtil {
	/**@author  zhangdelei
	 * @data 2016年7月15日下午4:40:53
	 *@Description TODO
	 */
	 private static DateUtil se=new DateUtil();
	 	@Test
	    public void testDataUtil(){
	    	
	    	try {
	    		String a="1252639886";
	    		String b="yyyy-MM-dd HH:mm:ss";
	    		System.out.println("1");
	    		String c=se.TimeStamp2Date(a, b);
	    		System.out.println("结果等于="+c);
	    	} catch (Exception e) {
				System.out.println("Test异常");
			}
	    }
}
