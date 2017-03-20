package test.tx;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository("bookShopDao")
public class BookShopDaoImpl implements BookShopDao {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
		
	@Override
	public int findBookPriceByIsbn(String isbn) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void updateBookStock(String isbn) {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateUserAccount(String username, int price) {
		// TODO Auto-generated method stub

	}
	/**@author  zhangdelei
	 * @data 2017年3月19日下午7:44:26
	 *@Description TODO
	 */
}
