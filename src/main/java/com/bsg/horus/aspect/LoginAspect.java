package com.bsg.horus.aspect;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.List;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

/**@author  zhangdelei
 * @data 2017年3月19日上午10:00:37
 *@Description 登录aop切面编程
 *		1 将这个类放入IOC容器中 @Component
 *		2声明切面编程 @Aspect
 *		3Before /After  /@AfterThrowing/ @AfterReturning
 *		4execution(public int com.bsg.horus.service.*.*(...)) 意思是public限制类型下   int返回类型     com.bsg.horus.service.*.*具体的某个包下的某些文件某些方法  (...)任意形参 
 *		5 JoinPoint 可以访问连接点的细节    可以获得目标对象的所有东西，目标对象的名字 参数  
 */
@Order(2)
@Component
@Aspect
public class LoginAspect {
	
	/**
	 * @author  zhangdelei
	 * @data 2017年3月19日下午2:16:51
	 *@Description 定义一个方法，用于声明切入点表达式，该方法内没有任何代码
	 */
	@Pointcut("execution(public int com.bsg.horus.service.TestAopService.add(int,int))")
	public void pointcut(){
		
	}
	/**
	 * @author  zhangdelei
	 * @data 2017年3月19日上午10:46:38
	 *@Description 前置通知  可以得到参数
	 *			public int com.bsg.horus.service.TestAopService.add(int,int)
	 *			* com.bsg.horus.service。*。*(..)
	 *			任意修饰符  任意返回类型                                     包下的任意类          类中的任意方法             方法中的任意参数
	 */
	
	//@Before("execution(public int com.bsg.horus.service.TestAopService.add(int,int))")
	@Before("pointcut()")
	public void beforeMethod(JoinPoint joinPoint){
		String methodName = joinPoint.getSignature().getName();
		List<Object> list = Arrays.asList(joinPoint.getArgs());
		System.out.println("测试修改通知"+methodName+"开始 参数"+list);
	}
	
	/**
	 * @author  zhangdelei
	 * @data 2017年3月19日上午10:46:52
	 *@Description 后置通知  不能访问目标方法执行的结果
	 *				不可以得到参数
	 */
	
	//@After("execution(public int com.bsg.horus.service.TestAopService.add(int,int))")
	@After("pointcut()")
	public void afterMethod(JoinPoint joinPoint){
		String methodName = joinPoint.getSignature().getName();
		System.out.println("测试修改通知"+methodName+"之后 参数");
	}
	
	/**
	 * @author  zhangdelei
	 * @data 2017年3月19日上午10:47:08
	 *@Description 成功返回后的通知  
	 *			可以访问目标方法执行的结果
	 *			注解形式不一样
	 *value="execution(public int com.bsg.horus.service.TestAopService.add(int,int))",
	 */
	
	@AfterReturning(value="pointcut()",
					returning="result")
	public void afterReturningMethod(JoinPoint joinPoint,Object result){
		String methodName = joinPoint.getSignature().getName();
		System.out.println("测试修改通知"+methodName+"成功返回  结果="+result);
	}
	
	/**
	 * @author  zhangdelei
	 * @data 2017年3月19日上午10:49:20
	 *@Description 返回异常的时候通知
	 *				异常是返回，可以得到异常数据
	 *				Exception  ex 可以指定某些异常  NopointException
	 */
	
	@AfterThrowing(value="pointcut()",
			throwing="ex")
	public void afterThrowingMethod(JoinPoint joinPoint,Exception ex){
		String methodName = joinPoint.getSignature().getName();
		System.out.println("测试修改通知"+methodName+"异常返回   异常为"+ex);
	}
	
	/**
	 * @author  zhangdelei
	 * @throws Throwable 
	 * @data 2017年3月19日上午10:50:02
	 *@Description 环绕通知   需要携带ProceedingJoinPoint这个类型的参数
	 *				类似于动态代理
	 *				ProceedingJoinPoint 类型的参数决定是否执行目标方法
	 *				环绕通知必须有返回值，返回值为目标方法的返回值
	 */
	
	@Around("execution(public int com.bsg.horus.service.TestAopService.add(int,int))")
	public Object aroundMethod(ProceedingJoinPoint joinPoint) {
		Object result = null;
		String methodName =  joinPoint.getSignature().getName();
		try {
			//前置通知
			System.out.println("前置通知:"+methodName+"begins with "+Arrays.asList(joinPoint.getArgs()));
			//执行目标方法
			result = joinPoint.proceed();
			//返回通知
			System.out.println("返回通知："+result);
		} catch (Throwable e) {
			//异常通知
			System.out.println("异常通知");
		}
		//后置通知
		System.out.println("后置通知");
		
		return result;
	}
}
