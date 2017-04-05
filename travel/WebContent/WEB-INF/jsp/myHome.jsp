<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>${user.mdUserName}-ALU主页</title>
<link href="css/myhome/myHome.css" rel="stylesheet" type="text/css" />
<link href="css/myhome/footer.css" rel="stylesheet" type="text/css" />
<link href="css/myhome/myHome1.css" rel="stylesheet" type="text/css" />
<link href="css/myhome/toolbar.css" rel="stylesheet" type="text/css" />

<script language="javascript" src="css/myhome/myhome.js"
	type="text/javascript"></script>

<script type="text/javascript">
	window.Env = {
		"profileSetting" : {
			"banner_cover" : "",
			"banner_cover_url" : "",
			"banner_map_type" : 0,
			"bg_type" : 0,
			"cover_pic" : 0
		},
		"profileConfig" : {
			"page_bg_type_config" : [ {
				"bodyClass" : "bg0"
			}, {
				"bodyClass" : "bg2"
			}, {
				"bodyClass" : "bg3"
			}, {
				"bodyClass" : "bg4"
			}, {
				"bodyClass" : "bg1"
			} ],
			"banner_map_type_config" : [ {
				"name" : "\u7ecf\u5178",
				"thumbnail" : "\/images\/home_new2015\/m1.gif",
				"className" : "maps-theme-default",
				"regionFill" : [ {
					"fill" : "#cccccc",
					"fill-opacity" : "0.1"
				}, {
					"fill" : "#ffe5a6",
					"fill-opacity" : "0.9"
				}, {
					"fill" : "#ffd267",
					"fill-opacity" : "0.9"
				}, {
					"fill" : "#ffba14",
					"fill-opacity" : "0.9"
				}, {
					"fill" : "#ff9000",
					"fill-opacity" : "0.9"
				} ]
			}, {
				"name" : "\u8dc3\u5165\u84dd\u8272\u661f\u7403",
				"thumbnail" : "\/images\/home_new2015\/m2.gif",
				"className" : "maps-theme-blue",
				"regionFill" : [ {
					"fill" : "#ffffff",
					"fill-opacity" : "0.8"
				}, {
					"fill" : "#4ea3d2",
					"fill-opacity" : "0.8"
				}, {
					"fill" : "#509ed3",
					"fill-opacity" : "0.8"
				}, {
					"fill" : "#3589cf",
					"fill-opacity" : "0.8"
				}, {
					"fill" : "#0066cc",
					"fill-opacity" : "0.8"
				} ]
			}, {
				"name" : "\u65c5\u884c\u8ba9\u4e16\u754c\u6709\u5149",
				"thumbnail" : "\/images\/home_new2015\/m3.gif",
				"className" : "maps-theme-black",
				"regionFill" : [ {
					"fill" : "#2d2e32",
					"fill-opacity" : "1"
				}, {
					"fill" : "#ffcf59",
					"fill-opacity" : "1"
				}, {
					"fill" : "#ffbd21",
					"fill-opacity" : "1"
				}, {
					"fill" : "#ff9c00",
					"fill-opacity" : "1"
				}, {
					"fill" : "#fd703a",
					"fill-opacity" : "1"
				} ]
			}, {
				"name" : "\u5927\u822a\u6d77\u65f6\u4ee3",
				"thumbnail" : "\/images\/home_new2015\/m4.gif",
				"className" : "maps-theme-green",
				"regionFill" : [ {
					"fill" : "#a3dde0",
					"fill-opacity" : "0.8"
				}, {
					"fill" : "#77d9dc",
					"fill-opacity" : "0.8"
				}, {
					"fill" : "#35c9cb",
					"fill-opacity" : "0.8"
				}, {
					"fill" : "#0eb0b2",
					"fill-opacity" : "0.8"
				}, {
					"fill" : "#039ba4",
					"fill-opacity" : "0.8"
				} ]
			}, {
				"name" : "PINK PUNK",
				"thumbnail" : "\/images\/home_new2015\/m5.gif",
				"className" : "maps-theme-red",
				"regionFill" : [ {
					"fill" : "#ffffff",
					"fill-opacity" : "0.8"
				}, {
					"fill" : "#f7ae9c",
					"fill-opacity" : "0.8"
				}, {
					"fill" : "#f7ae9c",
					"fill-opacity" : "0.8"
				}, {
					"fill" : "#e46547",
					"fill-opacity" : "0.8"
				}, {
					"fill" : "#db4c2b",
					"fill-opacity" : "0.8"
				} ]
			} ]
		},
		"china_mdd_lng_lat" : {
			"10444" : [ 36.0670355813, 120.38264751434 ]
		},
		"world_mdd_lng_lat" : [],
		"target_uid" : 62143073,
		"WWW_HOST" : "www.mafengwo.cn",
		"syste_img/img_HOST" : "images.mafengwo.net",
		"P_HOST" : "passport.mafengwo.cn",
		"P_HTTP" : "https:\/\/passport.mafengwo.cn",
		"UID" : 62143073,
		"CSTK" : "b9bdee18b28c488ae52e1b7d1c74ea26_5514d2c44d3b9dc45138594a2fc06b72"
	};
</script>

<script type="text/javascript">
$(function() {
	//js代码处理动态效果
	var url = "";

	var img_src = "";

	//1.ajax数据异步更新用户的个性签名
	$("#_j_introsaver").click(function() {
		var string= $("#_j_introarea").val();
		var id= $("#user_id").html();
		var user= {
				mdUserRecid:id,
				mdSignature:string}
		url = "signatureUpdate"
		ajax(user);
	});

	//2.ajax进行顶的数据同步更新
	$(".praise_1").click(function() {
		var travel = {
			"traId" : $(this).parent().children().html(),
			"traPraise" : $(this).parent().children().next().html()
		}
		url = "updataPraise"
		ajax1($(this).parent().children().next(), travel);
	});

	//3.用户重新设置封面
	$(".set_set11")
			.click(
					function() {
						$(".page_img").addClass("page_img1");
						//进行ajax数据用户当前游记的所有的图片查询
						var travelA = {
							"traId" : $(this).prev().html()
						};
						$
								.ajax({
									type : "POST",
									url : "getAllTravelImg",
									data : JSON.stringify(travelA),
									contentType : 'application/json; charset=utf-8',
									dataType : 'json',
									success : function(msg) {
										//更新数据插入所有的图片数据
										var strs = new Array(); //定义一数组
										strs = msg.allImg.split(";"); //字符分割 
										//创建li元素进行数据的显示
										for (i = 0; i < strs.length; i++) {
											var str = "<li class='page_img113'><img class='page_img114' src='img/"+strs[i]+"'></li>"
											var $node = $(str);
											$(".page_img112").append($node);
										}
										$(".page_img1111").addClass(
												"page_img111112");
									},
									error : function(msg) {
										//提示输需要入的信息
									}
								});

					})

	//4.确定替换封面的背景图片true_true
	$(".true_true").click(function() {
		$()
	});

	//5.取消则退出,移除样式
	$(".back").click(function() {
		$("#page").next().removeClass("page_img111112");
		$(".page_img").removeClass("page_img1");
	});

	//6.图片获得焦点时给img_src赋值
	$(".page_img114").click(function() {
		img_src = $(this).children().attr("src");
	})

	//7.用户进行留言
	$(".leave_word")
			.click(
					function() {
						//获得留言的内容
						var leave = {
							mdHostUserRecid : $("#user_id").html(),
							mdLvMessage : $(this).prev().val(),
							mdLvRefId : ""//父节点
						};
						
						$
								.ajax({
									type : "POST",
									url : "leaveWord",
									data : leave,
									dataType : 'json',
									success : function(msg) {
										//更新数据
										var str = "<li><div class='word_one'><div class='word_one_one'><img  src='"+msg.message.lvUser.userHeadImg+" 'class='word_one_one'></div><div class='word_one_two'><div class='word_one_two_one'>"
												+ msg.message.lvUser.mdUserName
												+ "</div><div class='word_one_two_two'>"
												+ msg.message.mdLvTime
												+ "</div></div></div><div class='word_two'>"
												+ msg.message.mdLvMessage
												+ "</div></li>";
										var $node = $(str);
										$("._j_msgboard_list")
												.append($node);
										$("._j_msgboard_area").val("");
									},
									error : function(msg) {
										//提示输需要入的信息
									}
								});

					})

	//ajax公用的方法
	function ajax(user) {
		$.ajax({
			type : "POST",
			url : url,
			data : user,
			dataType : "json",
			success : function(msg) {
				alert(msg)
				$("#true").show();
			},
			error : function(msg) {
				//提示输需要入的信息

			}
		});
	}

		//ajax公用的方法
		function ajax1(p, travel) {
			$.ajax({
				type : "POST",
				url : url,
				data : JSON.stringify(travel),
				contentType : 'application/json; charset=utf-8',
				dataType : 'json',
				success : function(msg) {
					//更新数据
					p.html(msg.praiseNum.traPraise);
				},
				error : function(msg) {
					//提示输需要入的信息

				}
			});
		}

	});
</script>

</head>

<body>

	<!-- 本用户的id -->
	<span style="display: none;" id="user_id">${user.mdUserRecid}</span>
	<div class="topBar">

		<div class="header1">
			<iframe src="Mheader" frameborder="0" scrolling="no" marginheight="0"
					marginwidth="0" style="margin: 0px auto;"></iframe>
		</div>
	</div>





	<!--内容-->
	<!--内容-->
	<!--内容-->

	<style>
._j_coverpic_wrap {
	display: none
}

.cover_with_pic ._j_coverpic_wrap {
	display: block
}

.cover_with_pic .maps-container {
	display: none
}

.MUsersBehavior {
	margin-top: 0
}

.map_default_start .btn-addPath {
	position: static
}

.hold_cat {
	user-select: none;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	-khtml-user-select: none;
}
</style>


	<div class="main">
		<div class="banner">

			<style>
.invisible {
	opacity: 0.01;
	filter: alpha(opacity = 1);
}

