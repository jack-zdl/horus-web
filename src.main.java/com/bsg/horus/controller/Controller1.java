package com.bsg.horus.controller;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user")
public class Controller1 {
	/**@author  zhangdelei
	 * @throws IOException 
	 * @data 2016年6月21日下午4:04:15
	 *@Description 这里是用来登录注册及其他
	 */
	@RequestMapping(value="/login.do",method=RequestMethod.POST)
	public void login(String username,String password,HttpServletRequest req,HttpServletResponse pos) throws IOException{
		System.out.println("进入");
		System.out.println(username+"dasdas"+password);
		if(username=="1"|| password=="1"){
			System.out.println("进来了");
		}else{
			System.out.println("出来了");
		}
		/**
		 * 这个是完全重定向
		 */
		pos.sendRedirect("/horus/index.html");
	}
	
	
}
