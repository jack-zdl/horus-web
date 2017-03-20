package com.bsg.horus.tx;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**@author  zhangdelei
 * @data 2017年3月20日下午10:31:20
 *@Description 完成买书操作
 */
@Service("bookShopService")
public class BookShopServiceImpl implements BookShopService {
	
	@Autowired
	private BookShopDaoImpl bookShopDao;
	
	//添加事物
	@Transactional
	@Override
	public void purchase(String bookId, String username) {
		
		int price = bookShopDao.findBookPriceByIsbn(bookId);
		
		bookShopDao.updateBookStock(bookId);
		
		bookShopDao.updateUserAccount(username, price);

	}
	
}
