package cn.book.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateTimeUtil {
	/*
	 * �����������ֶν��и�ʽ�������ַ���
	 */
	public String convertToStr(Date date){
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String time = null;
		if(date==null){
			time="δ��д";
		}else{
			try{
				time=dateFormat.format(date);
			}catch(Exception ex){
			    System.out.println("�޷�ת���ñ���Ϊ�ַ�����"+ex);
			}
		}
		
		return time;
		
	}

}
