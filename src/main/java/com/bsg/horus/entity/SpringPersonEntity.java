package com.bsg.horus.entity;
/**@author  zhangdelei
 * @data 2017年3月18日下午4:52:43
 *@Description 测试spring的初始化方法和销毁方法
 */
public class SpringPersonEntity {
	
	/**
	 * @description 名字
	 */
	private String name;

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	public SpringPersonEntity(String name) {
		super();
		this.name = name;
	}

	public SpringPersonEntity() {
		//super();  不写的话直接默认有这个super
		System.out.println("springperson的构造函数constructer。。。");
		// TODO Auto-generated constructor stub
	}
	
	/**@author  zhangdelei
	 * @data 2017年3月18日下午5:04:49
	 *@Description TODO
	 */
	@Override
	public String toString() {
		return "SpringPerson [name=" + name + "]";
	}

	public void init(){
		System.out.println("springPerson的初始化。。");
	}
	
	public  void destory(){
		System.out.println("springperson的销毁。。");
	}
	
}
