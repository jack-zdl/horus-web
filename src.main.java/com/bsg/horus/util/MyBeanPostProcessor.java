/**@author  zhangdelei
 * @data 2017年3月18日下午4:58:52
 *@Description TODO
 */
package com.bsg.horus.util;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.config.BeanPostProcessor;

/**@author  zhangdelei
 * @data 2017年3月18日下午4:58:52
 *@Description bean的后置处理器，
 *			   before可以用来验证bean的正确性，过滤一些bean
 *			   after可以处理一些，改变一些bean
 */
public class MyBeanPostProcessor implements BeanPostProcessor {

	/**@author  zhangdelei
	 * @data 2017年3月18日下午4:58:52
	 *@Description TODO
	 */
	@Override
	public Object postProcessAfterInitialization(Object bean, String beanName) throws BeansException {
		System.out.println("postProcessAfterInitialization:"+bean+","+beanName);
		return bean;
	}

	/**@author  zhangdelei
	 * @data 2017年3月18日下午4:58:52
	 *@Description TODO
	 */
	@Override
	public Object postProcessBeforeInitialization(Object bean, String beanName) throws BeansException {
		System.out.println("postProcessBeforeInitialization:"+bean+","+beanName);
		return bean;
	}
	/**@author  zhangdelei
	 * @data 2017年3月18日下午4:58:52
	 *@Description TODO
	 */
}
