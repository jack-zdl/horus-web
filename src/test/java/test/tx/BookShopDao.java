package test.tx;

public interface BookShopDao {
	
	/**
	 * @author  zhangdelei
	 * @data 2017年3月19日下午4:14:13
	 *@Description 根据书号获取价格
	 */
	
	int findBookPriceByIsbn(String isbn);
	
	/**
	 * @author  zhangdelei
	 * @data 2017年3月19日下午4:14:35
	 *@Description 更新书的库存
	 */
	
	void updateBookStock(String isbn);
}
