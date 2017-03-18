package com.bsg.horus.util;

import java.util.HashMap;
import java.util.Map;
import com.bsg.horus.entity.SpringPerson;

/**@author  zhangdelei
 * @data 2017年3月18日下午6:47:22
 *@Description 实例成员工厂方法
 */

public class InstanceFactory {

	/**
	 * @description person
	 */
	private Map<String , SpringPerson> person =null;

	/**
	 * @return the person
	 */
	public SpringPerson getPerson(String name) {
		return person.get(name);
	}

	
	public InstanceFactory(){
		person = new HashMap<String,SpringPerson>();
		person.put("zhang",new SpringPerson("zhang"));
		person.put("liu", new SpringPerson("liu"));
	}
	
}
