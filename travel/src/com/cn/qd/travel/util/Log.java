package com.cn.qd.travel.util;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

/**
 * �Զ������־,�洢��WEB-INF��mylog�ļ�����
 * 
 * @author liufu
 *
 */
public class Log {
	public Logger logger;
	// ��Log���װΪ����ģʽ
	private static Log log;

	// ���캯�������ڳ�ʼ��Logger������Ҫ������
	private Log() {
		// ��õ�ǰĿ¼·��
		String filePath = this.getClass().getResource("/").getPath();
		// �ҵ�log4j.properties�����ļ����ڵ�Ŀ¼(�Ѿ�������)
		filePath = filePath.substring(1).replace("bin", "src");
		// �����־��logger��ʵ��
		logger = Logger.getLogger(this.getClass());
		// logger����������ļ�·��
		PropertyConfigurator.configure(filePath + "log4j.properties");
	}

	public static Log getLogger() {
		if (log != null)
			return log;
		else
			return new Log();
	}
}
