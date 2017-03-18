package com.bsg.horus.util;

import java.util.HashMap;
import java.util.Map;

import com.bsg.horus.entity.SpringPerson;

/**@author  zhangdelei
 * @data 2017年3月18日下午6:10:47
 *@Description 通过工厂模式来制造bean，一种静态工厂方法一种是实例工厂方法
 */
public class StaticFactory {
	/**@author  zhangdelei
	 * @data 2017年3月18日下午6:10:47
	 *@Description TODO
	 */
	private static Map<String,SpringPerson> person = new HashMap<String,SpringPerson>();
	//静态的代码块，立即执行
	static{
		person.put("zhang",new SpringPerson("zhang"));
		person.put("liu",new SpringPerson("liu"));
	}
	 
	public static SpringPerson getSpringPerson(String name){
		return person.get(name);
	}
}