.invisible .maps-container {
	opacity: 0.01;
	filter: alpha(opacity = 1);
}
</style>
			<!-- 地图特效的控制-->
			<!-- 地图特效的控制-->
			<div class="index_banner" id="_j_banner">
				<input type="hidden" id="_j_worldmapdata"
					data-map="[{&quot;mdd_list&quot;:[{&quot;mddid&quot;:10444,&quot;name&quot;:&quot;\u9752\u5c9b&quot;,&quot;time&quot;:&quot;2016-09-06 13:36:59&quot;,&quot;path_num&quot;:1,&quot;lat&quot;:36.0670355813,&quot;lng&quot;:120.38264751434}],&quot;id&quot;:21536,&quot;name&quot;:&quot;\u4e2d\u56fd&quot;,&quot;path_num&quot;:1,&quot;time&quot;:&quot;2016-09-06 13:36:59&quot;,&quot;year&quot;:&quot;2016&quot;,&quot;month&quot;:&quot;09&quot;}]" />
				<input type="hidden" id="_j_chinamapdata"
					data-map="[{&quot;mdd_list&quot;:[{&quot;mddid&quot;:10444,&quot;name&quot;:&quot;\u9752\u5c9b&quot;,&quot;time&quot;:&quot;2016-09-06 13:36:59&quot;,&quot;path_num&quot;:1}],&quot;id&quot;:12976,&quot;name&quot;:&quot;\u5c71\u4e1c\u7701&quot;,&quot;path_num&quot;:1,&quot;time&quot;:&quot;2016-09-06 13:36:59&quot;,&quot;year&quot;:&quot;2016&quot;,&quot;month&quot;:&quot;09&quot;}]" />
				<input type="hidden" id="_j_districtdata"
					data-district="{&quot;17344&quot;:{&quot;name&quot;:&quot;\u5317\u7f8e\u6d32&quot;,&quot;country_mdds&quot;:{&quot;17359&quot;:{&quot;name&quot;:&quot;\u5b89\u63d0\u74dc\u548c\u5df4\u5e03\u8fbe&quot;,&quot;ename&quot;:&quot;Antigua and Barbuda&quot;,&quot;pinyin&quot;:&quot;antiguahebabuda&quot;},&quot;17366&quot;:{&quot;name&quot;:&quot;\u5df4\u54c8\u9a6c&quot;,&quot;ename&quot;:&quot;Bahamas&quot;,&quot;pinyin&quot;:&quot;bahama&quot;},&quot;17369&quot;:{&quot;name&quot;:&quot;\u5df4\u5df4\u591a\u65af&quot;,&quot;ename&quot;:&quot;Barbados&quot;,&quot;pinyin&quot;:&quot;babaduosi&quot;},&quot;17371&quot;:{&quot;name&quot;:&quot;\u4f2f\u5229\u5179&quot;,&quot;ename&quot;:&quot;Belize&quot;,&quot;pinyin&quot;:&quot;bolizi&quot;},&quot;17374&quot;:{&quot;name&quot;:&quot;\u767e\u6155\u5927&quot;,&quot;ename&quot;:&quot;Bermuda&quot;,&quot;pinyin&quot;:&quot;baimuda&quot;},&quot;17386&quot;:{&quot;name&quot;:&quot;\u52a0\u62ff\u5927&quot;,&quot;ename&quot;:&quot;Canada&quot;,&quot;pinyin&quot;:&quot;jianada&quot;},&quot;17396&quot;:{&quot;name&quot;:&quot;\u54e5\u65af\u8fbe\u9ece\u52a0&quot;,&quot;ename&quot;:&quot;Costa Rica&quot;,&quot;pinyin&quot;:&quot;gesidalijia&quot;},&quot;17398&quot;:{&quot;name&quot;:&quot;\u53e4\u5df4&quot;,&quot;ename&quot;:&quot;Cuba&quot;,&quot;pinyin&quot;:&quot;guba&quot;},&quot;17405&quot;:{&quot;name&quot;:&quot;\u591a\u7c73\u5c3c\u52a0&quot;,&quot;ename&quot;:&quot;Dominican Republic&quot;,&quot;pinyin&quot;:&quot;duominijia&quot;},&quot;17426&quot;:{&quot;name&quot;:&quot;\u683c\u6797\u7eb3\u8fbe&quot;,&quot;ename&quot;:&quot;Grenada&quot;,&quot;pinyin&quot;:&quot;gelinnada&quot;},&quot;17428&quot;:{&quot;name&quot;:&quot;\u5371\u5730\u9a6c\u62c9&quot;,&quot;ename&quot;:&quot;Guatemala&quot;,&quot;pinyin&quot;:&quot;weidimala&quot;},&quot;17433&quot;:{&quot;name&quot;:&quot;\u6d77\u5730&quot;,&quot;ename&quot;:&quot;Haiti&quot;,&quot;pinyin&quot;:&quot;haidi&quot;},&quot;17434&quot;:{&quot;name&quot;:&quot;\u6d2a\u90fd\u62c9\u65af&quot;,&quot;ename&quot;:&quot;Honduras&quot;,&quot;pinyin&quot;:&quot;hongdulasi&quot;},&quot;17444&quot;:{&quot;name&quot;:&quot;\u7259\u4e70\u52a0&quot;,&quot;ename&quot;:&quot;Jamaica&quot;,&quot;pinyin&quot;:&quot;yamaijia&quot;},&quot;17467&quot;:{&quot;name&quot;:&quot;\u5723\u5362\u897f\u4e9a&quot;,&quot;ename&quot;:&quot;Saint Lucia&quot;,&quot;pinyin&quot;:&quot;shengluxiya&quot;},&quot;17477&quot;:{&quot;name&quot;:&quot;\u58a8\u897f\u54e5&quot;,&quot;ename&quot;:&quot;Mexico&quot;,&quot;pinyin&quot;:&quot;moxige&quot;},&quot;17481&quot;:{&quot;name&quot;:&quot;\u8499\u7279\u585e\u62c9\u7279&quot;,&quot;ename&quot;:&quot;Montserrat&quot;,&quot;pinyin&quot;:&quot;mengtesailate&quot;},&quot;17492&quot;:{&quot;name&quot;:&quot;\u5c3c\u52a0\u62c9\u74dc&quot;,&quot;ename&quot;:&quot;Nicaragua&quot;,&quot;pinyin&quot;:&quot;nijialagua&quot;},&quot;17502&quot;:{&quot;name&quot;:&quot;\u5df4\u62ff\u9a6c&quot;,&quot;ename&quot;:&quot;Panama&quot;,&quot;pinyin&quot;:&quot;banama&quot;},&quot;17515&quot;:{&quot;name&quot;:&quot;\u8428\u5c14\u74e6\u591a&quot;,&quot;ename&quot;:&quot;El Salvador&quot;,&quot;pinyin&quot;:&quot;saerwaduo&quot;},&quot;17539&quot;:{&quot;name&quot;:&quot;\u7279\u7acb\u5c3c\u8fbe\u548c\u591a\u5df4\u54e5&quot;,&quot;ename&quot;:&quot;Trinidad and Tobago&quot;,&quot;pinyin&quot;:&quot;telinidaheduobage&quot;},&quot;17549&quot;:{&quot;name&quot;:&quot;\u7f8e\u56fd&quot;,&quot;ename&quot;:&quot;United States of America&quot;,&quot;pinyin&quot;:&quot;meiguo&quot;},&quot;17555&quot;:{&quot;name&quot;:&quot;\u82f1\u5c5e\u7ef4\u4eac\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;Virgin Islands(British)&quot;,&quot;pinyin&quot;:&quot;yingshuweijingqundao&quot;},&quot;17570&quot;:{&quot;name&quot;:&quot;\u591a\u7c73\u5c3c\u514b&quot;,&quot;ename&quot;:&quot;Dominica&quot;,&quot;pinyin&quot;:&quot;duominike&quot;},&quot;17571&quot;:{&quot;name&quot;:&quot;\u5723\u6587\u68ee\u7279\u548c\u683c\u6797\u7eb3\u4e01\u65af&quot;,&quot;ename&quot;:&quot;Saint Vincent and the Grenadines&quot;,&quot;pinyin&quot;:&quot;shengwensentehegelinnadingsi&quot;},&quot;17572&quot;:{&quot;name&quot;:&quot;\u5723\u57fa\u8328\u548c\u5c3c\u7ef4\u65af&quot;,&quot;ename&quot;:&quot;Saint Kitts and Nevis&quot;,&quot;pinyin&quot;:&quot;shengjiciheniweisi&quot;},&quot;17898&quot;:{&quot;name&quot;:&quot;\u6ce2\u591a\u9ece\u5404&quot;,&quot;ename&quot;:&quot;Puerto Rico&quot;,&quot;pinyin&quot;:&quot;boduolige&quot;},&quot;17899&quot;:{&quot;name&quot;:&quot;\u7f8e\u5c5e\u7ef4\u5c14\u4eac\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;United States Virgin Islands&quot;,&quot;pinyin&quot;:&quot;meishuweierjingqundao&quot;},&quot;19410&quot;:{&quot;name&quot;:&quot;\u6cd5\u5c5e\u5723\u9a6c\u4e01&quot;,&quot;ename&quot;:&quot;Saint Martin (French part)&quot;,&quot;pinyin&quot;:&quot;fashushengmading&quot;},&quot;19764&quot;:{&quot;name&quot;:&quot;\u963f\u9c81\u5df4&quot;,&quot;ename&quot;:&quot;Aruba&quot;,&quot;pinyin&quot;:&quot;aluba&quot;},&quot;19765&quot;:{&quot;name&quot;:&quot;\u5e93\u62c9\u7d22&quot;,&quot;ename&quot;:&quot;Cura\u00e7ao&quot;,&quot;pinyin&quot;:&quot;kulasuo&quot;},&quot;19766&quot;:{&quot;name&quot;:&quot;\u8377\u5c5e\u5723\u9a6c\u4e01&quot;,&quot;ename&quot;:&quot;Sint Maarten (Dutch part)&quot;,&quot;pinyin&quot;:&quot;heshushengmading&quot;},&quot;27550&quot;:{&quot;name&quot;:&quot;\u8377\u5170\u52a0\u52d2\u6bd4\u533a&quot;,&quot;ename&quot;:&quot;&quot;,&quot;pinyin&quot;:&quot;helanjialebiqu&quot;},&quot;27551&quot;:{&quot;name&quot;:&quot;\u7f8e\u56fd\u672c\u571f\u5916\u5c0f\u5c9b\u5c7f&quot;,&quot;ename&quot;:&quot;United States Minor Outlying Islands&quot;,&quot;pinyin&quot;:&quot;meiguobentuwaixiaodaoyu&quot;}},&quot;pinyin&quot;:&quot;beimeizhou&quot;},&quot;17346&quot;:{&quot;name&quot;:&quot;\u5927\u6d0b\u6d32&quot;,&quot;country_mdds&quot;:{&quot;17362&quot;:{&quot;name&quot;:&quot;\u6fb3\u5927\u5229\u4e9a&quot;,&quot;ename&quot;:&quot;Australia&quot;,&quot;pinyin&quot;:&quot;aodaliya&quot;},&quot;17391&quot;:{&quot;name&quot;:&quot;\u5723\u8bde\u5c9b&quot;,&quot;ename&quot;:&quot;Christmas Island&quot;,&quot;pinyin&quot;:&quot;shengdandao&quot;},&quot;17395&quot;:{&quot;name&quot;:&quot;\u5e93\u514b\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;Cook Islands&quot;,&quot;pinyin&quot;:&quot;kukequndao&quot;},&quot;17413&quot;:{&quot;name&quot;:&quot;\u6590\u6d4e&quot;,&quot;ename&quot;:&quot;Fiji&quot;,&quot;pinyin&quot;:&quot;feiji&quot;},&quot;17416&quot;:{&quot;name&quot;:&quot;\u5bc6\u514b\u7f57\u5c3c\u897f\u4e9a\u8054\u90a6&quot;,&quot;ename&quot;:&quot;Micronesia&quot;,&quot;pinyin&quot;:&quot;mikeluonixiyalianbang&quot;},&quot;17449&quot;:{&quot;name&quot;:&quot;\u57fa\u91cc\u5df4\u65af&quot;,&quot;ename&quot;:&quot;Kiribati&quot;,&quot;pinyin&quot;:&quot;jilibasi&quot;},&quot;17474&quot;:{&quot;name&quot;:&quot;\u9a6c\u7ecd\u5c14\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;Marshall Islands&quot;,&quot;pinyin&quot;:&quot;mashaoerqundao&quot;},&quot;17487&quot;:{&quot;name&quot;:&quot;\u7459\u9c81&quot;,&quot;ename&quot;:&quot;Nauru&quot;,&quot;pinyin&quot;:&quot;naolu&quot;},&quot;17490&quot;:{&quot;name&quot;:&quot;\u65b0\u5580\u91cc\u591a\u5c3c\u4e9a&quot;,&quot;ename&quot;:&quot;New Caledonia&quot;,&quot;pinyin&quot;:&quot;xinkaliduoniya&quot;},&quot;17495&quot;:{&quot;name&quot;:&quot;\u7ebd\u57c3&quot;,&quot;ename&quot;:&quot;Niue&quot;,&quot;pinyin&quot;:&quot;niuai&quot;},&quot;17496&quot;:{&quot;name&quot;:&quot;\u8bfa\u798f\u514b\u5c9b&quot;,&quot;ename&quot;:&quot;Norfolk Island&quot;,&quot;pinyin&quot;:&quot;nuofukedao&quot;},&quot;17500&quot;:{&quot;name&quot;:&quot;\u6cd5\u5c5e\u6ce2\u5229\u5c3c\u897f\u4e9a&quot;,&quot;ename&quot;:&quot;French Polynesia&quot;,&quot;pinyin&quot;:&quot;fashubolinixiya&quot;},&quot;17501&quot;:{&quot;name&quot;:&quot;\u5e15\u52b3&quot;,&quot;ename&quot;:&quot;Palau&quot;,&quot;pinyin&quot;:&quot;palao&quot;},&quot;17503&quot;:{&quot;name&quot;:&quot;\u5df4\u5e03\u4e9a\u65b0\u51e0\u5185\u4e9a&quot;,&quot;ename&quot;:&quot;Papua New Guinea&quot;,&quot;pinyin&quot;:&quot;babuyaxinjineiya&quot;},&quot;17525&quot;:{&quot;name&quot;:&quot;\u6240\u7f57\u95e8\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;Solomon Islands&quot;,&quot;pinyin&quot;:&quot;suoluomenqundao&quot;},&quot;17537&quot;:{&quot;name&quot;:&quot;\u6258\u514b\u52b3&quot;,&quot;ename&quot;:&quot;Tokelau&quot;,&quot;pinyin&quot;:&quot;tuokelao&quot;},&quot;17538&quot;:{&quot;name&quot;:&quot;\u6c64\u52a0&quot;,&quot;ename&quot;:&quot;Tonga&quot;,&quot;pinyin&quot;:&quot;tangjia&quot;},&quot;17545&quot;:{&quot;name&quot;:&quot;\u56fe\u74e6\u5362&quot;,&quot;ename&quot;:&quot;Tuvalu&quot;,&quot;pinyin&quot;:&quot;tuwalu&quot;},&quot;17556&quot;:{&quot;name&quot;:&quot;\u8428\u6469\u4e9a&quot;,&quot;ename&quot;:&quot;Samoa&quot;,&quot;pinyin&quot;:&quot;samoya&quot;},&quot;17575&quot;:{&quot;name&quot;:&quot;\u74e6\u52aa\u963f\u56fe&quot;,&quot;ename&quot;:&quot;Vanuatu&quot;,&quot;pinyin&quot;:&quot;wanuatu&quot;},&quot;17895&quot;:{&quot;name&quot;:&quot;\u7f8e\u5c5e\u8428\u6469\u4e9a&quot;,&quot;ename&quot;:&quot;American Samoa&quot;,&quot;pinyin&quot;:&quot;meishusamoya&quot;},&quot;17896&quot;:{&quot;name&quot;:&quot;\u5173\u5c9b&quot;,&quot;ename&quot;:&quot;Guam&quot;,&quot;pinyin&quot;:&quot;guandao&quot;},&quot;17897&quot;:{&quot;name&quot;:&quot;\u5317\u9a6c\u91cc\u4e9a\u7eb3\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;Northern Mariana Islands&quot;,&quot;pinyin&quot;:&quot;beimaliyanaqundao&quot;},&quot;20321&quot;:{&quot;name&quot;:&quot;\u8d6b\u5fb7\u5c9b\u548c\u9ea6\u514b\u5510\u7eb3\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;Heard Island and McDonald Islands&quot;,&quot;pinyin&quot;:&quot;hededaohemaiketangnaqundao&quot;},&quot;20322&quot;:{&quot;name&quot;:&quot;\u79d1\u79d1\u65af\uff08\u57fa\u6797\uff09\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;Cocos (Keeling) Islands&quot;,&quot;pinyin&quot;:&quot;kekesi\uff08jilin\uff09qundao&quot;},&quot;21229&quot;:{&quot;name&quot;:&quot;\u65b0\u897f\u5170&quot;,&quot;ename&quot;:&quot;New Zealand&quot;,&quot;pinyin&quot;:&quot;xinxilan&quot;}},&quot;pinyin&quot;:&quot;dayangzhou&quot;},&quot;17343&quot;:{&quot;name&quot;:&quot;\u975e\u6d32&quot;,&quot;country_mdds&quot;:{&quot;17357&quot;:{&quot;name&quot;:&quot;\u5b89\u54e5\u62c9&quot;,&quot;ename&quot;:&quot;Angola&quot;,&quot;pinyin&quot;:&quot;angela&quot;},&quot;17373&quot;:{&quot;name&quot;:&quot;\u8d1d\u5b81&quot;,&quot;ename&quot;:&quot;Benin&quot;,&quot;pinyin&quot;:&quot;beining&quot;},&quot;17378&quot;:{&quot;name&quot;:&quot;\u535a\u8328\u74e6\u7eb3&quot;,&quot;ename&quot;:&quot;Botswana&quot;,&quot;pinyin&quot;:&quot;bociwana&quot;},&quot;17383&quot;:{&quot;name&quot;:&quot;\u5e03\u57fa\u7eb3\u6cd5\u7d22&quot;,&quot;ename&quot;:&quot;Burkina Faso&quot;,&quot;pinyin&quot;:&quot;bujinafasuo&quot;},&quot;17384&quot;:{&quot;name&quot;:&quot;\u5e03\u9686\u8fea&quot;,&quot;ename&quot;:&quot;Burundi&quot;,&quot;pinyin&quot;:&quot;bulongdi&quot;},&quot;17385&quot;:{&quot;name&quot;:&quot;\u5580\u9ea6\u9686&quot;,&quot;ename&quot;:&quot;Cameroon&quot;,&quot;pinyin&quot;:&quot;kamailong&quot;},&quot;17387&quot;:{&quot;name&quot;:&quot;\u4f5b\u5f97\u89d2&quot;,&quot;ename&quot;:&quot;Cape Verde&quot;,&quot;pinyin&quot;:&quot;fodejiao&quot;},&quot;17388&quot;:{&quot;name&quot;:&quot;\u4e2d\u975e\u5171\u548c\u56fd&quot;,&quot;ename&quot;:&quot;The Central African Republic&quot;,&quot;pinyin&quot;:&quot;zhongfeigongheguo&quot;},&quot;17394&quot;:{&quot;name&quot;:&quot;\u521a\u679c\u5171\u548c\u56fd&quot;,&quot;ename&quot;:&quot;The Republic of Congo&quot;,&quot;pinyin&quot;:&quot;gangguogongheguo&quot;},&quot;17397&quot;:{&quot;name&quot;:&quot;\u79d1\u7279\u8fea\u74e6&quot;,&quot;ename&quot;:&quot;C\u00f4te d'Ivoire&quot;,&quot;pinyin&quot;:&quot;ketediwa&quot;},&quot;17402&quot;:{&quot;name&quot;:&quot;\u5409\u5e03\u63d0&quot;,&quot;ename&quot;:&quot;Djibouti&quot;,&quot;pinyin&quot;:&quot;jibuti&quot;},&quot;17406&quot;:{&quot;name&quot;:&quot;\u963f\u5c14\u53ca\u5229\u4e9a&quot;,&quot;ename&quot;:&quot;Algeria&quot;,&quot;pinyin&quot;:&quot;aerjiliya&quot;},&quot;17408&quot;:{&quot;name&quot;:&quot;\u57c3\u53ca&quot;,&quot;ename&quot;:&quot;Egypt&quot;,&quot;pinyin&quot;:&quot;aiji&quot;},&quot;17409&quot;:{&quot;name&quot;:&quot;\u897f\u6492\u54c8\u62c9&quot;,&quot;ename&quot;:&quot;Western Sahara&quot;,&quot;pinyin&quot;:&quot;xisahala&quot;},&quot;17412&quot;:{&quot;name&quot;:&quot;\u57c3\u585e\u4fc4\u6bd4\u4e9a&quot;,&quot;ename&quot;:&quot;Ethiopia&quot;,&quot;pinyin&quot;:&quot;aisaiebiya&quot;},&quot;17417&quot;:{&quot;name&quot;:&quot;\u52a0\u84ec&quot;,&quot;ename&quot;:&quot;Gabon&quot;,&quot;pinyin&quot;:&quot;jiapeng&quot;},&quot;17418&quot;:{&quot;name&quot;:&quot;\u8d64\u9053\u51e0\u5185\u4e9a&quot;,&quot;ename&quot;:&quot;Equatorial Guinea&quot;,&quot;pinyin&quot;:&quot;chidaojineiya&quot;},&quot;17420&quot;:{&quot;name&quot;:&quot;\u5188\u6bd4\u4e9a&quot;,&quot;ename&quot;:&quot;Gambia&quot;,&quot;pinyin&quot;:&quot;gangbiya&quot;},&quot;17422&quot;:{&quot;name&quot;:&quot;\u52a0\u7eb3&quot;,&quot;ename&quot;:&quot;Ghana&quot;,&quot;pinyin&quot;:&quot;jiana&quot;},&quot;17429&quot;:{&quot;name&quot;:&quot;\u51e0\u5185\u4e9a&quot;,&quot;ename&quot;:&quot;Guinea&quot;,&quot;pinyin&quot;:&quot;jineiya&quot;},&quot;17430&quot;:{&quot;name&quot;:&quot;\u51e0\u5185\u4e9a\u6bd4\u7ecd&quot;,&quot;ename&quot;:&quot;Guinea-Bissau&quot;,&quot;pinyin&quot;:&quot;jineiyabishao&quot;},&quot;17448&quot;:{&quot;name&quot;:&quot;\u80af\u5c3c\u4e9a&quot;,&quot;ename&quot;:&quot;Kenya&quot;,&quot;pinyin&quot;:&quot;kenniya&quot;},&quot;17453&quot;:{&quot;name&quot;:&quot;\u79d1\u6469\u7f57&quot;,&quot;ename&quot;:&quot;Comoros&quot;,&quot;pinyin&quot;:&quot;kemoluo&quot;},&quot;17461&quot;:{&quot;name&quot;:&quot;\u83b1\u7d22\u6258&quot;,&quot;ename&quot;:&quot;Lesotho&quot;,&quot;pinyin&quot;:&quot;laisuotuo&quot;},&quot;17462&quot;:{&quot;name&quot;:&quot;\u5229\u6bd4\u91cc\u4e9a&quot;,&quot;ename&quot;:&quot;Liberia&quot;,&quot;pinyin&quot;:&quot;libiliya&quot;},&quot;17463&quot;:{&quot;name&quot;:&quot;\u5229\u6bd4\u4e9a&quot;,&quot;ename&quot;:&quot;Libya&quot;,&quot;pinyin&quot;:&quot;libiya&quot;},&quot;17468&quot;:{&quot;name&quot;:&quot;\u9a6c\u8fbe\u52a0\u65af\u52a0&quot;,&quot;ename&quot;:&quot;Madagascar&quot;,&quot;pinyin&quot;:&quot;madajiasijia&quot;},&quot;17469&quot;:{&quot;name&quot;:&quot;\u9a6c\u62c9\u7ef4&quot;,&quot;ename&quot;:&quot;Malawi&quot;,&quot;pinyin&quot;:&quot;malawei&quot;},&quot;17472&quot;:{&quot;name&quot;:&quot;\u9a6c\u91cc&quot;,&quot;ename&quot;:&quot;Mali&quot;,&quot;pinyin&quot;:&quot;mali&quot;},&quot;17475&quot;:{&quot;name&quot;:&quot;\u6bdb\u91cc\u5854\u5c3c\u4e9a&quot;,&quot;ename&quot;:&quot;Mauritania&quot;,&quot;pinyin&quot;:&quot;maolitaniya&quot;},&quot;17476&quot;:{&quot;name&quot;:&quot;\u6bdb\u91cc\u6c42\u65af&quot;,&quot;ename&quot;:&quot;Mauritius&quot;,&quot;pinyin&quot;:&quot;maoliqiusi&quot;},&quot;17482&quot;:{&quot;name&quot;:&quot;\u6469\u6d1b\u54e5&quot;,&quot;ename&quot;:&quot;Morocco&quot;,&quot;pinyin&quot;:&quot;moluoge&quot;},&quot;17483&quot;:{&quot;name&quot;:&quot;\u83ab\u6851\u6bd4\u514b&quot;,&quot;ename&quot;:&quot;Mozambique&quot;,&quot;pinyin&quot;:&quot;mosangbike&quot;},&quot;17486&quot;:{&quot;name&quot;:&quot;\u7eb3\u7c73\u6bd4\u4e9a&quot;,&quot;ename&quot;:&quot;Namibia&quot;,&quot;pinyin&quot;:&quot;namibiya&quot;},&quot;17493&quot;:{&quot;name&quot;:&quot;\u5c3c\u65e5\u5c14&quot;,&quot;ename&quot;:&quot;Niger&quot;,&quot;pinyin&quot;:&quot;nirier&quot;},&quot;17494&quot;:{&quot;name&quot;:&quot;\u5c3c\u65e5\u5229\u4e9a&quot;,&quot;ename&quot;:&quot;Nigeria&quot;,&quot;pinyin&quot;:&quot;niriliya&quot;},&quot;17514&quot;:{&quot;name&quot;:&quot;\u5362\u65fa\u8fbe&quot;,&quot;ename&quot;:&quot;Rwanda&quot;,&quot;pinyin&quot;:&quot;luwangda&quot;},&quot;17517&quot;:{&quot;name&quot;:&quot;\u5723\u591a\u7f8e\u548c\u666e\u6797\u897f\u6bd4&quot;,&quot;ename&quot;:&quot;Sao Tome and Principe&quot;,&quot;pinyin&quot;:&quot;shengduomeihepulinxibi&quot;},&quot;17519&quot;:{&quot;name&quot;:&quot;\u585e\u5185\u52a0\u5c14&quot;,&quot;ename&quot;:&quot;Senegal&quot;,&quot;pinyin&quot;:&quot;saineijiaer&quot;},&quot;17520&quot;:{&quot;name&quot;:&quot;\u585e\u820c\u5c14&quot;,&quot;ename&quot;:&quot;Seychelles&quot;,&quot;pinyin&quot;:&quot;saisheer&quot;},&quot;17521&quot;:{&quot;name&quot;:&quot;\u585e\u62c9\u5229\u6602&quot;,&quot;ename&quot;:&quot;Sierra leone&quot;,&quot;pinyin&quot;:&quot;sailaliang&quot;},&quot;17526&quot;:{&quot;name&quot;:&quot;\u7d22\u9a6c\u91cc&quot;,&quot;ename&quot;:&quot;Somalia&quot;,&quot;pinyin&quot;:&quot;suomali&quot;},&quot;17527&quot;:{&quot;name&quot;:&quot;\u82cf\u4e39&quot;,&quot;ename&quot;:&quot;Sudan&quot;,&quot;pinyin&quot;:&quot;sudan&quot;},&quot;17529&quot;:{&quot;name&quot;:&quot;\u65af\u5a01\u58eb\u5170&quot;,&quot;ename&quot;:&quot;Swaziland&quot;,&quot;pinyin&quot;:&quot;siweishilan&quot;},&quot;17532&quot;:{&quot;name&quot;:&quot;\u4e4d\u5f97&quot;,&quot;ename&quot;:&quot;Chad&quot;,&quot;pinyin&quot;:&quot;zhade&quot;},&quot;17534&quot;:{&quot;name&quot;:&quot;\u5766\u6851\u5c3c\u4e9a&quot;,&quot;ename&quot;:&quot;Tanzania&quot;,&quot;pinyin&quot;:&quot;tansangniya&quot;},&quot;17536&quot;:{&quot;name&quot;:&quot;\u591a\u54e5&quot;,&quot;ename&quot;:&quot;Togo&quot;,&quot;pinyin&quot;:&quot;duoge&quot;},&quot;17540&quot;:{&quot;name&quot;:&quot;\u7a81\u5c3c\u65af&quot;,&quot;ename&quot;:&quot;Tunisia&quot;,&quot;pinyin&quot;:&quot;tunisi&quot;},&quot;17546&quot;:{&quot;name&quot;:&quot;\u4e4c\u5e72\u8fbe&quot;,&quot;ename&quot;:&quot;Uganda&quot;,&quot;pinyin&quot;:&quot;wuganda&quot;},&quot;17558&quot;:{&quot;name&quot;:&quot;\u5357\u975e&quot;,&quot;ename&quot;:&quot;South Africa&quot;,&quot;pinyin&quot;:&quot;nanfei&quot;},&quot;17560&quot;:{&quot;name&quot;:&quot;\u8d5e\u6bd4\u4e9a&quot;,&quot;ename&quot;:&quot;Zambia&quot;,&quot;pinyin&quot;:&quot;zanbiya&quot;},&quot;17561&quot;:{&quot;name&quot;:&quot;\u6d25\u5df4\u5e03\u97e6&quot;,&quot;ename&quot;:&quot;Zimbabwe&quot;,&quot;pinyin&quot;:&quot;jinbabuwei&quot;},&quot;17564&quot;:{&quot;name&quot;:&quot;\u5357\u82cf\u4e39&quot;,&quot;ename&quot;:&quot;South Sudan&quot;,&quot;pinyin&quot;:&quot;nansudan&quot;},&quot;17573&quot;:{&quot;name&quot;:&quot;\u5384\u7acb\u7279\u91cc\u4e9a&quot;,&quot;ename&quot;:&quot;Eritrea&quot;,&quot;pinyin&quot;:&quot;eliteliya&quot;},&quot;17574&quot;:{&quot;name&quot;:&quot;\u521a\u679c\u6c11\u4e3b\u5171\u548c\u56fd&quot;,&quot;ename&quot;:&quot;Democratic Republic of the Congo&quot;,&quot;pinyin&quot;:&quot;gangguominzhugongheguo&quot;}},&quot;pinyin&quot;:&quot;feizhou&quot;},&quot;17345&quot;:{&quot;name&quot;:&quot;\u5357\u7f8e\u6d32&quot;,&quot;country_mdds&quot;:{&quot;17360&quot;:{&quot;name&quot;:&quot;\u963f\u6839\u5ef7&quot;,&quot;ename&quot;:&quot;Argentina&quot;,&quot;pinyin&quot;:&quot;agenting&quot;},&quot;17376&quot;:{&quot;name&quot;:&quot;\u73bb\u5229\u7ef4\u4e9a&quot;,&quot;ename&quot;:&quot;Bolivia&quot;,&quot;pinyin&quot;:&quot;boliweiya&quot;},&quot;17380&quot;:{&quot;name&quot;:&quot;\u5df4\u897f&quot;,&quot;ename&quot;:&quot;Brazil&quot;,&quot;pinyin&quot;:&quot;baxi&quot;},&quot;17389&quot;:{&quot;name&quot;:&quot;\u667a\u5229&quot;,&quot;ename&quot;:&quot;Chile&quot;,&quot;pinyin&quot;:&quot;zhili&quot;},&quot;17392&quot;:{&quot;name&quot;:&quot;\u54e5\u4f26\u6bd4\u4e9a&quot;,&quot;ename&quot;:&quot;Colombia&quot;,&quot;pinyin&quot;:&quot;gelunbiya&quot;},&quot;17407&quot;:{&quot;name&quot;:&quot;\u5384\u74dc\u591a\u5c14&quot;,&quot;ename&quot;:&quot;Ecuador&quot;,&quot;pinyin&quot;:&quot;eguaduoer&quot;},&quot;17431&quot;:{&quot;name&quot;:&quot;\u572d\u4e9a\u90a3&quot;,&quot;ename&quot;:&quot;Guyana&quot;,&quot;pinyin&quot;:&quot;guiyana&quot;},&quot;17504&quot;:{&quot;name&quot;:&quot;\u5df4\u62c9\u572d&quot;,&quot;ename&quot;:&quot;Paraguay&quot;,&quot;pinyin&quot;:&quot;balagui&quot;},&quot;17505&quot;:{&quot;name&quot;:&quot;\u79d8\u9c81&quot;,&quot;ename&quot;:&quot;Peru&quot;,&quot;pinyin&quot;:&quot;milu&quot;},&quot;17528&quot;:{&quot;name&quot;:&quot;\u82cf\u91cc\u5357&quot;,&quot;ename&quot;:&quot;Surinam&quot;,&quot;pinyin&quot;:&quot;sulinan&quot;},&quot;17550&quot;:{&quot;name&quot;:&quot;\u4e4c\u62c9\u572d&quot;,&quot;ename&quot;:&quot;Uruguay&quot;,&quot;pinyin&quot;:&quot;wulagui&quot;},&quot;17553&quot;:{&quot;name&quot;:&quot;\u59d4\u5185\u745e\u62c9&quot;,&quot;ename&quot;:&quot;Venezuela&quot;,&quot;pinyin&quot;:&quot;weineiruila&quot;},&quot;19405&quot;:{&quot;name&quot;:&quot;\u6cd5\u5c5e\u572d\u4e9a\u90a3&quot;,&quot;ename&quot;:&quot;French Guiana&quot;,&quot;pinyin&quot;:&quot;fashuguiyana&quot;}},&quot;pinyin&quot;:&quot;nanmeizhou&quot;},&quot;17342&quot;:{&quot;name&quot;:&quot;\u6b27\u6d32&quot;,&quot;country_mdds&quot;:{&quot;17352&quot;:{&quot;name&quot;:&quot;\u5b89\u9053\u5c14&quot;,&quot;ename&quot;:&quot;Andorra&quot;,&quot;pinyin&quot;:&quot;andaoer&quot;},&quot;17355&quot;:{&quot;name&quot;:&quot;\u963f\u5c14\u5df4\u5c3c\u4e9a&quot;,&quot;ename&quot;:&quot;Albania&quot;,&quot;pinyin&quot;:&quot;aerbaniya&quot;},&quot;17363&quot;:{&quot;name&quot;:&quot;\u5965\u5730\u5229&quot;,&quot;ename&quot;:&quot;Austria&quot;,&quot;pinyin&quot;:&quot;aodili&quot;},&quot;17370&quot;:{&quot;name&quot;:&quot;\u767d\u4fc4\u7f57\u65af&quot;,&quot;ename&quot;:&quot;Belarus&quot;,&quot;pinyin&quot;:&quot;baieluosi&quot;},&quot;17372&quot;:{&quot;name&quot;:&quot;\u6bd4\u5229\u65f6&quot;,&quot;ename&quot;:&quot;Belgium&quot;,&quot;pinyin&quot;:&quot;bilishi&quot;},&quot;17377&quot;:{&quot;name&quot;:&quot;\u6ce2\u9ed1&quot;,&quot;ename&quot;:&quot;Bosnia and Herzegovina&quot;,&quot;pinyin&quot;:&quot;bohei&quot;},&quot;17379&quot;:{&quot;name&quot;:&quot;\u5e03\u97e6\u5c9b&quot;,&quot;ename&quot;:&quot;Bouvet Island&quot;,&quot;pinyin&quot;:&quot;buweidao&quot;},&quot;17382&quot;:{&quot;name&quot;:&quot;\u4fdd\u52a0\u5229\u4e9a&quot;,&quot;ename&quot;:&quot;Bulgaria&quot;,&quot;pinyin&quot;:&quot;baojialiya&quot;},&quot;17393&quot;:{&quot;name&quot;:&quot;\u745e\u58eb&quot;,&quot;ename&quot;:&quot;Switzerland&quot;,&quot;pinyin&quot;:&quot;ruishi&quot;},&quot;17399&quot;:{&quot;name&quot;:&quot;\u585e\u6d66\u8def\u65af&quot;,&quot;ename&quot;:&quot;Cyprus&quot;,&quot;pinyin&quot;:&quot;saipulusi&quot;},&quot;17400&quot;:{&quot;name&quot;:&quot;\u6377\u514b&quot;,&quot;ename&quot;:&quot;Czech&quot;,&quot;pinyin&quot;:&quot;jieke&quot;},&quot;17401&quot;:{&quot;name&quot;:&quot;\u4e39\u9ea6&quot;,&quot;ename&quot;:&quot;Denmark&quot;,&quot;pinyin&quot;:&quot;danmai&quot;},&quot;17404&quot;:{&quot;name&quot;:&quot;\u5fb7\u56fd&quot;,&quot;ename&quot;:&quot;Germany&quot;,&quot;pinyin&quot;:&quot;deguo&quot;},&quot;17410&quot;:{&quot;name&quot;:&quot;\u897f\u73ed\u7259&quot;,&quot;ename&quot;:&quot;Spain&quot;,&quot;pinyin&quot;:&quot;xibanya&quot;},&quot;17411&quot;:{&quot;name&quot;:&quot;\u7231\u6c99\u5c3c\u4e9a&quot;,&quot;ename&quot;:&quot;Estonia&quot;,&quot;pinyin&quot;:&quot;aishaniya&quot;},&quot;17414&quot;:{&quot;name&quot;:&quot;\u82ac\u5170&quot;,&quot;ename&quot;:&quot;Finland&quot;,&quot;pinyin&quot;:&quot;fenlan&quot;},&quot;17415&quot;:{&quot;name&quot;:&quot;\u6cd5\u56fd&quot;,&quot;ename&quot;:&quot;France&quot;,&quot;pinyin&quot;:&quot;faguo&quot;},&quot;17423&quot;:{&quot;name&quot;:&quot;\u76f4\u5e03\u7f57\u9640&quot;,&quot;ename&quot;:&quot;Gibraltar&quot;,&quot;pinyin&quot;:&quot;zhibuluotuo&quot;},&quot;17424&quot;:{&quot;name&quot;:&quot;\u5e0c\u814a&quot;,&quot;ename&quot;:&quot;Greece&quot;,&quot;pinyin&quot;:&quot;xila&quot;},&quot;17425&quot;:{&quot;name&quot;:&quot;\u683c\u9675\u5170&quot;,&quot;ename&quot;:&quot;Greenland&quot;,&quot;pinyin&quot;:&quot;gelinglan&quot;},&quot;17432&quot;:{&quot;name&quot;:&quot;\u514b\u7f57\u5730\u4e9a&quot;,&quot;ename&quot;:&quot;Croatia&quot;,&quot;pinyin&quot;:&quot;keluodiya&quot;},&quot;17435&quot;:{&quot;name&quot;:&quot;\u5308\u7259\u5229&quot;,&quot;ename&quot;:&quot;Hungary&quot;,&quot;pinyin&quot;:&quot;xiongyali&quot;},&quot;17436&quot;:{&quot;name&quot;:&quot;\u51b0\u5c9b&quot;,&quot;ename&quot;:&quot;Iceland&quot;,&quot;pinyin&quot;:&quot;bingdao&quot;},&quot;17441&quot;:{&quot;name&quot;:&quot;\u7231\u5c14\u5170&quot;,&quot;ename&quot;:&quot;Ireland&quot;,&quot;pinyin&quot;:&quot;aierlan&quot;},&quot;17443&quot;:{&quot;name&quot;:&quot;\u610f\u5927\u5229&quot;,&quot;ename&quot;:&quot;Italy&quot;,&quot;pinyin&quot;:&quot;yidali&quot;},&quot;17456&quot;:{&quot;name&quot;:&quot;\u5f00\u66fc\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;Cayman Islands&quot;,&quot;pinyin&quot;:&quot;kaimanqundao&quot;},&quot;17459&quot;:{&quot;name&quot;:&quot;\u62c9\u8131\u7ef4\u4e9a&quot;,&quot;ename&quot;:&quot;Latvia&quot;,&quot;pinyin&quot;:&quot;latuoweiya&quot;},&quot;17464&quot;:{&quot;name&quot;:&quot;\u5217\u652f\u6566\u58eb\u767b&quot;,&quot;ename&quot;:&quot;Liechtenstein&quot;,&quot;pinyin&quot;:&quot;liezhidunshideng&quot;},&quot;17465&quot;:{&quot;name&quot;:&quot;\u7acb\u9676\u5b9b&quot;,&quot;ename&quot;:&quot;Lithuania&quot;,&quot;pinyin&quot;:&quot;litaowan&quot;},&quot;17466&quot;:{&quot;name&quot;:&quot;\u5362\u68ee\u5821&quot;,&quot;ename&quot;:&quot;Luxembourg&quot;,&quot;pinyin&quot;:&quot;lusenbao&quot;},&quot;17473&quot;:{&quot;name&quot;:&quot;\u9a6c\u8033\u4ed6&quot;,&quot;ename&quot;:&quot;Malta&quot;,&quot;pinyin&quot;:&quot;maerta&quot;},&quot;17478&quot;:{&quot;name&quot;:&quot;\u6469\u5c14\u591a\u74e6&quot;,&quot;ename&quot;:&quot;Moldova&quot;,&quot;pinyin&quot;:&quot;moerduowa&quot;},&quot;17479&quot;:{&quot;name&quot;:&quot;\u6469\u7eb3\u54e5&quot;,&quot;ename&quot;:&quot;Monaco&quot;,&quot;pinyin&quot;:&quot;monage&quot;},&quot;17497&quot;:{&quot;name&quot;:&quot;\u632a\u5a01&quot;,&quot;ename&quot;:&quot;Norway&quot;,&quot;pinyin&quot;:&quot;nuowei&quot;},&quot;17507&quot;:{&quot;name&quot;:&quot;\u76ae\u7279\u5f00\u6069\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;Pitcairn Islands&quot;,&quot;pinyin&quot;:&quot;pitekaienqundao&quot;},&quot;17508&quot;:{&quot;name&quot;:&quot;\u6ce2\u5170&quot;,&quot;ename&quot;:&quot;Poland&quot;,&quot;pinyin&quot;:&quot;bolan&quot;},&quot;17509&quot;:{&quot;name&quot;:&quot;\u8461\u8404\u7259&quot;,&quot;ename&quot;:&quot;Portugal&quot;,&quot;pinyin&quot;:&quot;putaoya&quot;},&quot;17512&quot;:{&quot;name&quot;:&quot;\u7f57\u9a6c\u5c3c\u4e9a&quot;,&quot;ename&quot;:&quot;Romania&quot;,&quot;pinyin&quot;:&quot;luomaniya&quot;},&quot;17513&quot;:{&quot;name&quot;:&quot;\u4fc4\u7f57\u65af&quot;,&quot;ename&quot;:&quot;Russia&quot;,&quot;pinyin&quot;:&quot;eluosi&quot;},&quot;17516&quot;:{&quot;name&quot;:&quot;\u5723\u9a6c\u529b\u8bfa&quot;,&quot;ename&quot;:&quot;San Marino&quot;,&quot;pinyin&quot;:&quot;shengmalinuo&quot;},&quot;17523&quot;:{&quot;name&quot;:&quot;\u65af\u6d1b\u4f10\u514b&quot;,&quot;ename&quot;:&quot;Slovakia&quot;,&quot;pinyin&quot;:&quot;siluofake&quot;},&quot;17524&quot;:{&quot;name&quot;:&quot;\u65af\u6d1b\u6587\u5c3c\u4e9a&quot;,&quot;ename&quot;:&quot;Slovenia&quot;,&quot;pinyin&quot;:&quot;siluowenniya&quot;},&quot;17530&quot;:{&quot;name&quot;:&quot;\u745e\u5178&quot;,&quot;ename&quot;:&quot;Sweden&quot;,&quot;pinyin&quot;:&quot;ruidian&quot;},&quot;17541&quot;:{&quot;name&quot;:&quot;\u571f\u8033\u5176&quot;,&quot;ename&quot;:&quot;Turkey&quot;,&quot;pinyin&quot;:&quot;tuerqi&quot;},&quot;17544&quot;:{&quot;name&quot;:&quot;\u7279\u514b\u65af\u548c\u51ef\u79d1\u65af\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;Turks and Caicos Islands&quot;,&quot;pinyin&quot;:&quot;tekesihekaikesiqundao&quot;},&quot;17547&quot;:{&quot;name&quot;:&quot;\u4e4c\u514b\u5170&quot;,&quot;ename&quot;:&quot;Ukraine&quot;,&quot;pinyin&quot;:&quot;wukelan&quot;},&quot;17548&quot;:{&quot;name&quot;:&quot;\u82f1\u56fd&quot;,&quot;ename&quot;:&quot;United Kingdom&quot;,&quot;pinyin&quot;:&quot;yingguo&quot;},&quot;17552&quot;:{&quot;name&quot;:&quot;\u68b5\u8482\u5188&quot;,&quot;ename&quot;:&quot;Vatican&quot;,&quot;pinyin&quot;:&quot;fandigang&quot;},&quot;17562&quot;:{&quot;name&quot;:&quot;\u5723\u8d6b\u52d2\u90a3&quot;,&quot;ename&quot;:&quot;St.Helena&quot;,&quot;pinyin&quot;:&quot;shenghelena&quot;},&quot;17566&quot;:{&quot;name&quot;:&quot;\u585e\u5c14\u7ef4\u4e9a&quot;,&quot;ename&quot;:&quot;Serbia&quot;,&quot;pinyin&quot;:&quot;saierweiya&quot;},&quot;17567&quot;:{&quot;name&quot;:&quot;\u9a6c\u5176\u987f&quot;,&quot;ename&quot;:&quot;Macedonia&quot;,&quot;pinyin&quot;:&quot;maqidun&quot;},&quot;17569&quot;:{&quot;name&quot;:&quot;\u9ed1\u5c71&quot;,&quot;ename&quot;:&quot;Montenegro&quot;,&quot;pinyin&quot;:&quot;heishan&quot;},&quot;19313&quot;:{&quot;name&quot;:&quot;\u6cd5\u7f57\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;Faroe Islands&quot;,&quot;pinyin&quot;:&quot;faluoqundao&quot;},&quot;19380&quot;:{&quot;name&quot;:&quot;\u5965\u5170\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;\u00c5aland Islands&quot;,&quot;pinyin&quot;:&quot;aolanqundao&quot;},&quot;19403&quot;:{&quot;name&quot;:&quot;\u74dc\u5fb7\u7f57\u666e&quot;,&quot;ename&quot;:&quot;Guadeloupe&quot;,&quot;pinyin&quot;:&quot;guadeluopu&quot;},&quot;19404&quot;:{&quot;name&quot;:&quot;\u9a6c\u63d0\u5c3c\u514b&quot;,&quot;ename&quot;:&quot;Martinique&quot;,&quot;pinyin&quot;:&quot;matinike&quot;},&quot;19406&quot;:{&quot;name&quot;:&quot;\u7559\u5c3c\u6c6a&quot;,&quot;ename&quot;:&quot;R\u00e9union&quot;,&quot;pinyin&quot;:&quot;liuniwang&quot;},&quot;19407&quot;:{&quot;name&quot;:&quot;\u9a6c\u7ea6\u7279&quot;,&quot;ename&quot;:&quot;Mayotte&quot;,&quot;pinyin&quot;:&quot;mayuete&quot;},&quot;19408&quot;:{&quot;name&quot;:&quot;\u5723\u76ae\u57c3\u5c14\u548c\u5bc6\u514b\u9686\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;Saint Pierre and Miquelon&quot;,&quot;pinyin&quot;:&quot;shengpiaierhemikelongqundao&quot;},&quot;19409&quot;:{&quot;name&quot;:&quot;\u74e6\u5229\u65af\u548c\u5bcc\u56fe\u7eb3\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;Wallis and Futuna&quot;,&quot;pinyin&quot;:&quot;walisihefutunaqundao&quot;},&quot;19411&quot;:{&quot;name&quot;:&quot;\u5723\u5df4\u6cf0\u52d2\u7c73\u5c9b&quot;,&quot;ename&quot;:&quot;Saint Barth\u00e9lemy&quot;,&quot;pinyin&quot;:&quot;shengbatailemidao&quot;},&quot;20315&quot;:{&quot;name&quot;:&quot;\u5b89\u572d\u62c9&quot;,&quot;ename&quot;:&quot;Anguilla&quot;,&quot;pinyin&quot;:&quot;anguila&quot;},&quot;20317&quot;:{&quot;name&quot;:&quot;\u798f\u514b\u5170\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;Falkland Islands (Malvinas)&quot;,&quot;pinyin&quot;:&quot;fukelanqundao&quot;},&quot;20318&quot;:{&quot;name&quot;:&quot;\u5357\u4e54\u6cbb\u4e9a\u5c9b\u548c\u5357\u6851\u5a01\u5947\u7fa4\u5c9b&quot;,&quot;ename&quot;:&quot;South Georgia and the South Sandwich Islands&quot;,&quot;pinyin&quot;:&quot;nanqiaozhiyadaohenansangweiqi&quot;},&quot;21228&quot;:{&quot;name&quot;:&quot;\u8377\u5170&quot;,&quot;ename&quot;:&quot;Netherlands&quot;,&quot;pinyin&quot;:&quot;helan&quot;},&quot;21238&quot;:{&quot;name&quot;:&quot;\u6839\u897f\u5c9b&quot;,&quot;ename&quot;:&quot;Guernsey&quot;,&quot;pinyin&quot;:&quot;genxidao&quot;},&quot;21239&quot;:{&quot;name&quot;:&quot;\u6cfd\u897f\u5c9b&quot;,&quot;ename&quot;:&quot;Jersey&quot;,&quot;pinyin&quot;:&quot;zexidao&quot;},&quot;21240&quot;:{&quot;name&quot;:&quot;\u9a6c\u6069\u5c9b&quot;,&quot;ename&quot;:&quot;Isle of Man&quot;,&quot;pinyin&quot;:&quot;maendao&quot;},&quot;27552&quot;:{&quot;name&quot;:&quot;\u65af\u74e6\u5c14\u5df4\u7fa4\u5c9b\u548c\u626c\u9a6c\u5ef6\u5c9b&quot;,&quot;ename&quot;:&quot;Svalbard and Jan Mayen&quot;,&quot;pinyin&quot;:&quot;siwaerbaqundaoheyangmayan&quot;},&quot;17568&quot;:{&quot;name&quot;:&quot;\u79d1\u7d22\u6c83&quot;,&quot;ename&quot;:&quot;The Republic of Kosovo&quot;,&quot;pinyin&quot;:&quot;kesuowo&quot;}},&quot;pinyin&quot;:&quot;ouzhou&quot;},&quot;17341&quot;:{&quot;name&quot;:&quot;\u4e9a\u6d32&quot;,&quot;country_mdds&quot;:{&quot;17348&quot;:{&quot;name&quot;:&quot;\u4e2d\u56fd&quot;,&quot;ename&quot;:&quot;China&quot;,&quot;pinyin&quot;:&quot;zhongguo&quot;,&quot;province_mdds&quot;:{&quot;16998&quot;:{&quot;name&quot;:&quot;\u8fbd\u5b81&quot;,&quot;pinyin&quot;:&quot;liaoning&quot;},&quot;16896&quot;:{&quot;name&quot;:&quot;\u6d59\u6c5f&quot;,&quot;pinyin&quot;:&quot;zhejiang&quot;},&quot;16879&quot;:{&quot;name&quot;:&quot;\u5929\u6d25&quot;,&quot;pinyin&quot;:&quot;tianjin&quot;},&quot;16758&quot;:{&quot;name&quot;:&quot;\u6c5f\u82cf&quot;,&quot;pinyin&quot;:&quot;jiangsu&quot;},&quot;16663&quot;:{&quot;name&quot;:&quot;\u798f\u5efa&quot;,&quot;pinyin&quot;:&quot;fujian&quot;},&quot;16646&quot;:{&quot;name&quot;:&quot;\u5317\u4eac&quot;,&quot;pinyin&quot;:&quot;beijing&quot;},&quot;16522&quot;:{&quot;name&quot;:&quot;\u5b89\u5fbd&quot;,&quot;pinyin&quot;:&quot;anhui&quot;},&quot;16364&quot;:{&quot;name&quot;:&quot;\u5c71\u4e1c&quot;,&quot;pinyin&quot;:&quot;shandong&quot;},&quot;16345&quot;:{&quot;name&quot;:&quot;\u9999\u6e2f&quot;,&quot;pinyin&quot;:&quot;xianggang&quot;},&quot;16233&quot;:{&quot;name&quot;:&quot;\u6c5f\u897f&quot;,&quot;pinyin&quot;:&quot;jiangxi&quot;},&quot;16228&quot;:{&quot;name&quot;:&quot;\u6fb3\u95e8&quot;,&quot;pinyin&quot;:&quot;aomen&quot;},&quot;16043&quot;:{&quot;name&quot;:&quot;\u6cb3\u5317&quot;,&quot;pinyin&quot;:&quot;hebei&quot;},&quot;15868&quot;:{&quot;name&quot;:&quot;\u6cb3\u5357&quot;,&quot;pinyin&quot;:&quot;henan&quot;},&quot;15738&quot;:{&quot;name&quot;:&quot;\u5c71\u897f&quot;,&quot;pinyin&quot;:&quot;shanxi&quot;},&quot;15591&quot;:{&quot;name&quot;:&quot;\u5e7f\u4e1c&quot;,&quot;pinyin&quot;:&quot;guangdong&quot;},&quot;15454&quot;:{&quot;name&quot;:&quot;\u6e56\u5357&quot;,&quot;pinyin&quot;:&quot;hunan&quot;},&quot;15426&quot;:{&quot;name&quot;:&quot;\u6d77\u5357&quot;,&quot;pinyin&quot;:&quot;hainan&quot;},&quot;15309&quot;:{&quot;name&quot;:&quot;\u6e56\u5317&quot;,&quot;pinyin&quot;:&quot;hubei&quot;},&quot;15191&quot;:{&quot;name&quot;:&quot;\u9655\u897f&quot;,&quot;pinyin&quot;:&quot;shanxi&quot;},&quot;15150&quot;:{&quot;name&quot;:&quot;\u91cd\u5e86&quot;,&quot;pinyin&quot;:&quot;chongqing&quot;},&quot;15025&quot;:{&quot;name&quot;:&quot;\u5e7f\u897f&quot;,&quot;pinyin&quot;:&quot;guangxi&quot;},&quot;14997&quot;:{&quot;name&quot;:&quot;\u5b81\u590f&quot;,&quot;pinyin&quot;:&quot;ningxia&quot;},&quot;14898&quot;:{&quot;name&quot;:&quot;\u8d35\u5dde&quot;,&quot;pinyin&quot;:&quot;guizhou&quot;},&quot;14752&quot;:{&quot;name&quot;:&quot;\u4e91\u5357&quot;,&quot;pinyin&quot;:&quot;yunnan&quot;},&quot;14549&quot;:{&quot;name&quot;:&quot;\u56db\u5ddd&quot;,&quot;pinyin&quot;:&quot;sichuan&quot;},&quot;14435&quot;:{&quot;name&quot;:&quot;\u5185\u8499\u53e4&quot;,&quot;pinyin&quot;:&quot;neimenggu&quot;},&quot;14333&quot;:{&quot;name&quot;:&quot;\u7518\u8083&quot;,&quot;pinyin&quot;:&quot;gansu&quot;},&quot;14280&quot;:{&quot;name&quot;:&quot;\u9752\u6d77&quot;,&quot;pinyin&quot;:&quot;qinghai&quot;},&quot;14199&quot;:{&quot;name&quot;:&quot;\u897f\u85cf&quot;,&quot;pinyin&quot;:&quot;xicang&quot;},&quot;14085&quot;:{&quot;name&quot;:&quot;\u65b0\u7586&quot;,&quot;pinyin&quot;:&quot;xinjiang&quot;},&quot;17114&quot;:{&quot;name&quot;:&quot;\u4e0a\u6d77&quot;,&quot;pinyin&quot;:&quot;shanghai&quot;},&quot;17133&quot;:{&quot;name&quot;:&quot;\u9ed1\u9f99\u6c5f&quot;,&quot;pinyin&quot;:&quot;heilongjiang&quot;},&quot;17265&quot;:{&quot;name&quot;:&quot;\u5409\u6797&quot;,&quot;pinyin&quot;:&quot;jilin&quot;},&quot;21250&quot;:{&quot;name&quot;:&quot;\u53f0\u6e7e&quot;,&quot;pinyin&quot;:&quot;taiwan&quot;}}},&quot;17353&quot;:{&quot;name&quot;:&quot;\u963f\u62c9\u4f2f\u8054\u5408\u914b\u957f\u56fd&quot;,&quot;ename&quot;:&quot;United Arab Emirates&quot;,&quot;pinyin&quot;:&quot;alabolianheqiuchangguo&quot;},&quot;17354&quot;:{&quot;name&quot;:&quot;\u963f\u5bcc\u6c57&quot;,&quot;ename&quot;:&quot;Afghanistan&quot;,&quot;pinyin&quot;:&quot;afuhan&quot;},&quot;17361&quot;:{&quot;name&quot;:&quot;\u4e9a\u7f8e\u5c3c\u4e9a&quot;,&quot;ename&quot;:&quot;Armenia&quot;,&quot;pinyin&quot;:&quot;yameiniya&quot;},&quot;17364&quot;:{&quot;name&quot;:&quot;\u963f\u585e\u62dc\u7586&quot;,&quot;ename&quot;:&quot;Azerbaijan&quot;,&quot;pinyin&quot;:&quot;asaibaijiang&quot;},&quot;17367&quot;:{&quot;name&quot;:&quot;\u5df4\u6797&quot;,&quot;ename&quot;:&quot;Bahrain&quot;,&quot;pinyin&quot;:&quot;balin&quot;},&quot;17368&quot;:{&quot;name&quot;:&quot;\u5b5f\u52a0\u62c9\u56fd&quot;,&quot;ename&quot;:&quot;Bangladesh&quot;,&quot;pinyin&quot;:&quot;mengjialaguo&quot;},&quot;17375&quot;:{&quot;name&quot;:&quot;\u4e0d\u4e39&quot;,&quot;ename&quot;:&quot;Bhutan&quot;,&quot;pinyin&quot;:&quot;budan&quot;},&quot;17381&quot;:{&quot;name&quot;:&quot;\u6587\u83b1&quot;,&quot;ename&quot;:&quot;Brunei Darussalam&quot;,&quot;pinyin&quot;:&quot;wenlai&quot;},&quot;17421&quot;:{&quot;name&quot;:&quot;\u683c\u9c81\u5409\u4e9a&quot;,&quot;ename&quot;:&quot;Georgia&quot;,&quot;pinyin&quot;:&quot;gelujiya&quot;},&quot;17437&quot;:{&quot;name&quot;:&quot;\u5370\u5ea6&quot;,&quot;ename&quot;:&quot;India&quot;,&quot;pinyin&quot;:&quot;yindu&quot;},&quot;17438&quot;:{&quot;name&quot;:&quot;\u5370\u5ea6\u5c3c\u897f\u4e9a&quot;,&quot;ename&quot;:&quot;Indonesia&quot;,&quot;pinyin&quot;:&quot;yindunixiya&quot;},&quot;17439&quot;:{&quot;name&quot;:&quot;\u4f0a\u6717&quot;,&quot;ename&quot;:&quot;Iran&quot;,&quot;pinyin&quot;:&quot;yilang&quot;},&quot;17440&quot;:{&quot;name&quot;:&quot;\u4f0a\u62c9\u514b&quot;,&quot;ename&quot;:&quot;Iraq&quot;,&quot;pinyin&quot;:&quot;yilake&quot;},&quot;17442&quot;:{&quot;name&quot;:&quot;\u4ee5\u8272\u5217&quot;,&quot;ename&quot;:&quot;Israel&quot;,&quot;pinyin&quot;:&quot;yiselie&quot;},&quot;17445&quot;:{&quot;name&quot;:&quot;\u65e5\u672c&quot;,&quot;ename&quot;:&quot;Japan&quot;,&quot;pinyin&quot;:&quot;riben&quot;},&quot;17446&quot;:{&quot;name&quot;:&quot;\u7ea6\u65e6&quot;,&quot;ename&quot;:&quot;Jordan&quot;,&quot;pinyin&quot;:&quot;yuedan&quot;},&quot;17447&quot;:{&quot;name&quot;:&quot;\u54c8\u8428\u514b\u65af\u5766&quot;,&quot;ename&quot;:&quot;Kazakhstan&quot;,&quot;pinyin&quot;:&quot;hasakesitan&quot;},&quot;17450&quot;:{&quot;name&quot;:&quot;\u671d\u9c9c&quot;,&quot;ename&quot;:&quot;North Korea&quot;,&quot;pinyin&quot;:&quot;zhaoxian&quot;},&quot;17451&quot;:{&quot;name&quot;:&quot;\u97e9\u56fd&quot;,&quot;ename&quot;:&quot;Korea&quot;,&quot;pinyin&quot;:&quot;hanguo&quot;},&quot;17452&quot;:{&quot;name&quot;:&quot;\u67ec\u57d4\u5be8&quot;,&quot;ename&quot;:&quot;Cambodia&quot;,&quot;pinyin&quot;:&quot;jianpuzhai&quot;},&quot;17454&quot;:{&quot;name&quot;:&quot;\u79d1\u5a01\u7279&quot;,&quot;ename&quot;:&quot;Kuwait&quot;,&quot;pinyin&quot;:&quot;keweite&quot;},&quot;17455&quot;:{&quot;name&quot;:&quot;\u5409\u5c14\u5409\u65af\u65af\u5766&quot;,&quot;ename&quot;:&quot;Kyrgyzstan&quot;,&quot;pinyin&quot;:&quot;jierjisisitan&quot;},&quot;17457&quot;:{&quot;name&quot;:&quot;\u8001\u631d&quot;,&quot;ename&quot;:&quot;Laos&quot;,&quot;pinyin&quot;:&quot;laozhua&quot;},&quot;17458&quot;:{&quot;name&quot;:&quot;\u65af\u91cc\u5170\u5361&quot;,&quot;ename&quot;:&quot;Sri Lanka&quot;,&quot;pinyin&quot;:&quot;sililanqia&quot;},&quot;17460&quot;:{&quot;name&quot;:&quot;\u9ece\u5df4\u5ae9&quot;,&quot;ename&quot;:&quot;Lebanon&quot;,&quot;pinyin&quot;:&quot;libanen&quot;},&quot;17470&quot;:{&quot;name&quot;:&quot;\u9a6c\u6765\u897f\u4e9a&quot;,&quot;ename&quot;:&quot;Malaysia&quot;,&quot;pinyin&quot;:&quot;malaixiya&quot;},&quot;17471&quot;:{&quot;name&quot;:&quot;\u9a6c\u5c14\u4ee3\u592b&quot;,&quot;ename&quot;:&quot;Maldives&quot;,&quot;pinyin&quot;:&quot;maerdaifu&quot;},&quot;17480&quot;:{&quot;name&quot;:&quot;\u8499\u53e4&quot;,&quot;ename&quot;:&quot;Mongolia&quot;,&quot;pinyin&quot;:&quot;menggu&quot;},&quot;17484&quot;:{&quot;name&quot;:&quot;\u7f05\u7538&quot;,&quot;ename&quot;:&quot;Myanmar&quot;,&quot;pinyin&quot;:&quot;miandian&quot;},&quot;17488&quot;:{&quot;name&quot;:&quot;\u5c3c\u6cca\u5c14&quot;,&quot;ename&quot;:&quot;Nepal&quot;,&quot;pinyin&quot;:&quot;niboer&quot;},&quot;17498&quot;:{&quot;name&quot;:&quot;\u963f\u66fc&quot;,&quot;ename&quot;:&quot;Oman&quot;,&quot;pinyin&quot;:&quot;aman&quot;},&quot;17499&quot;:{&quot;name&quot;:&quot;\u5df4\u57fa\u65af\u5766&quot;,&quot;ename&quot;:&quot;Pakistan&quot;,&quot;pinyin&quot;:&quot;bajisitan&quot;},&quot;17506&quot;:{&quot;name&quot;:&quot;\u83f2\u5f8b\u5bbe&quot;,&quot;ename&quot;:&quot;Philippines&quot;,&quot;pinyin&quot;:&quot;feilvbin&quot;},&quot;17511&quot;:{&quot;name&quot;:&quot;\u5361\u5854\u5c14&quot;,&quot;ename&quot;:&quot;Qatar&quot;,&quot;pinyin&quot;:&quot;qiataer&quot;},&quot;17518&quot;:{&quot;name&quot;:&quot;\u6c99\u7279\u963f\u62c9\u4f2f&quot;,&quot;ename&quot;:&quot;Saudi Arabia&quot;,&quot;pinyin&quot;:&quot;shatealabo&quot;},&quot;17522&quot;:{&quot;name&quot;:&quot;\u65b0\u52a0\u5761&quot;,&quot;ename&quot;:&quot;Singapore&quot;,&quot;pinyin&quot;:&quot;xinjiapo&quot;},&quot;17531&quot;:{&quot;name&quot;:&quot;\u53d9\u5229\u4e9a&quot;,&quot;ename&quot;:&quot;Syria&quot;,&quot;pinyin&quot;:&quot;xuliya&quot;},&quot;17533&quot;:{&quot;name&quot;:&quot;\u5854\u5409\u514b\u65af\u5766&quot;,&quot;ename&quot;:&quot;Tajikistan&quot;,&quot;pinyin&quot;:&quot;tajikesitan&quot;},&quot;17535&quot;:{&quot;name&quot;:&quot;\u6cf0\u56fd&quot;,&quot;ename&quot;:&quot;Thailand&quot;,&quot;pinyin&quot;:&quot;taiguo&quot;},&quot;17542&quot;:{&quot;name&quot;:&quot;\u4e1c\u5e1d\u6c76&quot;,&quot;ename&quot;:&quot;East Timor&quot;,&quot;pinyin&quot;:&quot;dongdiwen&quot;},&quot;17543&quot;:{&quot;name&quot;:&quot;\u571f\u5e93\u66fc\u65af\u5766&quot;,&quot;ename&quot;:&quot;Turkmenistan&quot;,&quot;pinyin&quot;:&quot;tukumansitan&quot;},&quot;17551&quot;:{&quot;name&quot;:&quot;\u4e4c\u5179\u522b\u514b\u65af\u5766&quot;,&quot;ename&quot;:&quot;Uzbekistan&quot;,&quot;pinyin&quot;:&quot;wuzibiekesitan&quot;},&quot;17554&quot;:{&quot;name&quot;:&quot;\u8d8a\u5357&quot;,&quot;ename&quot;:&quot;Vietnam&quot;,&quot;pinyin&quot;:&quot;yuenan&quot;},&quot;17557&quot;:{&quot;name&quot;:&quot;\u4e5f\u95e8&quot;,&quot;ename&quot;:&quot;Yemen&quot;,&quot;pinyin&quot;:&quot;yemen&quot;},&quot;17565&quot;:{&quot;name&quot;:&quot;\u5df4\u52d2\u65af\u5766&quot;,&quot;ename&quot;:&quot;Palestine&quot;,&quot;pinyin&quot;:&quot;balesitan&quot;},&quot;20316&quot;:{&quot;name&quot;:&quot;\u82f1\u5c5e\u5370\u5ea6\u6d0b\u9886\u5730&quot;,&quot;ename&quot;:&quot;British Indian Ocean Territory&quot;,&quot;pinyin&quot;:&quot;yingshuyinduyanglingdi&quot;}},&quot;pinyin&quot;:&quot;yazhou&quot;}}" />
				<input type="hidden" id="_j_wantgocountry" data-wantgo="[]" /> <input
					type="hidden" id="_j_wantgoprovince" data-wantgo="[]" />
				<div class="_j_map_cnt">


					<div class="maps-container">
						<div class="path-maps _j_map_area maps-theme-black"
							id="_j_mapwrap">

							<div class="pin-topright">
								<a class="btn-addPath _j_addpathbtn _j_add_path_btn"
									id="_j_addpath" role="button" style="z-index: 6">开始添加足迹<i></i></a>
								<div class="nums" id="_j_path_number">
									<b>1</b>国家<i clas="icon-dot"></i><b>1</b>足迹<i clas="icon-dot"></i><b>1</b>点评
								</div>
							</div>
							<div class="switch_btn">
								<a role="button" class="bg_btn switch_pic _j_switch_pic"><i></i><span>切回照片封面</span></a>
							</div>

							<div class="map-item _j_map _j_worldmapholder small"
								id="containerworld"></div>
							<div class="map-item _j_map _j_chinamapholder" id="container">
								<div class="china-map-tail"></div>
							</div>
						</div>
					</div>
					<div class="_j_mapcardwrap"></div>

				</div>
				<div class="home_bg _j_pic_cnt home_default_bg hide">
					<div class="bg_switch bg_upload _j_toppic_default">
						<div class="center">
							<a role="button" class="bg_up_btn _j_toppic_uploader">
								<div id="_j_inituploader"
									style="width: 100%; height: 100%; position: absolute; top: 0; left: 0"></div>
								<i></i><span>选择个性图片上传</span>
							</a>
						</div>
						<div class="switch_btn">
							<a role="button" class="bg_btn switch_map _j_switch_map"><i></i><span>切回炫酷地图封面</span></a>
						</div>
					</div>
					<div class="bg_switch bg_show _j_toppic hide">
						<i class="my_bg" id="_j_bgimg"
							style="background-image: url(''); background-size: cover"
							data-imgsrc=""></i>
						<div class="center"></div>
						<div class="switch_btn">
							<a role="button" class="bg_btn switch_map _j_switch_map"><i></i><span>切回炫酷地图封面</span></a>
							<a role="button" class="bg_btn switch_bg _j_toppic_uploader">
								<div id="_j_changeuploader"
									style="width: 100%; height: 100%; position: absolute; top: 0; left: 0"></div>
								<i></i><span>更换头图封面</span>
							</a>
						</div>
					</div>
				</div>

			</div>
			<!-- 地图特效的控制-->
			<!-- 地图特效的控制-->


			<div class="tags_bar">
				<div class="center clearfix">
					<ul class="flt2">
						<!--主要需要实现的功能-->
						<li class="on"><a class="tags_link" href="/" title="我的窝">我的窝</a></li>
						<li><a class="tags_link" href="toMyTravel" title="我的游记">我的游记</a></li>
						<li><a class="tags_link" href="to_question" title="我的问答">我的问答</a></li>
						<li id="_j_pathnav"><a class="tags_link" href="my_track"
							title="我的足迹">我的足迹</a></li>
						<li><a class="tags_link" href="" title="我的点评">我的点评</a></li>
						<li><a class="tags_link" href="goTogether" title="我的结伴">我的结伴</a></li>
						<li class="more mygroup_tips"><span class="tags_link"
							role="button" title="更多" style="cursor: default">更多<i
								class="MDownMore"></i></span>
							<div class="tags_more_list">
								<ul>
									<li data-cs-t="go_to_activity"><a href="" title="我的活动"
										data-cs-p="activity"><i class="ico_activity"></i><span>我的活动</span></a></li>
									<li><a href="" title="我的小组"><i class="ico_group"></i><span>我的小组</span></a>
									</li>
									<li><a href="" title="我的收藏"><i class="ico_collect"></i><span>我的收藏</span></a></li>
									<li><a href="" title="我的订单"><i class="ico_order"></i><span>我的订单</span></a></li>
									<li><a href="" title="我的优惠券"><i class="ico_ticket"></i><span>我的优惠券</span></a></li>
									<li><a href="" title="我的兑换"><i class="ico_exchange"></i><span>我的兑换</span></a></li>
									<li><a href="goLocal" title="我的当地人"><i
											class="ico_rent"></i><span>我的当地人</span></a></li>
								</ul>
							</div></li>
					</ul>
				</div>
			</div>

		</div>


		<style>
