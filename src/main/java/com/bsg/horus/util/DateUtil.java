package com.bsg.horus.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class DateUtil {
	public static final String YYYY_MM_DD="yyyy-MM-dd";
	public static final String YYYYMMDD="yyyyMMdd";

	public static final SimpleDateFormat format6=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	public static final SimpleDateFormat format3=new SimpleDateFormat("yyyy-MM-dd");
	public static String getCurrentDate(){
		return DateUtil.format(new Date(), DateUtil.YYYY_MM_DD);
	}
	public static String getCurrentDateYYYMMDD(){
		return DateUtil.format(new Date(), DateUtil.YYYYMMDD);
	}

	public static String format(Date date,String patten){
		 java.text.DateFormat format2 = new java.text.SimpleDateFormat(patten);
	     return format2.format(date);
	}
    public static String format6(Date date){
        return format6.format(date);
    }

    public static String format3(Date date){
        return format3.format(date);
    }

	public static int getIntDate(String dateString,String patten){
		int time = 0;
		SimpleDateFormat sdf = new SimpleDateFormat(patten);
		Date date = null;
		try {
			date = sdf.parse(dateString);
			time =Integer.parseInt(Long.toString(date.getTime()).substring(0,10));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return time;
	}

	public static Date addDay(String dateString, int day,String patte){
		Date date = stringToDate(dateString,patte);
		Date date1= addDay(date,day);
		return date1;
	}

	public static Date addDay(Date date, int day){
		Calendar calendar  =  new GregorianCalendar();
		calendar.setTime(date);
		calendar.add(calendar.DATE,day);
		Date date1=calendar.getTime();   //
		return date1;
	}
/**
 * @author zhangdelei@bsgchina.com
 * @data 2016年6月17日下午3:52:50
 * @Description 这段代码主要将日期字符串以指定的格式输出
 * @param dateString
 * @param patten
 * @return
 */
	public static Date stringToDate(String dateString,String patten){
		SimpleDateFormat sdf=new SimpleDateFormat(patten);  //使用某种格式输出
		Date date = null;
		try {
			date = sdf.parse(dateString);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return  date;
	}

	public static int getIntTimestamp(long datetime){
		int time =Integer.parseInt(Long.toString(datetime).substring(0,10));
		return time;
	}

	public static int getTimestamp10(String datetime){
		int time =Integer.parseInt((datetime).substring(0,10));
		return time;
	}

	public static int getIntDate(Date date){
		int time = 0;
		time =Integer.parseInt(Long.toString(date.getTime()).substring(0,10));
		return time;
	}


	public static void main(String args[]) {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		//String dateTime = df.format(1294890859000L);
		//2011-01-13 11:54:19

		String dateTime = df.format(1464701829167L);


		System.out.println(getIntDate(dateTime,"yyyy-MM-dd HH:mm:ss"));


	}
	public DateUtil() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @author  zhangdelei
	 * @data 2016年7月15日下午4:38:41
	 *@Description todo timetampString to data of formats  
	 *made by zhangdelei
	 */
	public String TimeStamp2Date(String timestampString, String formats){
		System.out.println("进来了");
	  Long timestamp = Long.parseLong(timestampString)*1000;
	  String date = new java.text.SimpleDateFormat(formats).format(new java.util.Date(timestamp));
	  System.out.println("data"+date);
	  return date;
	}
	
}
