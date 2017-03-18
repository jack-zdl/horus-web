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
 * @data 2016��6��14������1:31:48
 * @Descriptiion ������һ�����Ĺ�����������ҳ�����������
 */
public class Zh_FilterUtil implements Filter{
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