.flow_path_maps {
	overflow: hidden;
	position: absolute;
	top: 75px;
	width: 100%;
	bottom: 0;
}

.flow_path_maps ._j_mapsizi {
	height: 100%;
}

.flow_path_maps .flowsmall {
	width: 140px;
	height: 68px;
	position: absolute;
	right: 5%;
	bottom: 100px;
	z-index: 10;
}

.flow_path_maps .flowsmall ._j_bg {
	width: 140px;
	height: 68px;
	background: #000;
	opacity: 0.3;
	filter: alpha(opacity = 30);
	position: absolute;
	top: 0;
	left: 0;
	z-index: -1;
}

.flow_path_maps .flowsmall .jvectormap-marker {
	display: none;
}

.maps-content {
	width: 100%;
	height: 100%
}

.flow_path_maps .jvectormap-zoomin, .flow_path_maps .jvectormap-zoomout
	{
	display: none
}
</style>
		<script type="text/x-jquery-tmpl" id="_j_addmddpanel">

<div class="path-maps-full hide">
  <!---->
    <div class="maps-bar">
        <div class="bg"></div>
        <div class="bar-inner">
            <div class="bar-search">
                <div class="inp-txt"><i class="icon-search _j_searchbtn"></i><input class="_j_searchmddinput _j_searchtopinput" type="text" placeholder="搜索目的地城市或国家"></div>
            </div>
            <div class="pull-right _j_topaction hide">
                <span class="path-nums">你已添加了 <em class="_j_addedcountrynum">0</em> 个国家 <em class="_j_addedmddnum">0</em> 个城市</span>
                <a class="btn btn-cancel _j_cancel" role="button">取消</a>
                <a class="btn btn-submit _j_submit" role="button">确定</a>
            </div>
        </div>
    </div>
    <div class="maps-content">
        <div class="list-bar">
            <i class="icon-mark"></i>
            <div class="panel">
            <!--添加足迹-->
                <div class="empty _j_emptyselectedcontent"><strong>添加足迹<i class="txt-lighten"></i>城市</strong><br>选择你去过的城市</div>
                <div class="_j_selectedcontent hide">
                    <div class="path-nums">你已添加了 <em class="_j_addedcountrynum">0</em> 个国家 <em class="_j_addedmddnum">0</em> 个城市</div>
                    <div class="list-viewport" style=""><div class="overflow _j_suitemdd"></div></div>
                </div>
            </div>
        </div>
        <div class="pop-addPath hide _j_paneldialog">
            <a class="close-btn _j_close" id="popup_close"><i></i></a>
            <div class="padding">
                <h3 class="title">添加足迹</h3>
                <div class="pa-search"><i class="icon-search _j_searchbtn"></i><input class="inp-txt _j_searchmddinput _j_searchinput" type="text" placeholder="搜索目的地城市或国家"></div>
                <div class="tabs">
                    <ul class="_j_pantab">
                        <li class="_j_districtselecter _j_districttabitem _j_hotdistrict hot"><a role="button">热门</a></li>
                        <li class="_j_districtselecter _j_districttabitem china" data-selectkey="17341-17348-0" data-name="国内"><a role="button">国内</a></li>
                        <li class="_j_districtselecter _j_districttabitem world" data-selectkey="0-0-0" data-name="国际"><a role="button" data-selectkey="0-0-0">国际</a></li>
                    </ul>
                    <span class="location _j_crumbwrap"></span>
                </div>
                <div style="height:180px">
                <div class="place-panel _j_placepanel">
                    <div class="list _j_placecontent" style="max-height:180px">
                        <div class="no-result _j_pannocontent" style="display:none;"></div>
                        <div class="_j_pancontent">
                            <h3 class="_j_pancontenttitle"></h3>
                            <ul class="clearfix _j_pancontentlist"></ul>
                        </div>
                    </div>
                </div>
                </div>
                <div class="action">
                    <a class="btn btn-submit _j_complete _j_close" role="button">完成</a>
                </div>
            </div>
        </div>
        <div class="flow_path_maps" style="" id="_j_flowmapwrap">
            <div class="_j_mapsizi _j_worldmapholder flowsmall" id="flowworldmap" style="margin:0 auto;overflow:visible"><div class="_j_bg"></div></div>
            <div class="_j_mapsizi _j_chinamapholder" id="flowchinamap" style="margin:0 auto;overflow:visible"><div class="_j_bg"></div></div>
        </div>
    </div>
