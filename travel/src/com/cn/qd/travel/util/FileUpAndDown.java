package com.cn.qd.travel.util;

import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Calendar;

/**
 * 
 * @author liufu
 *
 *         文件上传
 */
public class FileUpAndDown {

	/**
	 * 根据文件路径、文件类型、导出相应的文件
	 * 
	 * @param filePath
	 * @param fileType
	 * @param file
	 * @return String
	 */
	public static String fileInport(String filePath, String fileType, InputStream in) {
		Log log = Log.getLogger();
		// 文件路劲为指定的具体路劲加上对应的日期
		String path = Calendar.getInstance().hashCode() + "." + fileType;
		File fl = new File(filePath + path);
		DataOutputStream out = null;
		if (!fl.exists()) {
			fl.mkdir();
		}
		try {
			out = new DataOutputStream(new FileOutputStream(fl));
			byte[] b = new byte[in.available()];
			in.read(b);
			out.write(b);
		} catch (Exception e) {
			log.logger.debug(e);
		} finally {
			try {
				out.close();
				in.close();
			} catch (IOException e) {
				log.logger.debug(e);
				return null;
			}
		}
		return path;
	}
	
	
	

}
