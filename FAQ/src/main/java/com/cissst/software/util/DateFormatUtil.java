package com.cissst.software.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 日期工具类操作
 * 
 * @author lenovo
 *
 */
public class DateFormatUtil {

	/**
	 * 获取当前系统时间添加到数据库中
	 * 
	 * @return
	 */
	public static String getCurrentDate() {
		Date date = new Date();
		SimpleDateFormat sf = new SimpleDateFormat("dd-M月-YYYY");
		return sf.format(date);
	}
}
