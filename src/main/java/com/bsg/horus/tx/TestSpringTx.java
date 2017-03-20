package com.bsg.horus.tx;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class TestSpringTx {
	/**@author  zhangdelei
	 * @data 2017年3月20日下午11:00:23
	 *@Description TODO
	 */
	private ApplicationContext ctx = null;
	 
	private BookShopDao bookShopDao = null ;
	
	private BookShopService bookShopService = null;
	
	{
		ctx = new ClassPathXmlApplicationContext("applicationContext-jdbc1.xml");
		bookShopDao = ctx.getBean(BookShopDao.class);
		bookShopService = ctx.getBean(BookShopService.class);
	}
	@Test
	public void testShop(){
		bookShopService.purchase("1", "zhang");
	}
	@Test
	public void testUpdateUserAccount(){
		bookShopDao.updateUserAccount("zhang", 100);
	}
	@Test
	public void testUpdateBookStock(){
		bookShopDao.updateBookStock("1");
	}
	@Test
	public void testFindBookPriceByIsbn(){
		System.out.println(bookShopDao.findBookPriceByIsbn("1"));
	}
}
