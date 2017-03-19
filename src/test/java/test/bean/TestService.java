package test.bean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bsg.horus.dao.HttpClientDaoImpl;

@Service("testService")
public class TestService {
	/**@author  zhangdelei
	 * @data 2017年3月18日下午9:48:52
	 *@Description TODO
	 */
	@Autowired
	private 	HttpClientDaoImpl httpClientDao;
	
	private void save() {
		// TODO Auto-generated method stub
		System.out.println("service save");
		httpClientDao.save();
	}
}
