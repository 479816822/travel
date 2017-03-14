package com.cn.qd.travel.constant;

/**
 * 游记常量表
 * 
 * @author liufu
 *
 */

public class MdTravelNoteConstant {

	// *************************************数据表名*********************//
	/**
	 * 游记段落表---------------------------
	 */
	public static final String MD_TRAVEL_TABLE="md_travel_note";
	/**
	 * 游记段落表
	 */
	public static final String MD_TRAVEL_pagragraph_TABLE="MD_Travel_Paragraph";

	/**
	 * 游记段落表---------------------------游记主键
	 */

	public static final String TRAVEL_ID="mdRecid";
	/**
	 * 游记段落表---------------------------游记原主题
	 */
	public static final String TRAVEL_OLD_THEME="mdAlertString";
	/**
	 * 游记段落表---------------------------游记封面图片
	 */
	public static final String TRAVEL_THEME_IMG="mdThemeImg";
	/**
	 * 游记段落表---------------------------写游记的时间
	 */

	public static final String TRAVEL_CREATE_DATA="mdCreateTime";
	/**
	 * 游记段落表---------------------------游记发表人
	 */

	public static final String TRAVEL_USER="mdCreateUserId";
	/**
	 * 游记段落表---------------------------游记关键字
	 */

	public static final String TRAVEL_KEY_WORD="mdKeyWord";
	/**
	 * 游记段落表---------------------------游记主题
	 */

	public static final String TRAVEL_THEME="mdTheme";
	/**
	 * 游记段落表---------------------------游记背景音乐
	 */

	public static final String TRAVEL_MUSIC="mdMusic";
	/**
	 * 游记段落表---------------------------开始日期
	 */

	public static final String TRAVEL_START_TIME="mdStartTime";
	/**
	 * 游记段落表---------------------------总花费时间
	 */

	public static final String TRAVEL_COST_DAY="mdDayNumber";
	/**
	 * 游记段落表---------------------------参与人
	 */

	public static final String TRAVEL_PEOPLE="mdTravelPeople";
	/**
	 * 游记段落表---------------------------花费费用
	 */

	public static final String TRAVEL_COST_MONEY="mdCostMoney";
	/**
	 * 游记段落表----------------------------目的地
	 */
	public static final String TRAVEL_AIM_ADDRESS="mdAimAddress";
	
	
	//******************************游记段落常量字段*****************
	/**
	 * 游记段落表----------------------------游记段落主键
	 */
    public static final String TRAVEL_PARAGRAPH_ID="mdRecid";
	/**
	 * 游记段落表----------------------------游记段落名
	 */
    public static final String TRAVEL_PARAGRAPH_NAME="mdParagraphName";
	/**
	 * 游记段落表----------------------------游记照片
	 */
    public static final String TRAVEL_PARAGRAPH_IMG="mdImg";
	/**
	 * 游记段落表----------------------------游记视频
	 */
    public static final String TRAVEL_PARAGRAPH_VIDEO="mdVideo";
	/**
	 * 游记段落表----------------------------游记段落编号
	 */
    public static final String TRAVEL_PARAGRAPH_CODE="mdStdcode";
	/**
	 * 游记段落表----------------------------游记主表关联
	 */
    public static final String TRAVEL_PARAGRAPH_TRAVEL_ID="mdTavelId";
	/**
	 * 游记段落表----------------------------游记主题内容
	 */
    public static final String TRAVEL_PARAGRAPH_CONTENT="mdContent";

}
