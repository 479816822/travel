package com.cn.qd.travel.dao;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Calendar;

/**
 * 
 * @author liufu
 *
 *文件上传
 */
public class FileUpload {

	private FileOutputStream fos ;
	private FileInputStream fin;
	
	
	
	
	
	
	/**
	 * 根据文件路径、文件类型、导出相应的文件
	 * @param filePath
	 * @param fileType
	 * @param file
	 * @return String
	 */
	public String fileExport(String filePath,String fileType,File file ){
		//文件路劲为指定的具体路劲加上对应的日期
		filePath=filePath+Calendar.getInstance().hashCode();
		File fl =new File(filePath+fileType);
		if(!fl.exists()){
			fl.mkdir();
		}
		try {
			fos=new FileOutputStream(fl);
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			 fin= new FileInputStream(file);
			byte[] tmp = new byte[1024];
			while(fin.read(tmp) != -1) {
				fos.write(tmp);
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}finally{
			try {
				fin.close();
				fos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return filePath;
	}
	

}
