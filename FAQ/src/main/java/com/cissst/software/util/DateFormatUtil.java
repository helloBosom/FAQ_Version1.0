package com.cissst.software.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * ���ڹ��������
 * 
 * @author lenovo
 *
 */
public class DateFormatUtil {

	/**
	 * ��ȡ��ǰϵͳʱ����ӵ����ݿ���
	 * 
	 * @return
	 */
	public static String getCurrentDate() {
		Date date = new Date();
		SimpleDateFormat sf = new SimpleDateFormat("dd-M��-YYYY");
		return sf.format(date);
	}
}
