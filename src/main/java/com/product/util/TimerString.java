package com.product.util;

import java.util.Calendar;

public class TimerString {

	private static TimerString instance = new TimerString();
	private TimerString(){}
	public static TimerString instance(){
		return instance;
	}
	
	public static String getCurrentTime(boolean flag){
		String currentTime = null;
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH)+1;
		int day = cal.get(Calendar.DAY_OF_MONTH);
		int hour = cal.get(Calendar.HOUR_OF_DAY);
		int minute = cal.get(Calendar.MINUTE);
		int second = cal.get(Calendar.SECOND);
		if(flag){
			currentTime = intToString(year) + "-" + intToString(month) + "-"
					+ intToString(day) + " " + intToString(hour) + ":"
					+ intToString(minute) + ":" + intToString(second);
		}else{
			currentTime = intToString(year) + intToString(month)
					+ intToString(day) + intToString(hour)
					+ intToString(minute) + intToString(second);
		}
		return currentTime;
	}
	//ʱ����Ϊ�ļ���
	public static String getCurrentTimeUsedByFile(){
		String currentTime = null;
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH)+1;
		int day = cal.get(Calendar.DAY_OF_MONTH);
		int hour = cal.get(Calendar.HOUR_OF_DAY);
		int minute = cal.get(Calendar.MINUTE);
		int second = cal.get(Calendar.SECOND);
		currentTime = intToString(year)+intToString(month)+
				intToString(day)+intToString(hour)+intToString(minute)
				+intToString(second);
		return currentTime;
	}
	
	// �õ���ǰʱ��,�����ַ�
	public static String getCurrentTimeByDay(){
		String currentTime = null;
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		int month = cal.get(Calendar.MONTH)+1;
		int day = cal.get(Calendar.DAY_OF_MONTH);
		currentTime = intToString(year)+""+intToString(month)+""+intToString(day);
		return currentTime;
		}

	
	private static String intToString(int num){
		if(num<10){
			return "0"+String.valueOf(num);
		}
		return String.valueOf(num);
	}
	
	public static void main(String args[]){
		System.out.println(getCurrentTime(false));
	}
}
