package com.cissst.software.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * 测试类: 读取属性文件中的属性值
 * 
 * @author lenovo
 *
 */
public class TestUtil {

	private static Properties props = new Properties();
	static {
		// 类加载器
		ClassLoader loader = TestUtil.class.getClassLoader();
		InputStream ins = loader.getResourceAsStream("dbconfig.properties");
		try {
			props.load(ins);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 根据名称获取属性值
	 * 
	 * @param key
	 * @return
	 */
	public static String getValueByName(String key) {
		return props.getProperty(key);
	}
}