</div>




    </script>
		<script type="text/x-jquery-tmpl" id="_j_mddsuitelist">
    //添加国家
{{each(countrymddid, info) list}}
<dl class="item-country">
    <dt><h2>${info.name}</h2><i class="icon-arrow _j_togglefolder"></i></dt>
    <dd>
        {{each(i, item) info.mddlist}}
        <a class="tag" id="_j_suitemdditem_${item.mddid}" role="button"><span>${item.name}</span><i class="icon-remove _j_removefromsuite" data-mddid="${item.mddid}"></i></a>
        {{/each}}
    </dd>
</dl>
{{/each}}


    </script>
		<script type="text/x-jquery-tmpl" id="_j_hotemddlist">


    </script>


		<div class="up_bar hide" id="_j_toppic_progressbar"
			style="position: fixed; z-index: 100000">
			<p>
				正在上传<strong class="_j_numprogress"></strong>...
			</p>
			<div class="slide_bar">
				<i class="_j_progress"></i>
			</div>
		</div>
		<div class="set_top" id="_j_profile_setting_panel">
			<div class="center">
				<div class="set_item clearfix">
					<div class="set_map flt1">
						<div class="set_title">地图模板设置</div>
						<div class="set_list">
							<ul>

								<!--变化不同的地图-->
								<li class="_j_map_themetype  on" data-option="0"><a
									role="button"><img src="syste_img/img/myHome/m1.gif"></a>
									<p>经典</p></li>
								<li class="_j_map_themetype " data-option="1"><a
									role="button"><img src="syste_img/img/myHome/m2.gif"></a>
									<p>跃入蓝色星球</p></li>
								<li class="_j_map_themetype " data-option="2"><a
									role="button"><img src="syste_img/img/myHome/m3.gif"></a>
									<p>旅行让世界有光</p></li>
								<li class="_j_map_themetype " data-option="3"><a
									role="button"><img src="syste_img/img/myHome/m4.gif"></a>
									<p>大航海时代</p></li>
								<li class="_j_map_themetype " data-option="4"><a
									role="button"><img src="syste_img/img/myHome/m5.gif"></a>
									<p>PINK PUNK</p></li>
							</ul>
						</div>
					</div>

					<!-- 个性头图设置******************************************************* -->
					<!-- 个性头图设置******************************************************* -->
					<!-- 个性头图设置******************************************************* -->
					<!-- 个性头图设置******************************************************* -->
					<div class="set_pic flt2">
						<div class="set_title">个性头图设置</div>
						<a role="button" id="_j_pic_thumb_uploader" class="set_up"
							style="background-size: cover"> <i></i>
						</a>
						<p class="set_tips">（头图封面宽度不低于1350px）</p>
					</div>
				</div>
				<div class="set_tags clearfix">
					<a role="button" class="_j_covermode map_mode flt2" data-option="1"><i></i><span>头图模式显示</span></a>
					<a role="button" class="_j_covermode pic_mode on" data-option="0"><i></i><span>地图模式显示</span></a>
				</div>
				<div class="set_desision clearfix">
					<span class="set_btn flt2"> <!--实现图片封面的替换--> <a
						role="button" class="link_b _j_submit" title="确认">确认</a> <a
						role="button" class="link_b cancel _j_cancel" title="取消">取消</a>
					</span>
					<div class="bg_desision flt1">
						<strong>页面背景选择</strong> <span> <a role="button"
							class="_j_bgoption on" data-option="0"><i
								style="background-color: #eee;"></i></a> <a role="button"
							class="_j_bgoption" data-option="1"><img
								src="img/myHome/b2.png" height="48" width="48"></a> <a
							role="button" class="_j_bgoption" data-option="2"><img
								src="syste_img/img/myHome/b3.png" height="48" width="48"></a> <a
							role="button" class="_j_bgoption" data-option="3"><img
								src="syste_img/img/myHome/b4.png" height="48" width="48"></a> <a
							role="button" class="_j_bgoption" data-option="4"><img
								src="syste_img/img/myHome/b5.png" height="48" width="48"></a>
						</span>
					</div>
				</div>
				<!--需要实现功能-->
				<a role="button" class="close _j_cancel" title="关闭"></a>
			</div>
		</div>


		<div class="center clearfix">
			<div class="side_bar flt1">
				<style>
