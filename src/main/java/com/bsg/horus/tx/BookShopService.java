package com.bsg.horus.tx;

/**
 * @author  zhangdelei
 * @data 2017年3月20日下午10:29:29
 *@Description 完成买书的操作
 */

public interface BookShopService {
	
	void purchase(String bookId,String username);
	
}
