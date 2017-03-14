package com.cn.qd.travel.constant;

/**
 * 评论常量字段
 * 
 * @author liufu
 *
 */
public class MdCommentConstant {

	// *************************游记评论表名
	/**
	 * ----------游记一级评论表---------
	 */
	public static final String COMMENT_ONE_TABLE_NAME = "MD_Comment_ONE";
	/**
	 * -----------游记多级评论----------------------
	 */
	public static final String COMMENT_MORE_TABLE_NAME = "MD_Comment_More";
	// ************************游记一级评论表******************

	/**
	 * 游记一级评论----------------------评论主键
	 */
	public static final String COMMENT_ONE_ID = "mdRecid";
	/**
	 * 游记一级评论----------------------
	 */
	public static final String COMMENT_ONE_NAME = "mdStdname";

	/**
	 * 游记一级评论----------------------评论时间
	 */
	public static final String COMMENT_ONE_COMMENT_DATA = "mdCommentTime";
	/**
	 * 游记一级评论----------------------评论文本内容
	 */
	public static final String COMMENT_ONE_CONTENT = "mdCommentContent";
	/**
	 * 游记一级评论----------------------评论人
	 */
	public static final String COMMENT_ONE_COMMENT_PEOPLE = "mdCommentPeople";
	/**
	 * 游记一级评论----------------------评论照片
	 */
	public static final String COMMENT_ONE_IMG = "mdImg";
	/**
	 * 游记一级评论----------------------评论视频
	 */
	public static final String COMMENT_ONE_VIDEO = "mdVideo";
	/**
	 * 游记一级评论----------------------获得赞数
	 */
	public static final String COMMENT_ONE_PRAISE = "mdPraise";
	/**
	 * 游记一级评论----------------------关联的游记主键
	 */
	public static final String COMMENT_ONE_TRAVEL_ID = "mdTravelId";

	// ******************游记二级、多级评论表
	/**
	 * 游记多级评论----------------------多级评论表主键
	 */
	public static final String COMMENT_MORE_ID = "mdRecid";
	/**
	 * 游记多级评论----------------------评论时间
	 */
	public static final String COMMENT_MORE_COMMENT_DATA = "mdCommentTime";
	/**
	 * 游记多级评论----------------------评论的为文本内容
	 */
	public static final String COMMENT_MORE_CONTENT = "mdCommentContent";
	/**
	 * 游记多级评论----------------------评论人
	 */
	public static final String COMMENT_MORE_PEOPLE = "mdCommentPeople";
	/**
	 * 游记多级评论----------------------评论照片
	 */
	public static final String COMMENT_MORE_IMG = "mdImg";
	/**
	 * 游记多级评论---------------------评论视频
	 */
	public static final String COMMENT_MORE_VIDEO = "mdVideo";
	/**
	 * 游记多级评论----------------------评论获赞数
	 */
	public static final String COMMENT_MORE_PRAISE = "mdPraise";
	/**
	 * 游记多级评论----------------------关联多久评论
	 */
	public static final String COMMENT_MORE_COMMENT_ID = "mdCommentMoreId";
	/**
	 * 游记多级评论----------------------关联一级评论
	 */
	public static final String COMMENT_MORE_ONE_ID = "mdCommentOneId";

}