.MProfile pre {
	white-space: pre-wrap;
	word-break: break-word;
	word-wrap: break-word;
}
</style>



				<!-- **************************************************************************************************************-->
				<!-- **************************************************************************************************************-->
				<!-- *******************************************用户的信息*******************************************************************-->
				<div class="MAvatar">
					<div class="MAvaImg hasAva">
						<!--用户的头像-->
						<!--用户的头像-->
						<!--用户的详细的信息-->
						<img src="${user.userHeadImg }" height="120" width="120"
							alt="${user.mdUserName}"><a href="" class="MAvaUp"><i
							class="Mphoto"></i></a></i>
					</div>
					<div class="MAvaName">${user.mdUserName}<i
							class="MGenderMale"></i>
					</div>
					<div class="its_tags">
						<a href="" target="_blank" title="VIP"><i class="vip"></i></a> <a
							href="" target="_blank" title="分舵"><i class="duo"></i> <a
							href="" target="_blank" title="指路人"><i class="zhiluren"></i></a>
							<a href="" target="_blank" title="旅行家"><i class="traveller"></i></a>
					</div>
					<div class="MAvaInfo clearfix MAvaMyInfo">
						<span class="MAvaLevel flt1">等级：<a href=""
							title="${user.mdLevel}" target="_blank">Lv.${user.mdLevel }</a></span>
						<span class="MAvaPlace flt1" title="青岛">现居：青岛</span> <span
							class="MAvaSet"><a title="设置" href="updateUserNews"
							target="_blank"></a></span>
					</div>
					<!-- 用户的个性签名 -->
					<div id="_j_profilearea" class="MAvaProfile">
						<div class="MProfile _j_showintrobox"
							data-intro="${user.mdSignature}">
							<pre>${user.mdSignature}</pre>
						</div>
						<!-- 用户个性签名的输入 -->
						<!-- 用户个性签名的输入 -->
						<!-- 用户个性签名的输入 数据库更新使用ajax处理数据库更新数据-->
						<div class="MAvaInput hide _j_inputarea">
							<textarea id="_j_introarea" placeholder="年轻是一辈子的财富......"
								maxlength="100"></textarea>
							<a role="button" id="_j_introsaver" class="MAvaBtn" title="保存">保存</a>
						</div>

						<!-- *****************************************用户之间的关系**********************************-->
					</div>
					<div class="MAvaMore clearfix">
						<div class="MAvaNums">
							<strong><a href="" target="_blank">14</a></strong>
							<p>关注</p>
						</div>
						<div class="MAvaNums">
							<strong><a href="" target="_blank">0</a></strong>
							<p>粉丝</p>
						</div>
						<div class="MAvaNums last">
							<strong><a href="" target="_blank">0</a></strong>
							<p>蜂蜜</p>
						</div>
					</div>
				</div>

				<!-- *********************************我获得的特权 -->
				<!-- ************************************我获得的特权 -->
				<!-- 我获得的特权 -->
				<div class="MHonor">
					<div class="MHonTitle">我获得的特权</div>
					<div class="MHonDetail" id="_j_privicnt">
						<div class="MHonList">
							<ul class="clearfix" id="_j_privi_listcnt">
								<li><a href="" target="_blank"><i
										class="_j_priviitem i5" data-description="Lv3.特权：照片PK投票"></i></a>
									<a href="" target="_blank"><i class="_j_priviitem i4"
										data-description="Lv3.特权：攻略下载"></i></a></li>
								<li><a href="" target="_blank"><i
										class="_j_priviitem i3" data-description="Lv3.特权：申请宝藏"></i></a> <a
									href="" target="_blank"><i class="_j_priviitem i2"
										data-description="Lv1.特权：好友上限"></i></a></li>
								<li><a href="" target="_blank"><i
										class="_j_priviitem i1" data-description="Lv1.特权：攻略下载"></i></a></li>
							</ul>
						</div>
						<span class="MHonDescription" id="_j_privi_tip"
							style="display: none;"></span>
						<div class="MHonBtn">
							<span class="MPrev2 _j_prev"></span><span class="MNext2 _j_next"></span>
						</div>
					</div>
				</div>


				<div class="MUsers">
					<div class="MUsersTitle">我的关注</div>
					<div class="MUsersDetail" id="_j_followcnt">
						<div class="MUsersAtom">
							<ul class="clearfix _j_followlist">
								<li><a href="" target="_blank"> <img
										src="syste_img/img/img/1.png" height="48" width="48" alt="蜂窝机器人"
										title="蜂窝机器人">
								</a>
									<p>
										<a href="" target="_blank" title="蜂窝机器人">蜂窝机器人</a>
									</p></li>
								<li><a href="" target="_blank"> <img
										src="syste_img/img/img/2.png" height="48" width="48" alt="蚂蜂窝攻略组"
										title="蚂蜂窝攻略组">
								</a>
									<p>
										<a href="" target="_blank" title="蚂蜂窝攻略组">蚂蜂窝攻略组</a>
									</p></li>
								<li><a href="" target="_blank"> <img
										src="syste_img/img/img/3png.png" height="48" width="48" alt="蜂窝机器人2号"
										title="蜂窝机器人2号">
								</a>
									<p>
										<a href="" target="_blank" title="蜂窝机器人2号">蜂窝机器人2号</a>
									</p></li>
								<li><a href="" target="_blank"> <img
										src="syste_img/img/img/4.png" height="48" width="48" alt="蚂蜂窝宝藏办"
										title="蚂蜂窝宝藏办">
								</a>
									<p>
										<a href="" target="_blank" title="蚂蜂窝宝藏办">蚂蜂窝宝藏办</a>
									</p></li>
								<li><a href="" target="_blank"> <img
										src="syste_img/img/img/5.png" height="48" width="48" alt="总编辑时间"
										title="总编辑时间">
								</a>
									<p>
										<a href="" target="_blank" title="总编辑时间">总编辑时间</a>
									</p></li>
								<li><a href="" target="_blank"> <img
										src="syste_img/img/img/9.jpeg" height="48" width="48" alt="蚂蜂窝活动君"
										title="蚂蜂窝活动君">
								</a>
									<p>
										<a href="" target="_blank" title="蚂蜂窝活动君">蚂蜂窝活动君</a>
									</p></li>
								<li><a href="" target="_blank"> <img
										src="syste_img/img/img/7.gif" height="48" width="48" alt="蚂蜂窝长老会"
										title="蚂蜂窝长老会">
								</a>
									<p>
										<a href="" target="_blank" title="蚂蜂窝长老会">蚂蜂窝长老会</a>
									</p></li>
								<li><a href="" target="_blank"> <img
										src="syste_img/img/img/8.png" height="48" width="48" alt="酒店专家助理"
										title="酒店专家助理">
								</a>
									<p>
										<a href="" target="_blank" title="酒店专家助理">酒店专家助理</a>
									</p></li>

							</ul>
						</div>
						<!-- **********************************关注的用户进行分页显示 -->
						<!-- **********************************关注的用户进行分页显示 -->
						<div class="MSimplePages _j_follow_page_action" data-total="13">
							<span class="MPrev _j_prev disabled" title="上一页"></span><span
								class="MNext _j_next" title="下一页"></span>
						</div>

					</div>
				</div>


				<div class="MGroup">
					<div class="MGroupTitle">我的小组</div>
					<div class="MGroupDetail">
						<ul>
							<li><a href="" target="_blank"><img
									src="syste_img/img/img/12.jpeg" height="80" width="80" alt=""></a> <a
								href="" target="_blank" class="name" title="蜂窝广场">蜂窝广场</a> <!--<p>3243贴子</p>-->
							</li>
							<li><a href="" target="_blank"><img src="syste_img/img/img/13.png"
									height="80" width="80" alt=""></a> <a href="" target="_blank"
								class="name" title="照片PK讨论">照片PK讨论</a> <!--<p>3243贴子</p>--></li>
							<li><a href="" target="_blank"><img src="syste_img/img/img/14.png"
									height="80" width="80" alt=""></a> <a href="/g/13356.html"
								target="_blank" class="name" title="MFW问答">MFW问答</a> <!--<p>3243贴子</p>-->
							</li>
							<li><a href="" target="_blank"><img
									src="syste_img/img/img/15.jpeg" height="80" width="80" alt=""></a> <a
								href="" target="_blank" class="name" title="蜂蜜商城">蜂蜜商城</a> <!--<p>3243贴子</p>-->
							</li>
							<li><a href="" target="_blank"><img
									src="syste_img/img/img/16.jpeg" height="80" width="80" alt=""></a> <a
								href="
								target=" _blank" class="name" title="MFW足迹点">MFW足迹点</a>
								<!--<p>3243贴子</p>--></li>
						</ul>
					</div>
				</div>

				<!-- --留言板实现功能*************************************** -->
				<!-- --留言板实现功能*************************************** -->
				<!-- --留言板实现功能*************************************** -->
				<!--留言板-->
				<div class="MGuestbook" id="_j_msgboard_wrap">
					<div class="MGuestTitle">
						留言板
						<div class="MCloseFunction _j_msgboard_closer">
							<i></i>
							<div class="MTips MTipsRight">关闭我的留言板（不让其他人留言）</div>
						</div>
					</div>
					<div class="MGuestInput">
						<textarea class="_j_msgboard_area" placeholder="说点什么..."></textarea>
						<a role="" class="MGuestBtn leave_word" title="留言"
							id="_j_msgboard_submit">留言</a>
					</div>
					<div class="MGuestList">
						<ul class="_j_msgboard_list">
							<c:if test="${messageList != null }">
								<c:forEach items="${messageList}" var="message">
									<li>
										<div class='word_one'>
											<div class='word_one_one'>
												<img src="${message.leave.userHead}" class='word_one_one'>
											</div>
											<div class='word_one_two'>
												<div class='word_one_two_one'>${message.leave.userNick}</div>
												<div class='word_one_two_two'>${message.time}</div>
											</div>
										</div>
										<div class='word_two'>${message.leaveMsg}</div>
									</li>
								</c:forEach>
							</c:if>


						</ul>
					</div>
				</div>


				<div class="placehold76" id="_j_music_placeholder">
					<div class="music_block clearfix music_fixed" id="_j_musiccnt">
						<div class="music_bar">
							<span class="process _j_progress" style="width: 0"></span>
						</div>
						<div class="music_botton" id="music">
							<div class="hd_audio"></div>
							<a role="button" class="pause _j_m_control"> <i></i> <i></i>
								<i></i> <i></i> <i></i> <img src="">
							</a> <span class="ico_slide prev _j_prev"></span> <span
								class="ico_slide next _j_next"></span>
						</div>
						<div class="music_info">
							<span class="name"></span> <span>来自</span> <a
								href="javascript:void(0);">暂无</a>
						</div>
					</div>

				</div>

			</div>
			<!-- ********************************************************** -->
			<!-- ********************************************************** -->
			<!-- ********************************************************** -->
			<div class="content flt2">
				<div class="common_block main_links">
					<ul class="clearfix">
						<li><a href="to_Writetravel" target="_blank"><i
								class="write_note"></i><span>写游记</span></a></li>
						<li><a href="" target="_blank"><i class="ask_expert"></i><span>问达人</span></a></li>
						<li><a href="" target="_blank"><i class="add_footprint"></i><span>添加足迹</span></a></li>
						<li class="last"><a href="" target="_blank"><i
								class="invite_friends"></i><span>发布结伴</span></a></li>
					</ul>
					<div class="open_corner open_corner_tips">
						<a role="button" id="_j_profile_setting"><span><i></i></span></a>
					</div>
				</div>
				<style>
