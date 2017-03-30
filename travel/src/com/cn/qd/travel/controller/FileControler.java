package com.cn.qd.travel.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Calendar;

import javax.print.Doc;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.cn.qd.travel.util.FileUpAndDown;
import com.cn.qd.travel.util.Log;

/**
 * 文件处理控制层
 * 
 * @author liufu
 *
 */
@Controller
public class FileControler {

	private Log log = Log.getLogger();
	
	/**
	 * 文件上传
	 * @param files
	 * @param request
	 * @return
	 */
		@ResponseBody
		@RequestMapping("upload")
		public String[] productInfo(@RequestParam("file") CommonsMultipartFile[] files, HttpServletRequest request) {
			String savePath = request.getSession().getServletContext().getRealPath("upload");
			String[] filePath = null;
			if (files[0].getSize() > 0)
				filePath = uploadFile(savePath, files);
			return filePath;
		}

		public String[] uploadFile(String savePath, CommonsMultipartFile[] files) {
			String[] filePaths = new String[files.length];
			Calendar date=Calendar.getInstance();
			// 循环进行数据处理
			for (int i = 0; i < files.length; i++) {
				String fileName=date.getTimeInMillis()+ files[i].getOriginalFilename();
				File targetFile = new File(savePath, fileName);
				if (!targetFile.exists()) {
					targetFile.mkdirs();
				}
				try {
					files[i].transferTo(targetFile);
				} catch (Exception e) {
					log.logger.debug("文件上传失败",e);
				}
				filePaths[i] = "upload/" + fileName;
			}
			return filePaths;
		}


	/**
	 * 文件上传,统一存储在upload文件夹下、再根据文件类型分文件夹存储
	 * 
	 * @param doc
	 * @param file
	 * @param request
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "uploadMy")
	public String uploadFile(@RequestParam("file") CommonsMultipartFile file, HttpServletRequest request) {
		// String savePath = request.getServletPath();
		// savePath=savePath+"WEB-INF/upload";
		String realpath = request.getRealPath("WEB-INF/upload");
		String uploadFileFileName = file.getOriginalFilename();
		String uploadFileFileNameWithoutSpace = uploadFileFileName.replaceAll(" ", "");
		String fileType = uploadFileFileNameWithoutSpace.substring(uploadFileFileNameWithoutSpace.lastIndexOf("."));
		String savePath = realpath + "/" + fileType;
		InputStream is = null;
		try {
			is = file.getInputStream();
			savePath = FileUpAndDown.fileInport(savePath, fileType, is);
		} catch (Exception e) {
			log.logger.debug(e);
		} finally {
			try {
				if (is != null)
					is.close();
			} catch (IOException e) {
				log.logger.debug(e);
			}
		}
		return savePath;
	}

	/**
	 * 文件下载
	 * 
	 * @param name
	 * @param request
	 * @param response
	 * @return
	 */
	@SuppressWarnings("deprecation")
	@RequestMapping(value ="/download")
	public ResponseEntity<byte[]> fileDownLoad(String fileName, HttpServletRequest request,
			HttpServletResponse response) {
		ResponseEntity<byte[]> re = null;
		OutputStream out = null;
		InputStream in = null;
		String uploadFileFileNameWithoutSpace = fileName.replaceAll(" ", "");
		String fileType = uploadFileFileNameWithoutSpace.substring(uploadFileFileNameWithoutSpace.lastIndexOf("."));
		try {
			/**
			 * css,js,json,gif,png,bmp,jpg,ico,doc,docx,xls,xlsx,txt,swf,pdf
			 **/
			// 设置文件类型
			response.setContentType(fileType);
			// 设置Content-Disposition
			response.setHeader("Content-Disposition", "attachment;fileName=" + fileName);
			// 读取目标文件，通过response将目标文件写到客户端
			// 获取目标文件的绝对路径
			String fullFileName = request.getRealPath("/WEB-INF/upload/" + fileType + fileName);
			// 读取文件
			in = new FileInputStream(fullFileName);
			out = response.getOutputStream();
			// 写文件
			int b;
			while ((b = in.read()) != -1) {
				out.write(b);
			}
		} catch (Exception e) {
			log.logger.debug(e);
		} finally {
			try {
				if (in != null)
					in.close();
				if (out != null)
					out.close();
			} catch (IOException e) {
				log.logger.debug(e);
			}
		}

		return re;
	}
}
