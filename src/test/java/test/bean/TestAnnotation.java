package test.bean;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.bsg.horus.controller.CpuController;
import com.bsg.horus.dao.HttpClientDaoImpl;

import com.bsg.horus.service.CpuServiceImpl;

public class TestAnnotation {
	/**@author  zhangdelei
	 * @data 2017年3月18日下午9:05:36
	 *@Description TODO
	 */
	@Test
	public void testAnnotation(){
		
		ApplicationContext ctx = new ClassPathXmlApplicationContext("beans-annotation.xml");
		
//		HttpClientDaoImpl httpClientDao = (HttpClientDaoImpl) ctx.getBean("httpClientDao");
//		System.out.println(httpClientDao);
//		
//		TestService cpuService = (TestService) ctx.getBean("testService");
//		System.out.println(cpuService);
		
		TestController cpuController = (TestController) ctx.getBean("testController");
		System.out.println(cpuController);
		
//		TestComponent component = (TestComponent) ctx.getBean("testComponent");
//		System.out.println(component);
	}
}
