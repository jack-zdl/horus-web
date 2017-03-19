package test.bean;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.bsg.horus.entity.SpringPersonEntity;

public class TestFactory {
	/**@author  zhangdelei
	 * @data 2017年3月18日下午6:26:29
	 *@Description 测试静态工厂类 生产出bean
	 */
	@Test
	public void testStaticFactory(){
		ApplicationContext ctx = new ClassPathXmlApplicationContext("beans-factory.xml");
		SpringPersonEntity person = (SpringPersonEntity) ctx.getBean("person");
		System.out.println(person);
	}
	/**
	 * @author  zhangdelei
	 * @data 2017年3月18日下午7:15:33
	 *@Description 测试对象工厂方法
	 */
	@Test
	public void testInstanceFactory(){
		ApplicationContext ctx = new ClassPathXmlApplicationContext("beans-factory.xml");
		SpringPersonEntity person1 = (SpringPersonEntity) ctx.getBean("person1");
		System.out.println(person1);
	}
	/**
	 * @author  zhangdelei
	 * @data 2017年3月18日下午7:17:22
	 *@Description 测试spring的factoryBean
	 */
	@Test
	public void testFactoryBean(){
		ApplicationContext ctx = new ClassPathXmlApplicationContext("beans-factoryBean.xml");
		SpringPersonEntity person1 = (SpringPersonEntity) ctx.getBean("person");
		System.out.println(person1);
	}
}
