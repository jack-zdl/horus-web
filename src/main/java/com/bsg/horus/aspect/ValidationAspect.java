package com.bsg.horus.aspect;

import java.util.Arrays;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

/**@author  zhangdelei
 * @data 2017年3月19日下午1:44:12
 *@Description TODO
 */
@Order(1)
@Aspect
@Component
public class ValidationAspect {
	
	/**
	 * @author  zhangdelei
	 * @data 2017年3月19日下午2:21:17
	 *@Description 如何切面编程在不同的文件夹内就指定某一个包
	 */
	
	@Before("LoginAspect.pointcut()")
	public void validateArgs(JoinPoint joinPoint){
		System.out.println("----> 登录前的验证"+Arrays.asList(joinPoint.getArgs()));
	}
}
