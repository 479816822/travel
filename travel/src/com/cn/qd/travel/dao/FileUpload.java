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
 *�ļ��ϴ�
 */
public class FileUpload {

	private FileOutputStream fos ;
	private FileInputStream fin;
	
	
	
	
	
	
	/**
	 * �����ļ�·�����ļ����͡�������Ӧ���ļ�
	 * @param filePath
	 * @param fileType
	 * @param file
	 * @return String
	 */
	public String fileExport(String filePath,String fileType,File file ){
		//�ļ�·��Ϊָ���ľ���·�����϶�Ӧ������
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
