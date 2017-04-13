package com.cn.qd.travel.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cn.qd.travel.entity.MdUser;

@Controller
public class qControlleer {

	// =====================================================================
	// 前往社区底部
	@RequestMapping("q_footer")
	public String goQ_footer() {
		return "q_footer";
	}

//	// ========================================================================
//	// 前往商城首页
//	// 遍历商品
//	@RequestMapping("goShop")
//	public String goShop(Model model, StoreInfo storeInfo) {
//
//		storeInfo.setCategoryId(Long.valueOf(1));
//		storeInfo.setProDes("f");
//		List<StoreInfo> StoreInfoList1 = ss.selectf1(storeInfo);
//		model.addAttribute("floor1", StoreInfoList1);
//		storeInfo.setCategoryId(Long.valueOf(2));
//		storeInfo.setProDes("f");
//		List<StoreInfo> StoreInfoList2 = ss.selectf1(storeInfo);
//		model.addAttribute("floor2", StoreInfoList2);
//		storeInfo.setCategoryId(Long.valueOf(3));
//		List<StoreInfo> StoreInfoList3 = ss.selectf1(storeInfo);
//		model.addAttribute("floor3", StoreInfoList3);
//		storeInfo.setCategoryId(Long.valueOf(4));
//		storeInfo.setProDes("f");
//		List<StoreInfo> StoreInfoList4 = ss.selectf1(storeInfo);
//		model.addAttribute("floor4", StoreInfoList4);
//		// 获得用户
//		UserInfo userInfo = us.selectByPrimary(Long.valueOf(1));
//		return "q_shop";
//
//	}
	// ==============================================================================

	// 前往问答首页
	@RequestMapping("goIndex")
	public String goIndex(Model model) {
		// 热门问题
//		List<QuestionInfo> qL1 = qs.selhotques();
//		model.addAttribute("qL1", qL1);
//		// 待回答问题
//		List<QuestionInfo> qL2 = qs.selhotques1();
//		model.addAttribute("qL2", qL2);
		return "q_index";
	}

	// 问答搜索框
	@RequestMapping("checkQues")
	public String checkQues(String quesDes, Model model) {
		// 热门问题
//		List<QuestionInfo> ql3 = qs.selquesAdd("%" + quesDes + "%");
//		model.addAttribute("qL3", ql3);
//		// 待回答问题
//		List<QuestionInfo> ql4 = qs.selquesAddNo("%" + quesDes + "%");
//		model.addAttribute("qL4", ql4);
		return "q_index";
	}

	// 前往照片PK
	@RequestMapping("goPK")
	public String goPK(Model model) {
//		List<PhotoPK> pk1 = ps.select1();
//		model.addAttribute("pk1", pk1);
//		List<PhotoPK> pk2 = ps.select2();
//		model.addAttribute("pk2", pk2);
//		List<PhotoPKMessage> pk3 = pms.select(Long.valueOf(1));
//		
//		//头像转换
//
//		for (int i = 0; i < pk3.size(); i++) {
//			byte[] b = pk3.get(i).getUserInfo().getUserIcon();
//			String img_path = changeImg(b);
//			pk3.get(i).getUserInfo().setUserHead(img_path);
//		}
//		
//		
//		model.addAttribute("pk3", pk3);
//		
//		List<PhotoPKMessage> pk4 = pms.select(Long.valueOf(2));
//		
//		//头像转换
//
//		for (int i = 0; i < pk4.size(); i++) {
//			byte[] b = pk4.get(i).getUserInfo().getUserIcon();
//			String img_path = changeImg(b);
//			pk4.get(i).getUserInfo().setUserHead(img_path);
//		}
//		
//		model.addAttribute("pk4", pk4);
		return "q_pk";
	}