.attention ._j_followed {
	display: none
}

._j_focused ._j_followed {
	display: inline-block
}

._j_focused ._j_follow {
	display: none
}
</style>
				<!--完善个人的信息资料-->
				<!--完善个人的信息资料-->
				<!--完善个人的信息资料-->
				<div class="common_block personal_info" id="_j_taskwrap">
					<div class="personal_tips">
						<p>
							<strong>${user.mdUserName }</strong>，这里是你的【窝】！
						</p>
						<p>是记录你的旅行记忆，结交各路豪杰的地盘儿。现在开启蚂蜂窝旅程！</p>
					</div>
					<div class="personal_list clearfix">
						<ul>
							<li>
								<div class="personal_ico">
									<i class="ico_info"></i>
								</div>
								<div class="personal_word">
									<p>
										做一个有“脸面”的人<br>上传头像，完善资料！<br>
									</p>
								</div>
								<div class="personal_btn complete">
									<a title="已完成">已完成</a>
								</div>
							</li>
							<li>
								<div class="personal_ico">
									<i class="ico_stroll"></i>
								</div>
								<div class="personal_word">
									<p>
										这儿潜伏着哪些旅行大神？<br>他们都怎么玩儿？
									</p>
								</div>
								<div class="personal_btn">
									<a role="button" class="_j_task_focus_talent" title="逛逛达人">逛逛达人</a>
								</div>
							</li>
							<li>
								<div class="personal_ico">
									<i class="ico_daka"></i>
								</div>
								<div class="personal_word">
									<p>
										蚂蜂窝会员升级有礼包。<br>第一步，从打卡开始。
									</p>
								</div>
								<div class="personal_btn complete">
									<a title="已完成">已完成</a>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<script type="text/x-jquery-tmpl" id="_j_talent_tmpl">
