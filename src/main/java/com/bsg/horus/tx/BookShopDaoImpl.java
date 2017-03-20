package com.bsg.horus.tx;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.bsg.horus.exception.BookNumberException;
import com.bsg.horus.exception.UserMoneyException;

@Repository("bookShopDao")
public class BookShopDaoImpl implements BookShopDao {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
		
	@Override
	public int findBookPriceByIsbn(String isbn) {
		String sql = "SELECT price FROM tbl_book WHERE id = ?";
		return  jdbcTemplate.queryForObject(sql, Integer.class, isbn);
	}

	@Override
	public void updateBookStock(String isbn) {
		//检查书的库存是否足够，否者抛出异常
		String sql2 = "SELECT number FROM tbl_book WHERE id = ?";
		int number = jdbcTemplate.queryForObject(sql2, Integer.class,isbn);
		if(number == 0){
			throw new BookNumberException("书的库存不足");
		}
		String sql = "UPDATE tbl_book SET number =number -1 WHERE id = ?";
		jdbcTemplate.update(sql,  isbn);

	}

	@Override
	public void updateUserAccount(String username, int price) {
		//验证余额是否不足
		String sql2 = "SELECT money FROM tbl_user WHERE loginname = ?";
		int money = jdbcTemplate.queryForObject(sql2,Integer.class,username);
		if(money < price){
			throw new UserMoneyException("用户钱数不足");
		}
		String sql = "UPDATE tbl_user SET money = money - ? WHERE  loginname = ?";
		jdbcTemplate.update(sql,price, username);
	}
	
}
