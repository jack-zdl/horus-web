package test.bean;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;

@Controller("testController")
public class TestController {
	
	/**@author  zhangdelei
	 * @data 2017年3月18日下午9:49:44
	 *@Description 
	 *		有可能TestService是一个接口，所有可以指定具体的实现类@Qualifier("testService")
	 */
	@Autowired
	@Qualifier("testService")
	private TestService testService;
	
	private void save() {
		// TODO Auto-generated method stub
		System.out.println("controller save");
	}
}
