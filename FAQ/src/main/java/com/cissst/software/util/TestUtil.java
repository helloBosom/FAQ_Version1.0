package com.cissst.software.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * ������: ��ȡ�����ļ��е�����ֵ
 * 
 * @author lenovo
 *
 */
public class TestUtil {

	private static Properties props = new Properties();
	static {
		// �������
		ClassLoader loader = TestUtil.class.getClassLoader();
		InputStream ins = loader.getResourceAsStream("dbconfig.properties");
		try {
			props.load(ins);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * �������ƻ�ȡ����ֵ
	 * 
	 * @param key
	 * @return
	 */
	public static String getValueByName(String key) {
		return props.getProperty(key);
	}
}
