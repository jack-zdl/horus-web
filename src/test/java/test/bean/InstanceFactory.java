package test.bean;

import java.util.HashMap;
import java.util.Map;
import com.bsg.horus.entity.SpringPersonEntity;

/**@author  zhangdelei
 * @data 2017年3月18日下午6:47:22
 *@Description 实例成员工厂方法
 */

public class InstanceFactory {

	/**
	 * @description person
	 */
	private Map<String , SpringPersonEntity> person =null;

	/**
	 * @return the person
	 */
	public SpringPersonEntity getPerson(String name) {
		return person.get(name);
	}

	
	public InstanceFactory(){
		person = new HashMap<String,SpringPersonEntity>();
		person.put("zhang",new SpringPersonEntity("zhang"));
		person.put("liu", new SpringPersonEntity("liu"));
	}
	
}
