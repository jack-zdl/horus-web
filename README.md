# horus-web
这是持续开发的独立的horus监控系统，无状态的javaweb工程，使用spring,springmvc后端框架，SmartAdmin的前端框架。spring的技术如下 IOC容器DI依赖注入 AOP切面编程，事物管理，及SpringMVC技术。

##  1springIOC技术知识

>		1.1springBean的生命周期

```
	Spring对Bean进行实例化（相当于程序中的new Xx()）

	Spring将值和Bean的引用注入进Bean对应的属性中

	如果Bean实现了BeanNameAware接口，Spring将Bean的ID传递给setBeanName()方法（实现BeanNameAware清主要是为了通过Bean
	的引用来获得Bean的ID，一般业务中是很少有用到Bean的ID的）
	
	如果Bean实现了BeanFactoryAware接口，Spring将调用setBeanDactory(BeanFactory bf)方法并把BeanFactory容器实例作为
	参数传入。（实现BeanFactoryAware     		主要目的是为了获取Spring容器，如Bean通过Spring容器发布事件等）

	如果Bean实现了ApplicationContextAwaer接口，Spring容器将调用setApplicationContext(ApplicationContextctx)方法
	把y应用上下文作为参数传入.(作用与BeanFactory类似都是为了获取Spring容器，不同的是Spring容器
	在调用setApplicationContext方法时会把它自己作为setApplicationContext 的参数传入，而Spring容器在
	调用setBeanDactory前需要程序员自己指定（注入）setBeanDactory里的参数BeanFactory )
	
	如果Bean实现了BeanPostProcess接口，Spring将调用它们的postProcessBeforeInitialization（预初始化）方法
	（作用是在Bean实例创建成功后对进行增强处理，如对Bean进行修改，增加某个功能）
	如果Bean实现了InitializingBean接口，Spring将调用它们的afterPropertiesSet方法，作用与在配置文件中对Bean使用
	init-method声明初始化的作用一样，都是在Bean的全部属性设置成功后执行的初始化方法。
	
	如果Bean实现了BeanPostProcess接口，Spring将调用它们的postProcessAfterInitialization（后初始化）方法
	（作用与6的一样，只不过6是在Bean初始化前执行的，而这个是在Bean初始化后执行的，时机不同 )
	经过以上的工作后，Bean将一直驻留在应用上下文中给应用使用，直到应用上下文被销毁
	
	如果Bean实现了DispostbleBean接口，Spring将调用它的destory方法，作用与在配置文件中对Bean使用destory-method属性
	的作用一样，都是在Bean实例销毁前执行的方法。
```			

>		1.2springBean的xml配置方法

>		1.3springBean的注解配制方法

##  2springAOP的技术知识

>		2.1springAOP的生命周期

>		2.2springAOP的xml配置方法

>		2.3springAOP的注解配制方法
##	3spring的事物管理
		3.1转账问题（原子性，隔离性，持久性,一致性）
			在使用jdbcTemplate,mybatis,hiberanteJPA时都是可以一样使用的。
		3.2spring事物管理的传播行为--当事务方法被另一个事务方法调用时，必须指定事务应该如何传播。
## 	4springMVC的技术知识

>		3.1springMVC的生命周期及请求发送流程
```
	1. 用户向服务器发送请求，请求被Spring 前端控制Servelt DispatcherServlet捕获；
	
	2.DispatcherServlet对请求URL进行解析，得到请求资源标识符（URI）。然后根据该URI，调用HandlerMapping获得
	该Handler配置的所有相关的对象（包括Handler对象以及Handler对象对应的拦截器），最后以HandlerExecutionChain
	对象的形式返回；
	
	3.DispatcherServlet 根据获得的Handler，选择一个合适的HandlerAdapter。（附注：如果成功获得HandlerAdapter后，
	此时将开始执行拦截器的preHandler(...)方法）
	
	4.提取Request中的模型数据，填充Handler入参，开始执行Handler（Controller)。 在填充Handler的入参过程中，
	根据你的配置，
	Spring将帮你做一些额外的工作：
	HttpMessageConveter:将请求消息（如Json、xml等数据）转换成一个对象，将对象转换为指定的响应信息
	数据转换：对请求消息进行数据转换。如String转换成Integer、Double等
	数据根式化：对请求消息进行数据格式化。 如将字符串转换成格式化数字或格式化日期等
	数据验证： 验证数据的有效性（长度、格式等），验证结果存储到BindingResult或Error中
	
	5.  Handler执行完成后，向DispatcherServlet 返回一个ModelAndView对象；
	
	6.  根据返回的ModelAndView，选择一个适合的ViewResolver（必须是已经注册到Spring容器中的ViewResolver)
	返回给DispatcherServlet ；
	
	7. ViewResolver 结合Model和View，来渲染视图
	
	8. 将渲染结果返回给客户端
```		
	
