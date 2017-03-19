package test.aop;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


/**@author  zhangdelei
 * @data 2017年3月19日上午10:15:37
 *@Description TODO
 */

public class TestLoginAspect {
	
	@Test
	public void testLoginAspect(){
		
		ApplicationContext ctx = new ClassPathXmlApplicationContext("horus-servlet.xml");
		TestAopService aop = (TestAopService) ctx.getBean("testAopService");
		System.out.println(aop.getClass().getName());
		int result = aop.add(3, 6);
		System.out.println(result);
		//System.out.println(aop.div(100, 0));

	}
	
	
}