	// 照片pk留言回复重定向
//	@RequestMapping("replyl")
//	public String replyl(PhotoPKMessage pm) {
//		UserInfo ui = us.selectByPrimary(Long.valueOf(2));
//		pm.setUserInfo(ui);
//		pms.insert(pm);
//		return "redirect:/goPK";
//	}

	// 前往结伴
	@RequestMapping("goTogether")
	public String goTogether(Model model, HttpServletRequest request) {
//		List<Together> tl = ts.selectAll();
//		model.addAttribute("tl", tl);
//		String p = request.getParameter("p");
//		int pageNum = 1;// 当前页面编号
//		int pageSize = 3;// 遍历数量
//		if (p != null) {
//			pageNum = Integer.parseInt(p);
//		} else {
//			p = String.valueOf(1);
//		}
//		int count = tl.size();
//		int pageCount;
//		if (count % pageSize == 0) {
//			pageCount = count / pageSize;
//		} else {
//			pageCount = (count / pageSize) + 1;
//		}
//		model.addAttribute("p", p);
//		model.addAttribute("count", count);// 信息数量
//		model.addAttribute("pageSize", pageSize);// 页面数据数量
//		model.addAttribute("pageNum", pageNum);// 当前页数
//		model.addAttribute("pageCount", pageCount);// 总页数
		return "q_together";
	}

//	// 前往结伴分页
//	@RequestMapping("checkto")
//	@ResponseBody
//	public List<Together> checkto1(MdUser userInfo, Integer pageNum, Integer pageSize, String toTitle, String toDate1)
//			throws ParseException {
//
//		List<Together> tlo = new ArrayList<Together>();
//		if (toDate1.length() > 5) {
//			Date toDate = new SimpleDateFormat("yyyy/MM/dd").parse(toDate1);
//			Together together = new Together();
//			together.setToDate(toDate);
//			together.setToTitle("%" + toTitle + "%");
//			if (toTitle != null) {
//				if (!toTitle.equals("全部")) {
//					tlo = ts.selectBy(together);
//				} else {
//					tlo = ts.selectByDate(toDate);
//				}
//			} else {
//				tlo = ts.selectByDate(toDate);
//			}
//		} else {
//			if (!toTitle.equals("全部")) {
//				tlo = ts.selectByCity("%" + toTitle + "%");
//			} else {
//				tlo = ts.selectAll();
//			}
//		}
//		List<Together> tt = new ArrayList<Together>();
//
//		Integer from = (pageNum - 1) * (pageSize + 1);
//		Integer to = pageNum * (pageSize + 1);
//		if (tlo.size() < to) {
//			to = tlo.size();
//		}
//		tt.addAll(tlo.subList(from, to));
//		return tt;
//	}
//
//	// 获得页面参数
//	@RequestMapping("checkCity")
//	@ResponseBody
//	public Map<String, Integer> checkCity(String toTitle, Model model, UserInfo userInfo, String toDate1)
//			throws ParseException {
//		Map<String, Integer> adminMap = new HashMap<String, Integer>();
//		List<Together> tlo = new ArrayList<Together>();
//		if (toDate1.length() > 5) {
//			Date toDate = new SimpleDateFormat("yyyy/MM/dd").parse(toDate1);
//			Together together = new Together();
//			together.setToDate(toDate);
//			together.setToTitle("%" + toTitle + "%");
//			if (toTitle != null) {
//				if (!toTitle.equals("全部")) {
//					tlo = ts.selectBy(together);
//				} else {
//					tlo = ts.selectByDate(toDate);
//				}
//			} else {
//				tlo = ts.selectByDate(toDate);
//			}
//		} else {
//			if (!toTitle.equals("全部")) {
//				tlo = ts.selectByCity("%" + toTitle + "%");
//			} else {
//				tlo = ts.selectAll();
//			}
//		}
//		Integer pageSize = 2;
//		Integer count = tlo.size();
//		Integer pageCount;
//		Integer pageNum = 1;
//		if (count % (pageSize + 1) == 0) {
//			pageCount = count / (pageSize + 1);
//		} else {
//			pageCount = (count / (pageSize + 1)) + 1;
//		}
//		adminMap.put("pageCount", pageCount);
//		adminMap.put("count", count);
//		adminMap.put("pageNum", pageNum);
//		adminMap.put("pageSize", pageSize);
//		return adminMap;
//	}
//
//	// 前往当地人
//	@RequestMapping("goLocal")
//	public String goLocal1(Model model) {
//		List<Local> lls = ls.selectAll();
//		String img_path = null;
//		for (int i = 0; i < lls.size(); i++) {
//			byte[] b = lls.get(i).getUserInfo().getUserIcon();
//			img_path = changeImg(b);
//			lls.get(i).getUserInfo().setUserHead(img_path);
//		}
//
//		int pageSize = 2;// 遍历数量
//		int pageNum = 1;// 当前页面编号
//		int count = lls.size();
//		int pageCount;
//		if (count % (pageSize + 1) == 0) {
//			pageCount = count / (pageSize + 1);
//		} else {
//			pageCount = (count / (pageSize + 1)) + 1;
//		}
//
//		model.addAttribute("lls", lls);
//		model.addAttribute("count", count);// 信息数量
//		model.addAttribute("pageSize", pageSize);// 页面数据数量
//		model.addAttribute("pageNum", pageNum);// 当前页数
//		model.addAttribute("pageCount", pageCount);// 总页数
//		return "q_local";
//	}
//
//	/*
//	 * 图片的img的二进制转化为图片文件
//	 */
//	public String changeImg(byte[] b) {
//		// 指定从数据库读取出来的图片的保存路径及名字
//		String imgPath = "upload\\UserImage_FromDB.jpg";
//		try {
//			// 图片的路径
//			OutputStream os = new FileOutputStream(new File(
//					"G:\\EclipseE\\workSpace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\mfw\\"
//							+ imgPath));
//			os.write(b);
//			os.close();
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		return imgPath;
//	}
//
//	// 当地人根据不同情况进行分页
//	@RequestMapping("checklo")
//	@ResponseBody
//	public List<Local> checklo(UserInfo userInfo, Integer pageNum, Integer pageSize, String loAdd) {
//		List<Local> list = new ArrayList<Local>();
//		if (loAdd != null) {
//			list = ls.select1("%" + loAdd + "%");
//		} else {
//			list = ls.selectAll();
//		}
//		List<Local> ll = new ArrayList<Local>();
//
//		Integer from = (pageNum - 1) * (pageSize + 1);
//		Integer to = pageNum * (pageSize + 1);
//		if (list.size() < to) {
//			to = list.size();
//		}
//
//		for (int i = 0; i < ll.size(); i++) {
//			byte[] b = ll.get(i).getUserInfo().getUserIcon();
//			String img_path = changeImg(b);
//			ll.get(i).getUserInfo().setUserHead(img_path);
//		}
//
//		ll.addAll(list.subList(from, to));
//		return ll;
//	}
//
//	// 获得页面参数
//	@RequestMapping("checkContent")
//	@ResponseBody
//	public Map<String, Integer> checkLoAdd1(String loAdd, Model model, UserInfo userInfo) {
//		Map<String, Integer> adminMap = new HashMap<String, Integer>();
//		List<Local> lll = ls.select1("%" + loAdd + "%");
//		Integer pageSize = 2;
//		Integer count = lll.size();
//		Integer pageCount;
//		Integer pageNum = 1;
//		if (count % (pageSize + 1) == 0) {
//			pageCount = count / (pageSize + 1);
//		} else {
//			pageCount = (count / (pageSize + 1)) + 1;
//		}
//		adminMap.put("pageCount", pageCount);
//		adminMap.put("count", count);
//		adminMap.put("pageNum", pageNum);
//		adminMap.put("pageSize", pageSize);
//		return adminMap;
//	}

}
