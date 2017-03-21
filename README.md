# horus-web
这是持续开发的独立的horus监控系统，无状态的javaweb工程，使用spring,springmvc后端框架，SmartAdmin的前端框架。spring的技术如下 IOC容器DI依赖注入 AOP切面编程，事物管理，及SpringMVC技术。
##  1springIOC技术知识
 	1.1springBean的生命周期
	1.2springBean的xml配置方法
 	1.3springBean的注解配制方法
##  2springAOP的技术知识
 	2.1springAOP的生命周期
 	2.2springAOP的xml配置方法
 	2.3springAOP的注解配制方法
##	3spring的事物管理
		3.1转账问题（原子性，隔离性，持久性,一致性）
			在使用jdbcTemplate,mybatis,hiberanteJPA时都是可以一样使用的。
		3.2spring事物管理的传播行为--当事务方法被另一个事务方法调用时，必须指定事务应该如何传播。
## 	3springMVC的技术知识
 	3.1springMVC相关使用
			情景: spring与springMVC同时使用时，在spring中配置声明式事务情况下，是否对springMVC管理的控制层生效
	3.2springMVC url请求转入后的处理流程
##  4spring的线程池
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
