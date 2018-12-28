package cn.book.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateTimeUtil {
	/*
	 * 把日期类型字段进行格式化输入字符串
	 */
	public String convertToStr(Date date){
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String time = null;
		if(date==null){
			time="未填写";
		}else{
			try{
				time=dateFormat.format(date);
			}catch(Exception ex){
			    System.out.println("无法转换该变量为字符串！"+ex);
			}
		}
		
		return time;
		
	}

}