<div class="pop_recommenders">
    <div class="recommend_box recommend_fengshou">
        <div class="recommend_list clearfix">
            <ul class="clearfix _j_focus_list" style="height:230px"></ul>
        </div>
        <div class="recommend_users" style="height:136px">
            <ul class="clearfix _j_expert_list"></ul>
        </div>
        <div class="recommend_btn clearfix">
            <a role="button" class="link_b link_cancel _j_close" title="关闭">关闭</a>
            <a role="button" class="link_b _j_focus" title="确认关注">确认关注</a>
            <a role="button" class="change_users _j_exchange">换一批<i></i></a>
        </div>
    </div>
</div>


            </script>
				<!--动态的更新信息  -->
				<!--动态的更新信息-->
				<div class="common_block relative_info">
					<!--<span class="MLittleClose" title="关闭"></span>-->
					<!--动态的更新三条消息信息-->
					<p>
						<a href="" target="_blank">蚂蜂窝宝藏办</a> 刚刚在 <a href=""
							target="_blank">蜂窝广场</a> 发布了一个新活动 <span><a href=""
							target="_blank">海上奇遇记——蜂首聚乐部水手召集帖</a></span> <span class="time">2016-09-06
							17:27:44</span>
					</p>
					<p>
						<a href="" target="_blank">蜂窝机器人</a> 回复了<a href="" target="_blank">墨迹绘画师🐟</a>
						的文章 <span><a href="" target="_blank">抵制啃爹的照片PK</a></span> <span
							class="time">2016-09-06 16:51:28</span>
					</p>
					<p>
						<a href="" target="_blank">蜂窝机器人</a> 引用了 <a href=""
							target="_blank">whlovelsh</a> 的文章 <span><a href=""
							target="_blank">【67期主题上线！】秋意</a></span> <span class="time">2016-09-06
							10:46:40</span>
					</p>
				</div>

				<!-- -**********用户的游记的************** -->
				<!-- -**********用户的游记的************** -->
				<!-- -**********用户的游记的************** -->
				<c:forEach items="${trackList}" var="trackInfo">


					<div class="common_block my_notes">
						<div class="notes_list">
							<ul>
								<li data-order="1" data-top="0">
									<dl>
										<dt>
											<!-- 封面的图片对应的是游记的标题图片 -->
											<a href="" target="_blank" id="_j_coverlink_5663645"><img
												src="${trackInfo.mdThemeImg}" height="400"
												width="680" alt="封面"></a>
											<div class="hover_item">
												<div class="thumb_description"></div>
												<!-- *********************重新设置封面在原来有的图片中找******************** -->
												<!-- *********************重新设置封面在原来有的图片中找******************** -->
												<a class="note_up _j_up_icon" style="display: none"
													data-iid="5663645" title="置顶"></a>
												<div class="notes_status">
													<!-- 存储游记的id -->
													<span style="display: none">${trackInfo.mdRecid}</span> <a
														class="flt2 notes_handles cover set_set11" role="button"
														><i></i>设置封面</a>
													<!-- *********************重新打开游记的编辑页进行重新的编辑******************** -->
													<!-- *********************重新打开游记的编辑页进行重新的编辑******************** -->
													<a href="update" class="flt2 notes_handles edit" title="编辑"><i></i></a>

												</div>

											</div>
										</dt>
										<dd>
											<div class="note_title clearfix">
												<div class="MDing">
													<span style="display: none;" class="praise_one">${trackInfo.mdRecid}</span>
													<span id="topvote5663645">${trackInfo.mdStdname}</span> <a
														class="praise_1" data-vote="0" title="顶一下">顶</a>
													<!-- 顶一下更新数据库的内容 -->
													<!--用户的游记-->
												</div>
												<div class="note_info">
													<h3>
														<a href="" target="_blank" title="${trackInfo.mdTheme}">${trackInfo.mdTheme}</a>
													</h3>
													<div class="note_more">

														<span class="MInfoNum"><i class="MIcoView"></i><em>${trackInfo.mdStdname+10}/0</em></span>

														<span class="MInfoNum"><i class="MIcoStar"></i><em>${trackInfo.mdStdname}</em></span>
														<span class="time">${trackInfo.mdCreateTime}</span>
													</div>
												</div>
											</div>
											<div class="note_word"></div>
										</dd>
									</dl>
								</li>


							</ul>
						</div>


						<div class="more_notes">
							<a class="btn_deleted" href=""><i></i>已删除游记</a> <a href="">共<strong>${trackList.size()}</strong>篇随笔
							</a>
						</div>

					</div>

				</c:forEach>

				<!-- ---------***********************************用户问答************************* -->
				<c:if test="${anserList != null }">
					<div class="question_answer">
						<c:forEach items="${anserList}" var="anser">
							<div class="question_answer_one">
								<div class="img_123">
									<img alt="" class="img"
										src="${anser.question.questioner.userHead}">
								</div>
								<div class="img_1234">
									<div class="img_1231">
										<h2>${anser.question.quesMes}</h2>
									</div>
									<div class="img_1232">
										<span>提问者:</span><span class="">${anser.question.questioner.userNick}</span>
									</div>
								</div>
							</div>
							<div class="question_answer_two">${anser.answerMsg}</div>
						</c:forEach>

						<div class="question_answer_three">
							共<span>${anserList.size()}</span>回答
						</div>
					</div>
				</c:if>


				<!-- ---------***********************************用户的点评************************* -->
				<!-- ---------***********************************用户的点评************************* -->
				<script>
					M.closure(function() {
						M.Event.on('note cover setted', function(args) {
							$.get('/note/ajax.php?act=getNoteCover&iid='
									+ args.iid, function(res) {
								if (res && res.data) {
									$('#_j_coverlink_' + args.iid).children(
											'img').attr('src', res.data.url);
								}
							}, 'json');
						});
					});
				</script>
				<div class="common_block my_ask my_dp" id="_j_commentwrap">
					<div class="dp_list">
						<ul>
							<li class="first">
								<dl>
									<dt>
										<div class="dp_handles flt2">
											<div class="dp_ding flt2">
												<a role="button" title="顶一下" class="disabled"
													data-id="54188099"></a><strong class="_j_dingnum"
													style="display: none">0</strong>
											</div>
										</div>
										<div class="dp_title">
											<a href="/poi/3316.html" target="_blank"><span>青岛中山公园</span></a>
										</div>
										<div class="MStar">
											<div class="MStarIco MStarL5">
												<span></span>
											</div>
											<span class="MStarTips">必须推荐</span>
										</div>
									</dt>
									<dd>
										<div class="dp_detail">
											<div class="dp_word">青岛市是一个美丽的海滨城市......</div>
											<div class="dp_pics">
												<ul class="clearfix">
													<li><a><img src="upload/_DSC0016_287.JPG"></a></li>
												</ul>
											</div>
											<div class="dp_comment MInfoNum">
												<i class="MIcoComment"></i><span><strong>0</strong>条回复</span>
											</div>
										</div>
									</dd>
								</dl>
							</li>
						</ul>
					</div>
					<div class="more_notes">
						<a href="">共<strong>1</strong>点评
						</a>
					</div>
				</div>

				<!-- ---------***********************************用户的点评************************* -->
				<!-- 用户的回答*************************************************8 -->
				<!-- 用户的回答*************************************************8 -->

				<c:if test="${anserList == null }">
					<div class="common_block my_notes">
						<div class="common_title clearfix">
							<h2>我的回答</h2>
						</div>
						<div class="notes_default ask_default">
							<i class="ico_notes"></i>
							<div class="notes_default_detail">
								<p>
									蚂蜂窝问答是一个所有人帮所有人的平台，<br>用你的旅行经验，去帮助其他蜂蜂。
								</p>
							</div>
						</div>
					</div>
				</c:if>
				<!-- 用户的回答*************************************************8 -->
			</div>
		</div>
	</div>



	<div class="footer">
			<iframe src="MainFooter" frameborder="0" scrolling="no" marginheight="0"
					marginwidth="0" style="margin: 0px auto;"></iframe>

	</div>


	<!--返回顶部的代码-->

	<div class="mfw-toolbar" id="_j_mfwtoolbar">
		<div class="toolbar-item-top">
			<a role="button" class="btn _j_gotop"> <i class="icon_top"></i> <em>返回顶部</em>
			</a>
		</div>
		<div class="toolbar-item-feedback">
			<a role="button" data-japp="feedback" class="btn"> <i
				class="icon_feedback"></i> <em>意见反馈</em>
			</a>
		</div>
		<div class="toolbar-item-code">
			<a role="button" class="btn"> <i class="icon_code"></i>
			</a> <a role="button" class="mfw-code _j_code"> <syste_img/img
				src="http://images.mafengwo.net/images/qrcode-weixin.gif">
			</a>
			<!--<div class="wx-official-pop"><syste_img/img src="http://images.mafengwo.net/images/qrcode-weixin.gif"><i class="_j_closeqrcode"></i></div>-->
		</div>
		<div class="toolbar-item-down">
			<a role="button" class="btn _j_gobottom"> <i class="icon_down"></i>
				<em>页面底部</em>
			</a>
		</div>
	</div>


	<script language="javascript" type="text/javascript">
		if (typeof M !== "undefined" && typeof M.loadResource === "function") {
			M
					.loadResource("http://js.mafengwo.net/js/cv/js+AHeaderWo:js+home+AIndexTopCover:js+jquery-jvectormap-2.0.1.min:js+jvector-china:js+jvector-world:js+new_mdd_lnglat_map:js+jvmap:js+path+jvmap:js+path+ChinaWorldMap:js+home+ATopMap:js+jquery.tmpl:js+M+module+InputListener:js+M+module+SuggestionXHR:js+M+module+DropList:js+M+module+Suggestion:js+jquery.mousewheel.min:js+M+module+ScrollBar:js+M+module+dialog+Layer:js+M+module+dialog+DialogBase:js+M+module+dialog+Dialog:js+M+module+dialog+confirm:js+path+AAddCityPanel:js+plupload:js+module+uploader+Pluploader:js+M+module+TopTip:js+M+module+Clip:js+M+module+dialog+alert:js+home+AIndexTopCoverSetting:js+home+AIndexProfile:js+M+module+Slider:js+home+APrivilege:js+home+AFollowList:js+M+module+FrequencyVerifyControl:js+M+module+FrequencyAppVerify:js+home+AMsgBoard:js+jquery.jplayer:js+home+AMusicPlayer:js+home+ATask:js+jquery.upnum:js+home+AIndexCommentList:js+M+module+Storage:js+jquery.jgrowl.min:js+AMessage:js+M+module+FrequencySystemVerify:js+ALogin:js+M+module+ScrollObserver:js+M+module+QRCode:js+AToolbar:js+ACnzzGaLog:js+ARecruit:js+ALazyLoad^YlVWRQ^1469587281.js");
		}
	</script>





	<!-- ************************************设置封面的图片************************** -->
	<!-- ************************************设置封面的图片************************** -->

	<div class="page_syste_img/img" id="page"></div>
	<div class="page_syste_img/img1111">
		<div class="page_syste_img/img1112">
			<h1 style="margin: 10px auto auto 30px;">选择封面的图片</h1>
		</div>
		<div class="page_syste_img/img1113">
			<ul class="page_syste_img/img112">

			</ul>
		</div>
		<div class="page_syste_img/img1114">
			<span class="true_true">确定</span> <span class="back">&nbsp;取消</span>
		</div>
	</div>

	<!-- ************************************设置封面的图片************************** -->
</body>
</html>
