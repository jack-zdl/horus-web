package com.bsg.horus.dto;


/*
zhangdelei@bsgchina.com2016��6��14������11:07:48

*/

public class CpuEntity {
 
   private int  timestamp;
   private int value;
public int getTimestamp() {
	return timestamp;
}
public void setTimestamp(int timestamp) {
	this.timestamp = timestamp;
}
public int getValue() {
	return value;
}
public void setValue(int value) {
	this.value = value;
}
public CpuEntity() {
	super();
	// TODO Auto-generated constructor stub
}
@Override
public String toString() {
	return "Cpu [timestamp=" + timestamp + ", value=" + value + "]";
}
   

   
}
