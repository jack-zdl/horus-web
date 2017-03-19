package test.bean;

import org.springframework.beans.factory.FactoryBean;

import com.bsg.horus.entity.SpringPersonEntity;

public class SpringFactoryBean implements FactoryBean<SpringPersonEntity> {
	
	private String name;
	
	public void setName(String name) {
		this.name = name;
	}
	//返回一个bean对象
	@Override
	public SpringPersonEntity getObject() throws Exception {
		// TODO Auto-generated method stub
		return new SpringPersonEntity(name);
	}

	//返回bean的类型
	@Override
	public Class<?> getObjectType() {
		// TODO Auto-generated method stub
		return SpringPersonEntity.class;//反射
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
