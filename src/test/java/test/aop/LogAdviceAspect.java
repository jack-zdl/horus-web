package test.aop;

import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

import com.bsg.horus.dao.HttpClientDaoImpl;
@Component("Log")
@Aspect
public class LogAdviceAspect {
	
	private static Log log = LogFactory.getLog(LogAdviceAspect.class);
	/**
	 * @author  zhangdelei
	 * @data 2016年7月21日下午4:13:22
	 *@Description 设置切入点  方便下面去调用
	 */
	 @Pointcut("execution(public * com.bsg.horus.service.*.*(..))")  
	    public void insertServiceImplCall() { } 
	 /**
	  * @author  zhangdelei
	  * @data 2016年7月21日下午4:31:56
	  *@Description 这是日志的前置通知  还可以赢切入点
	  * @Before(value="execution(public * com.bsg.horus.service.*.*(..))",argNames="rtv")
	  *  @Before("execution(public * com.bsg.horus.service.*.*(..))")
	  */
	  //日志开启之前
	  @Before(value="insertServiceImplCall()")
	    public void before(JoinPoint joinPoin) {  
		  log.info("日志信息");
		  log.debug("debug");
		  log.error("error");
		
		  //判断参数  
	        if(joinPoin.getArgs() == null){//没有参数  
	            log.info("没有参数");;  
	        }  else{
	        	log.info("有参数"+joinPoin.getArgs());
	        }
	        
	        //获取方法名  
	        String methodName = joinPoin.getSignature().getName();  
	        log.info("获得方法名"+methodName);
	  } 
	  /**
	   * @author  zhangdelei
	   * @data 2016年7月21日下午4:36:38
	   *@Description   在目标方法非正常执行完成 发生异常 抛出异常的时候会走此方法
	   * 获得异常可以用throwing
	   */
	  @AfterThrowing(value="execution(public * com.bsg.horus.service.*.*(..))",throwing="ex")
	  public void doRecoveryActions(JoinPoint joinPoint,Exception ex) {
		  Object object = joinPoint.getSignature();
	      Date date = new Date();
	      SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); //以指定的格式去获得当前时间
	      String rightnow=sdf.format(date);
		  log.info("【在"+rightnow+"时 	获得Service信息异常	执行了"+object+"异常为"+ex+"】");
	  }
	  
	  @AfterThrowing(value="execution(public * com.bsg.horus.dao.*.*(..))",throwing="ex")
	  public void daoThrow(JoinPoint joinPoint,Exception ex) {
		  Object object = joinPoint.getSignature();
	      Date date = new Date();
	      SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); //以指定的格式去获得当前时间
	      String rightnow=sdf.format(date);
		  log.info("【在"+rightnow+"时 	获得DaoImpl信息异常	执行了"+object+"异常为"+ex+"】");
	  }
	  
	/**
	 * @author  zhangdelei
	 * @data 2016年7月21日下午4:35:21
	 *@Description 这个是返回通知 方法执行成功后执行的日志方法
	 * @AfterReturning(value="execution(public * com.bsg.horus.service.*.*(..))",returning="result")
	 * 前者是要进行切入的方法地  后者是获得结果
	 */
	  @AfterReturning(value="execution(public * com.bsg.horus.service.*.*(..))",returning="result")
	    public void AfterReturn(JoinPoint joinPoint,Object result) {  
		  	Object object = joinPoint.getSignature();
	        Date date = new Date();
	        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	        String rightnow=sdf.format(date);
	        log.info(rightnow+"执行了【"+object+"方法正常执行结束......】"+"【返回结果:"+result+"】");
	    }  
	  /**
	   * @author  zhangdelei
	   * @data 2016年7月21日下午4:33:41
	   *@Description 这是获得后置通知无论结果怎样都会执行
	   */
	    //最终日志
//	    @After(value="execution(public * com.bsg.horus.service.*.*(..))")
//	    public void After(JoinPoint joinPoint) {  
//	    	Object object = joinPoint.getSignature();
//	        Date date = new Date();
//	        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
//	        String rightnow=sdf.format(date);
//	       log.info(rightnow+"执行了【"+object+"方法正常执行结束......】");
//	         
//	    }  
	    
	    /** 
	     * 使用Java反射来获取被拦截方法(insert、update)的参数值， 
	     * 将参数值拼接为操作内容 
	     */  
	    public String adminOptionContent(Object[] args, String mName) throws Exception{  
	  
	        if (args == null) {  
	            return null;  
	        }  
	          
	        StringBuffer rs = new StringBuffer();  
	        rs.append(mName);  
	        String className = null;  
	        int index = 1;  
	        // 遍历参数对象  
	        for (Object info : args) {  
	              
	            //获取对象类型  
	            className = info.getClass().getName();  
	            className = className.substring(className.lastIndexOf(".") + 1);  
	            rs.append("[参数" + index + "，类型：" + className + "，值：");  
	              
	            // 获取对象的所有方法    import java.lang.reflect.Method;
	            Method[] methods = info.getClass().getDeclaredMethods();  
	              
	            // 遍历方法，判断get方法  
	            for (Method method : methods) {  
	                  
	                String methodName = method.getName();  
	                // 判断是不是get方法  
	                if (methodName.indexOf("get") == -1) {// 不是get方法  
	                    continue;// 不处理  
	                }  
	                  
	                Object rsValue = null;  
	                try {  
	                      
	                    // 调用get方法，获取返回值  
	                    rsValue = method.invoke(info);  
	                      
	                    if (rsValue == null) {//没有返回值  
	                        continue;  
	                    }  
	                      
	                } catch (Exception e) {  
	                    continue;  
	                }  
	                  
	                //将值加入内容中  
	                rs.append("(" + methodName + " : " + rsValue + ")");  
	            }  
	              
	            rs.append("]");  
	              
	            index++;  
	        }  
	          
	        return rs.toString();  
	    }  
	
}
