package peri.fun.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateFormatUtil {

    public static String getCurrentDate() {
        Date date = new Date();
        SimpleDateFormat sf = new SimpleDateFormat("dd-M��-YYYY");
        return sf.format(date);
    }
}
