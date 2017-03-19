package test.bean;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.bsg.horus.entity.SpringPersonEntity;

public class TestSpringPerson {
	/**@author  zhangdelei
	 * @data 2017年3月18日下午5:02:29
	 *@Description TODO
	 */
	@Test
	public void testBean(){
	//	ApplicationContext ctx = new ClassPathXmlApplicationContext("beans-cycle.xml");
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("beans-cycle.xml");
		SpringPersonEntity person = (SpringPersonEntity) ctx.getBean("person");
		System.out.println(person);
		ctx.close();
	}
}
