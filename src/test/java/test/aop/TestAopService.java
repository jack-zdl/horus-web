package test.aop;

import org.springframework.stereotype.Component;

/**@author  zhangdelei
 * @data 2017年3月19日上午10:12:39
 *@Description TODO
 */
@Component("testAopService")
public class TestAopService {
	
	
	public int add(int a,int b){
		int result =a+b;
		return result;
	}
	/**
	 * @author  zhangdelei
	 * @data 2017年3月19日上午11:23:40
	 *@Description '/'除    '%'取余
	 */
	public int div(int a,int b){
		int result = a/b;
		return result;
	}
	
}
