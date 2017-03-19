package test.bean;

import java.util.HashMap;
import java.util.Map;

import com.bsg.horus.entity.SpringPersonEntity;

/**@author  zhangdelei
 * @data 2017年3月18日下午6:10:47
 *@Description 通过工厂模式来制造bean，一种静态工厂方法一种是实例工厂方法
 */
public class StaticFactory {
	/**@author  zhangdelei
	 * @data 2017年3月18日下午6:10:47
	 *@Description TODO
	 */
	private static Map<String,SpringPersonEntity> person = new HashMap<String,SpringPersonEntity>();
	//静态的代码块，立即执行
	static{
		person.put("zhang",new SpringPersonEntity("zhang"));
		person.put("liu",new SpringPersonEntity("liu"));
	}
	 
	public static SpringPersonEntity getSpringPerson(String name){
		return person.get(name);
	}
}
