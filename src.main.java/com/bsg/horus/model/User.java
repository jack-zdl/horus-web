package com.bsg.horus.model;
/**
 * @author zhangdelei@bsgchina.com
 * @data 2016��6��14������12:23:12
 * @Descriptiion TODO
 */

public class User {
	private String username;
	private String name;
	private String password;
	private String email;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "User [username=" + username + ", name=" + name + ", password=" + password + ", email=" + email + "]";
	}
	
}