>		3.1springMVC相关使用
			情景: spring与springMVC同时使用时，在spring中配置声明式事务情况下，是否对springMVC管理的控制层生效
>		3.2springMVC url请求转入后的处理流程
##  5spring的线程池
		4.1spring的线程池配置
			<bean id="threadPool" class="org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor">
				<!-- 核心线程数 -->
				<property name="corePoolSize" value="3" />
				<!-- 最大线程数 -->
				<property name="maxPoolSize" value="10" />
				<!-- 队列最大长度 >=mainExecutor.maxSize -->
				<property name="queueCapacity" value="25" />
				<!-- 线程池维护线程所允许的空闲时间 -->
				<property name="keepAliveSeconds" value="300" />
				<!-- 线程池对拒绝任务(无线程可用)的处理策略 ThreadPoolExecutor.CallerRunsPolicy策略,
				调用者的线程会执行该任务,如果执行器已关闭,则丢弃. -->
				<property name="rejectedExecutionHandler">
					<bean class="java.util.concurrent.ThreadPoolExecutor$CallerRunsPolicy" />
				</property>
			</bean>
##	6spring-ehcache缓存的管理
>		5.1spring-ehche配置文件
```
	<?xml version="1.0" encoding="UTF-8"?>
	<ehcache>
		<!-- 指定一个文件目录，当EhCache把数据写到硬盘上时，将把数据写到这个文件目录下 -->
		<diskStore path="c:\\upm\\cache"/>
		<!-- 
		缓存配置 
		   name:缓存名称。 
		   maxElementsInMemory：缓存最大个数。 
		   eternal:对象是否永久有效，一但设置了，timeout将不起作用。 
		   timeToIdleSeconds：缓存自创建日期起至失效时的间隔时间（单位：秒）。仅当eternal=false对象不是永久
						有效时使用，可选属性，默认值是0，也就是可闲置时间无穷大。 
		   timeToLiveSeconds：缓存创建以后，最后一次访问缓存的日期至失效之时的时间间隔（单位：秒）。最大时间
				介于创建时间和失效时间之间。仅当eternal=false对象不是永久有效时使用，默认是0.，也就是对象存活时间无穷大。 
		   overflowToDisk：当内存中对象数量达到maxElementsInMemory时，Ehcache将会对象写到磁盘中。 
		   diskSpoolBufferSizeMB：这个参数设置DiskStore（磁盘缓存）的缓存区大小。默认是30MB。每个Cache都应该有自己
						的一个缓冲区。 
		   maxElementsOnDisk：硬盘最大缓存个数。 
		   diskPersistent：是否缓存虚拟机重启期数据 Whether the disk store persists between restarts of the Virtual 
						Machine. The default value is false. 
		   diskExpiryThreadIntervalSeconds：磁盘失效线程运行时间间隔，默认是120秒。 
		   memoryStoreEvictionPolicy：当达到maxElementsInMemory限制时，Ehcache将会根据指定的策略去清理内存。
						默认策略是LRU（最近最少使用）。你可以设置为FIFO（先进先出）或是LFU（较少使用）。 
		   clearOnFlush：内存数量最大时是否清除。 
		-->
		<cache
			name="dictTypeCache"
			maxElementsInMemory="1000"
			eternal="true"
			overflowToDisk="true"/>
		<cache
			name="definitionCache"
			maxElementsInMemory="1000"
			eternal="true"
			overflowToDisk="true"/>    
	</ehcache>
```
