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
 *         �ļ��ϴ�
 */
public class FileUpAndDown {

	/**
	 * �����ļ�·�����ļ����͡�������Ӧ���ļ�
	 * 
	 * @param filePath
	 * @param fileType
	 * @param file
	 * @return String
	 */
	public static String fileInport(String filePath, String fileType, InputStream in) {
		Log log = Log.getLogger();
		// �ļ�·��Ϊָ���ľ���·�����϶�Ӧ������
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
