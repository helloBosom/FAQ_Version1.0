package peri.fun.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class TestUtil {

    private static Properties props = new Properties();

    static {
        ClassLoader loader = TestUtil.class.getClassLoader();
        InputStream ins = loader.getResourceAsStream("dbconfig.properties");
        try {
            props.load(ins);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static String getValueByName(String key) {
        return props.getProperty(key);
    }
}
