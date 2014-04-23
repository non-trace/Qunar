package cn.edu.tstc.util;

import java.io.UnsupportedEncodingException;

/**
 * 系统操作组件
 * @author Administrator
 *
 */
public class OSSystemUtil {
	/**
	 * 判定当前系统使用的平台是否是Windows操作系统
	 * @return
	 */
	public static boolean isWindows(){
		String os = System.getProperty("os.name").toLowerCase();
		//windows
	    return (os.indexOf( "win" ) >= 0); 
	}
	/**
	 * 获取AIX操作系统下ISO-8859-1的字符
	 * 主要是从UTF-8转换到中ISO-8859-1
	 * @param value
	 * @return
	 */
	public static String getAIXOS8859Char(String value) {
		if (value == null || value.trim().length() ==0) {
			return value;
		}
		if (isWindows()) {
			return value;
		}
		try {
			return new String(value.getBytes("UTF-8"), "ISO-8859-1");
		} catch (UnsupportedEncodingException e) {
		}
		return value;
	}
	/**
	 * 获取操作系统下UTF-8的字符集
	 * 主要是从ISO-8859-1转换到UTF-8中
	 * @param value
	 * @return
	 */
	public static String getAIXOSUTF8Char(String value) {
		if (value == null || value.trim().length() ==0) {
			return value;
		}
		if (isWindows()) {
			return value;
		}
		try {
			return new String(value.getBytes("ISO-8859-1"), "UTF-8");
		} catch (UnsupportedEncodingException e) {
		}
		return value;
	}
}
