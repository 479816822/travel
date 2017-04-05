package com.cn.qd.travel.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Calendar;

/**
 * 图片 二进制间转换
 * 
 * @author langren
 *
 */
public class ChangeIcon {
	private Log log = Log.getLogger();
	/**
	 * 获取默认的二进制图片
	 * 
	 * @return
	 */
	public  byte[] getIcon(String rootPath) {
		byte[] pic = null;
		InputStream is=null;
		String imgPath = "public.jpg";
		imgPath=rootPath+"\\"+imgPath;
		imgPath.replace("\\", "\\\\");
		try {
			// 图片的路径
			File file = new File(imgPath);
			 is = new FileInputStream(file);
			pic = new byte[is.available()];
			is.read(pic);
		} catch (Exception e) {
			log.logger.error("文件读取失败", null);
		}finally{
			try {
				is.close();
			} catch (IOException e) {
				log.logger.error("文件读取失败", null);
			}
			
		}
		return pic;
	}

	/*
	 * 二进制转化为图片文件
	 */
	public static String changeImg(byte[] b,String savePath) {
		Calendar c = Calendar.getInstance();
		Long str = c.getTimeInMillis();
		Log log = Log.getLogger();
		// 指定从数据库读取出来的图片的保存路径及名字
		String imgPath = str+"userImage.jpg";
		savePath=savePath+"\\"+imgPath;
		OutputStream os=null;
		try {
			// 图片的路径
			 os = new FileOutputStream(new File(savePath));
			os.write(b);
		} catch (Exception e) {
			log.logger.error("文件读取失败", null);
		}finally{
			try {
				os.close();
			} catch (IOException e) {
				log.logger.error("文件读取失败", null);
			}
		}
		return "upload"+"\\"+imgPath;
	}

	/*
	 * 图片的img的转化为二进制文件
	 */
	public static byte[] readImg(String imgPath) {
		Log log = Log.getLogger();
		// 指定从数据库读取出来的图片的保存路径及名字
		byte[] pic = null;
		InputStream is=null;
		try {
			// 图片的路径
			File file = new File(imgPath);
			 is = new FileInputStream(file);
			pic = new byte[is.available()];
			is.read(pic);
			is.close();
		} catch (Exception e) {
			log.logger.error("文件读取失败", null);
		}finally{
			try {
				is.close();
			} catch (IOException e) {
				log.logger.error("文件读取失败", null);
			}
			
		}
		return pic;
	}
	
	
	
}
