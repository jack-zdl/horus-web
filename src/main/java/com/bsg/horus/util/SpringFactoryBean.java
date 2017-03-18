package com.bsg.horus.util;

import org.springframework.beans.factory.FactoryBean;

import com.bsg.horus.entity.SpringPerson;

public class SpringFactoryBean implements FactoryBean<SpringPerson> {
	
	private String name;
	
	public void setName(String name) {
		this.name = name;
	}
	//返回一个bean对象
	@Override
	public SpringPerson getObject() throws Exception {
		// TODO Auto-generated method stub
		return new SpringPerson(name);
	}

	//返回bean的类型
	@Override
	public Class<?> getObjectType() {
		// TODO Auto-generated method stub
		return SpringPerson.class;//反射
	}

	@Override
	public boolean isSingleton() {
		// TODO Auto-generated method stub
		return true;
	}
	/**@author  zhangdelei
	 * @data 2017年3月18日下午7:07:52
	 *@Description TODO
	 */
}
