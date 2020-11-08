package cn.cslg.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 日期工具类
 *
 * @author huangyong
 * @since 1.0.0
 */
public final class DateUtil {

    private static SimpleDateFormat dateTimeFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    private static SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

    private DateUtil() {
    }

    /**
     * 获取当前日期与时间
     */
    public static String getCurrentDateTime() {
        return dateTimeFormat.format(new Date());
    }

    /**
     * 字符串转日期 yyyy-MM-dd
     * @param dateStr 日期字符串
     * @return 日期
     */
    public static Date parseDate(String dateStr) {
        Date date;
        try {
            date =  dateFormat.parse(dateStr);
        } catch (ParseException e) {
            date = new Date();
        }
        return date;
    }
}
