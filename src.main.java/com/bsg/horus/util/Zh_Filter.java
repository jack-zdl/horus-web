package com.bsg.horus.util;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
/**
 * @author zhangdelei@bsgchina.com
 * @data 2016年6月14日下午1:31:48
 * @Descriptiion 这里是一个中文过滤器，过滤页面的乱码问题
 */
public class Zh_Filter implements Filter{
	public void destroy(){
		//TOO Auto-generated method stub
	}
	public void doFilter (ServletRequest request, ServletResponse response,FilterChain chain) 
			throws IOException,ServletException{
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		chain.doFilter(request, response);
		
	}
	public void init (FilterConfig args0) throws ServletException{
		
	}
}
