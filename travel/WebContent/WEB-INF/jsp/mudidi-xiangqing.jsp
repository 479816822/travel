<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>2016桂林旅游攻略,桂林自由行攻略,蚂蜂窝桂林出游攻略游记 - 蚂蜂窝</title>

<script language="javascript" src="js/mudidi-xiangqing.js"
	type="text/javascript"></script>

<link href="css/mudidi-xiangqing.css" rel="stylesheet" type="text/css" />
<link href="css/xiangqing1.css" rel="stylesheet" type="text/css" />
<link href="css/xiangqing2.css" rel="stylesheet" type="text/css" />
<link href="css/footera.css" rel="stylesheet" type="text/css" />

<link href="css/headera.css" rel="stylesheet">
</head>
<div>

	<!--************************************  header *********************************************-->
	<div id="header" xmlns="">
		<!--************ 导航栏 begin***************-->
		<div class="mfw-header">
			<div class="header-wrap clearfix">
				<div class="head-logo">
					<a class="mfw-logo" title="蚂蜂窝自由行"> <img
						src="img/header/mafengwo.png">
					</a>
				</div>
				<ul class="head-nav" data-cs-t="headnav" id="_j_head_nav">
					<li class="head-nav-index" ><a
						href="autoLogin">首页</a></li>
					<li class="head-nav-place" ><a href="toMudidi"
						title="目的地">目的地</a></li>
					<li class="head-nav-gonglve" ><a href="to_strategy"
						title="旅游攻略">旅游攻略</a></li>
					<li class="head-nav-sales head-nav-dropdown _j_sales_nav_show"
						id="_j_nav_sales" ><a class="drop-toggle"
						href="to_you"
						style="cursor: pointer; display: block; border-bottom: 0 none;"
						> <span class="head-act-96"></span> <span>自由行商城<i
								class="icon-caret-down"></i></span>
					</a>
						<div class="dropdown-menu dropdown-sales hide _j_sales_top"
							id="_j_sales_panel" >
							<ul>
								<li><a target="_blank" href="to_hotel" >机票＋酒店</a>
								</li>
								<li><a target="_blank" href="" >当地游</a></li>
								<li><a target="_blank" href="" >签证</a></li>
								<li><a target="_blank" href="" >国际租车</a></li>
								<li><a target="_blank" href="to_save" >保险</a></li>
							</ul>
						</div></li>
					<li class="head-nav-hotel" ><a href="to_hotel"
						title="酒店">酒店</a></li>
					<li class="head-nav-community head-nav-dropdown _j_shequ_nav_show"
						id="_j_nav_community" >
						<div class="drop-toggle">
							<a href="goIndex" target="_blank">社区</a>
						</div> <!-- 社区下拉面板 begin -->
						<div
							class="dropdown-panel dropdown-community hide _j_shequ_top no-image"
							id="_j_community_panel" data-cs-t="community_nav">
							<div class="panel-wrapper">
								<ul class="nav-list clearfix">
									<li class="h"><a href="goIndex" target="_blank" title="问答"
										>问答<i class="i-hot">hot</i></a></li>
									<li><a href="" target="_blank" title="蚂蜂窝周边"
										>蚂蜂窝周边<i class="i-new">new</i></a></li>
									<li><a href="goShop" target="_blank" title="蚂蜂窝商店"
										>蜂蜜兑换</a></li>
									<li><a href="goTogether" target="_blank" title="结伴"
										>结伴</a></li>
								</ul>
								<ul class="nav-list-sub clearfix">
									<li><a href="" target="_blank" title="蚂蜂窝旅行家"
										>蚂蜂窝旅行家</a></li>
									<li><a href="" target="_blank" title="蚂蜂窝旅行家"
										>小组论坛</a></li>
									<li><a href="" target="_blank" title="分舵同城"
										>分舵同城</a></li>
									<li><a href="" target="_blank" title="蚂蜂窝拍卖行"
										>蚂蜂窝拍卖行</a></li>
									<li><a href="" target="_blank" title="蜂首聚乐部"
										>蜂首聚乐部</a></li>
									<li><a href="goPK" target="_blank" title="照片PK"
										>照片PK</a></li>
									<li><a href="" target="_blank" title="真人兽"
										>真人兽</a></li>
									<li><a href="" target="_blank" title="道具商店"
										>道具商店</a></li>
								</ul>
							</div>

						</div> <!-- 社区下拉面板 end -->
					</li>
				</ul>


				<!--头部搜索栏 begin-->
				<div class="head-search">
					<div class="head-search-wrapper">
						<div class="head-searchform">
							<input name="q" type="text" id="_j_head_search_input"
								autocomplete="off"> <a role="button" class="icon-search"
								id="_j_head_search_link"><img
								src="img/header/fangdajing.png"></a>
						</div>
					</div>
				</div>

				<!--头部登录 begin-->

				<c:if test="${user == null }">

					<div class="login-out">
						<a class="weibo-login" href="" title="微博登录"><img
							src="img/header/xinlang.png"></a> <a class="qq-login" href=""
							title="QQ登录"><img src="img/header/qq.png"></a> <a
							class="weixin-login" href="" title="微信登录"><img
							src="img/header/weixin.png"></a> <a id="_j_showlogin"
							title="登录蚂蜂窝" href="login" target="_blank" >登录</a><span class="split">|</span><a
							href="register" title="注册帐号" target="_blank" >注册</a>
					</div>
				</c:if>


				<c:if test="${user != null }">
	<div class="login-info" >
						<div class="head-user" id="_j_head_user">
							<a target="_blank" class="drop-trigger" href="to_myHome" title="${user.userNick }的窝">
								<div class="user-image">  
									<img src="${user.userHead }" class="img_img" alt="${user.userNick }的窝">
								</div> 
							</a>
						</div>
						<div class="head-msg" >
							消息
						</div>
						<div class="head-daka daka-complete">
							<a >打卡</a> 
						</div>
					</div>
				</c:if>

				<!--头部登录 end-->
			</div>
			<div class="dropdown-group"></div>
			<div class="shadow"></div>
		</div>

		<script>
			//判断是否显示 下拉bar
			;
			(function() {
				window.showBarFlag = true;
				var realPathName = location.pathname;
				var regExp = /localdeals|sales|insurance|activity/gi;
				var pathArr = realPathName.match(regExp);
				if (window.Env.flag == 'gonglue_campaign') {
					$('.dropdown-bar').hide();
					return;
				}
				if (realPathName == '/sales/0-0-0-5-0-0-0-0.html'
						|| window.Env.salesType == 5) {
					$('.ul-dropdown-bar > li:eq(4)').addClass('on');
					window.showBarFlag = false;
					$('.dropdown-bar').show();
				} else if (realPathName == '/localdeals/0-0-0-21-0-0-0-0.html'
						|| window.Env.salesType == 21) {
					$('.ul-dropdown-bar > li:eq(3)').addClass('on');
					window.showBarFlag = false;
					$('.dropdown-bar').show();
				} else if (window.Env.sales_title_tag == 'visa'
						|| window.Env.salesType == 4) {
					$('.ul-dropdown-bar > li:eq(2)').addClass('on');
					window.showBarFlag = false;
					$('.dropdown-bar').show();
				} else if (window.Env.salesType) {
					switch (window.Env.salesType | 0) {
					case 1:
					case 3:
					case 6:
						$('.ul-dropdown-bar > li:eq(0)').addClass('on');
						break;
					case 2:
						$('.ul-dropdown-bar > li:eq(1)').addClass('on');
					default:
						$('.ul-dropdown-bar > li:eq(1)').addClass('on');
					}
					window.showBarFlag = false;
					$('.dropdown-bar').show();
				} else {
					if (pathArr) {
						if (pathArr.length == 1 && pathArr[0] != 'activity') {
							switch (pathArr[0]) {
							case 'localdeals':
								$('.ul-dropdown-bar > li:eq(1)').addClass('on');
								break;
							case 'insurance':
								$('.ul-dropdown-bar > li:eq(5)').addClass('on');
								break;
							case 'sales':
								$('.ul-dropdown-bar > li:eq(0)').addClass('on');
								break;
							default:
								break;
							}
							window.showBarFlag = false;
							$('.dropdown-bar').show();
						} else {
							if ('activity'.indexOf(pathArr) != -1) {
								window.showBarFlag = true;
								$('.dropdown-bar').hide();
							}
						}
					}
				}
				// 点击时触发
				$('.ul-dropdown-bar > li').on('click', function() {
					$(this).addClass('on').siblings().removeClass('on');
				});
			})();
		</script>

	</div>


	<!--***********************************************  container  **********************************************-->
	<div id="container" data-cs-t="目的地详情页">
		<!--*********************************1.详情页 头部 begin*******************************************-->
		<div class="row row-placeTop">
			<div class="wrapper">
				<!--天气栏-->
				<div class="extra">
					<div class="littleWeather">
						<a href="" target="_blank"> <img
							src="img/mudidi-xiangqing/yu.png" width="25" height="25" /> <span>阵雨
								24℃~33℃</span>
						</a>
					</div>

					<div class="action">
						<a class="btn-collect" href="" _iswg="0" _mddid="10095"
							data-act="want_go" data-cs-l="收藏-添加"><img
							src="img/mudidi-xiangqing/shoucang.png" width="30" height="30" />收藏</a>
						<a class="btn-been" href="" _ispa="0" _mddid="10095"
							data-act="set_path"><img src="img/mudidi-xiangqing/quguo.png"
							width="30" height="30" />去过</a>
					</div>
				</div>


				<div class="crumb">
					<div class="item">
						<a href="" target="_blank">目的地</a><em>&gt;</em>
					</div>
					<div class="item">
						<div class="drop">
							<span class="hd"><a href="" target="_blank">广西<i></i></a></span>
							<!--广西下拉框-->
							<div class="bd">
								<i class="arrow"><b></b></i>
								<div class="col">
									<h3>热门地区</h3>
									<ul class="clearfix">
										<li><a href="" target="_blank">桂林</a></li>
										<li><a href="" target="_blank">阳朔</a></li>
										<li><a href="" target="_blank">北海</a></li>
										<li><a href="" target="_blank">涠洲岛</a></li>
										<li><a href="" target="_blank">南宁</a></li>
									</ul>
								</div>
								<div class="more">
									<a href="" target="_blank">&gt;&gt;更多地区</a>
								</div>
							</div>
							<!--广西下拉框-->
						</div>
						<em>&gt;</em>
					</div>
					<div class="item">
						<div class="drop">
							<span class="hd"><a href="">桂林<i></i></a></span>
							<!--桂林下拉框-->
							<div class="bd">
								<i class="arrow"><b></b></i>
								<div class="col">
									<ul class="clearfix">
										<li><a href="" target="_blank">桂林景点</a></li>
										<li><a href="" target="_blank">桂林酒店</a></li>
										<li><a href="" target="_blank">桂林餐饮</a></li>
										<li><a href="" target="_blank">桂林购物</a></li>
										<li><a href="" target="_blank">桂林娱乐</a></li>
										<li><a href="" target="_blank">桂林当地玩乐</a></li>
									</ul>
								</div>
							</div>
							<!--桂林下拉框-->

						</div>
						<em>&gt;</em>
					</div>
					<div class="item cur">
						<strong>桂林旅游攻略</strong>
					</div>
				</div>

				<script language="JavaScript" type="text/javascript">
					$(function() {
						//面包屑
						$('.drop').mouseenter(function(ev) {
							var target = $(ev.currentTarget);
							clearTimeout(target.data('hideTimer'));
							target.addClass('open');
							target.children('bd').fadeIn(200);
						});
						$('.drop').mouseleave(function(ev) {
							var target = $(ev.currentTarget);
							target.data("hideTimer", setTimeout(function() {
								target.removeClass('open');
								target.children('bd').fadeOut(200);
							}, 200));
						});
					});
				</script>
				<div class="title">
					<h1>桂林</h1>
					<a class="num-photo" href="" target="_blank">(<em>466060</em>张图片)
					</a> <br> <span class="en">Guilin City</span>
				</div>

				<!--目的地导航 begin-->
				<div class="place-navbar" style="border-top: 0;" data-cs-p="目的地导航">
					<div class="navbar-con">
						<ul class="navbar clearfix">
							<li class="navbar-overview city-guide"><a class="navbar-btn"
								href="" data-cs-l="概况"> <i class="navbar-icon"><img
										src="img/mudidi-xiangqing/gaikuang%20.png"></i><span>概况</span>
							</a></li>
							<li class="navbar-scenic"><a class="navbar-btn" href=""
								data-cs-l="景点"> <i class="navbar-icon"><img
										src="img/mudidi-xiangqing/jingdian-ico.png"></i><span>景点</span>
							</a></li>
							<li class="navbar-hotels"><a class="navbar-btn" href=""
								data-cs-l="酒店"> <i class="navbar-icon"><img
										src="img/mudidi-xiangqing/jiudian-ico.png"></i><span>酒店</span>
							</a></li>

							<!--当地玩乐 下拉框-->
							<li class="navbar-local navbar-dropdown"><a
								style="position: relative" class="navbar-btn " href=""> <i
									class="navbar-icon"><img
										src="img/mudidi-xiangqing/dangdiwanle.png"></i> <span>
										当地玩乐 </span> <em class="drop-corner"></em> <b class="d12"></b>
							</a>
								<div class="navbar-dropmenu hide ">
									<ul class="navbar-sub clearfix">
										<li><a href="" target="_blank" data-cs-l="门票">门票</a></li>
										<li><a href="" target="_blank" data-cs-l="一日游">一日游</a></li>
										<li><a href="" target="_blank" data-cs-l="接送机">接送机</a></li>
										<li><a href="" target="_blank" data-cs-l="多日游">多日游</a></li>
										<li><a href="" target="_blank" data-cs-l="酒店套餐">酒店套餐</a>
										</li>
										<li class="special"><b class="d12"></b><a href=""
											target="_blank">专区</a></li>
									</ul>
								</div></li>
							<!--当地玩乐 下拉框-->

							<li class="navbar-sales navbar-dropdown"><a
								style="position: relative" class="navbar-btn "
								href="javascript:void(0)"> <i class="navbar-icon"><img
										src="img/mudidi-xiangqing/jijiu.png"></i> <span> 机 +
										酒 </span> <em class="drop-corner"></em> <b class="d12"></b>
							</a> <!--机 酒 下拉框-->
								<div class="navbar-dropmenu hide ">
									<ul class="navbar-sub clearfix">
										<li><a href="" target="_blank" data-cs-l="机+酒">机+酒</a></li>
										<li><a href="" target="_blank" data-cs-l="半自由行">半自由行</a>
										</li>
										<li><a href="" target="_blank" data-cs-l="机票">机票</a></li>
										<li><a href="http://www.mafengwo.cn/insurance/"
											target="_blank" data-cs-l="旅游保险">旅游保险</a></li>
										<li class="special"><b class="d12"></b><a href=""
											target="_blank">专区</a></li>
									</ul>
								</div> <!--机 酒 下拉框--></li>
							<li class="navbar-community navbar-dropdown"><a
								style="position: relative" class="navbar-btn " href=""> <i
									class="navbar-icon"><img
										src="img/mudidi-xiangqing/shequ.png"></i> <span> 社区 </span>
									<em class="drop-corner"></em> <b class="d12"></b>
							</a> <!--社区 下拉框-->
								<div class="navbar-dropmenu hide ">
									<ul class="navbar-sub clearfix">
										<li><a href="" data-cs-l="游记">游记</a></li>
										<li><a href="" data-cs-l="行程">行程</a></li>
										<li><a href="" data-cs-l="问答">问答</a></li>
										<li><a href="" target="_blank" data-cs-l="攻略">攻略</a></li>
										<li class="special"><b class="d12"></b><a href=""
											target="_blank">专区</a></li>
									</ul>
								</div> <!--社区 下拉框--></li>
							<li class="navbar-food navbar-dropdown"><a
								style="position: relative" class="navbar-btn " href=""> <i
									class="navbar-icon"><img
										src="img/mudidi-xiangqing/canyin.png"></i> <span> 餐饮
								</span> <em class="drop-corner"></em> <b class="d12"></b>
							</a> <!--餐饮 下拉框-->
								<div class="navbar-dropmenu hide ">
									<ul class="navbar-sub clearfix">
										<li><a href="" data-cs-l="餐饮">餐饮</a></li>
										<li><a href="" data-cs-l="购物">购物</a></li>
										<li><a href="" data-cs-l="娱乐">娱乐</a></li>
										<li class="special"><b class="d12"></b><a href=""
											target="_blank">专区</a></li>
									</ul>
								</div> <!--餐饮 下拉框--></li>
							<li class="navbar-maps navbar-last"><a class="navbar-btn"
								href="" target="_blank" data-cs-l="地图"> <i
									class="navbar-icon"><img
										src="img/mudidi-xiangqing/ditu-ico.png"></i><span>地图</span>
							</a></li>
						</ul>



						<div class="overview-drop hide">
							<!--概况下拉框 begin-->
							<div class="drop-bd">
								<dl class="clearfix">
									<dt>
										<a href="" target="_blank">概况</a>
									</dt>
									<dd>
										<a href="" target="_blank">桂林速览</a> <span>|</span> <a href=""
											target="_blank">最佳旅行时间</a> <span>|</span> <a href=""
											target="_blank">建议游玩天数</a> <span>|</span> <a href=""
											target="_blank">消费水平</a>
									</dd>
								</dl>

								<dl class="clearfix">
									<dt>
										<a href="" target="_blank">地图</a>
									</dt>
									<dd></dd>
								</dl>

								<dl class="clearfix">
									<dt>
										<a href="" target="_blank">桂林必体验</a>
									</dt>
									<dd>
										<a href="" target="_blank">泛舟漓江体验“画中游”</a> <span>|</span> <a
											href="" target="_blank">阳朔西街的悠闲时光</a> <span>|</span> <a
											href="">漓江啤酒鱼的地道吃法</a> <span>|</span> <a href=""
											target="_blank">阳朔骑行好风光</a> <span>|</span> <a href="">山水实景演出中的民风民情</a>
										<span>|</span> <a href="" target="_blank">到虞山桥寻日落与童趣</a> <span>|</span>
										<a href="" target="_blank">看气势恢弘的龙脊梯田</a>
									</dd>
								</dl>

								<dl class="clearfix">
									<dt>
										<a href="" target="_blank">行前准备</a>
									</dt>
									<dd>
										<a href="" target="_blank">穿衣指南</a> <span>|</span> <a href=""
											target="_blank">参考资料</a> <span>|</span> <a href=""
											target="_blank">省钱妙计</a> <span>|</span> <a href=""
											target="_blank">机票+住宿</a>
									</dd>
								</dl>

								<dl class="clearfix">
									<dt>
										<a href="" target="_blank">景点</a>
									</dt>
									<dd>
										<a href="" target="_blank">景点概况</a> <span>|</span> <a href=""
											target="_blank">桂林地区人气景点Top10</a> <span>|</span> <a href=""
											target="_blank">阳朔&amp;漓江人气景点</a> <span>|</span> <a href=""
											target="_blank">阳朔&amp;漓江户外爱好者之选</a> <span>|</span> <a
											href="" target="_blank">龙脊梯田人气景点</a> <span>|</span> <a
											href="" target="_blank">周边县景点</a>
									</dd>
								</dl>

								<dl class="clearfix">
									<dt>
										<a href="" target="_blank">餐饮</a>
									</dt>
									<dd>
										<a href="" target="_blank">餐饮概况</a> <span>|</span> <a href=""
											target="_blank">特色美食</a> <span>|</span> <a href=""
											target="_blank">经典桂林风味菜馆推荐</a> <span>|</span> <a href=""
											target="_blank">桂林米粉人气店Top10</a> <span>|</span> <a href=""
											target="_blank">阳朔啤酒漓江鱼人气餐厅Top10</a>
									</dd>
								</dl>

								<dl class="clearfix">
									<dt>
										<a href="" target="_blank">购物</a>
									</dt>
									<dd>
										<a href="" target="_blank">购物概况</a> <span>|</span> <a href=""
											target="_blank">特色商品</a> <span>|</span> <a href=""
											target="_blank">阳朔特色小店推荐</a> <span>|</span> <a href=""
											target="_blank">桂林市人气购物地推荐</a>
									</dd>
								</dl>

								<dl class="clearfix">
									<dt>
										<a href="" target="_blank">娱乐</a>
									</dt>
									<dd>
										<a href="" target="_blank">娱乐概况</a> <span>|</span> <a href=""
											target="_blank">漂流</a> <span>|</span> <a href=""
											target="_blank">看演出</a> <span>|</span> <a href=""
											target="_blank">攀岩</a> <span>|</span> <a href=""
											target="_blank">骑行</a>
									</dd>
								</dl>

								<dl class="clearfix">
									<dt>
										<a href="" target="_blank">实用信息</a>
									</dt>
									<dd>
										<a href="" target="_blank">语言</a> <span>|</span> <a href=""
											target="_blank">银行</a> <span>|</span> <a href=""
											target="_blank">邮局</a> <span>|</span> <a href=""
											target="_blank">旅行安全</a>
									</dd>
								</dl>
							</div>
							<!--概况下拉框 end-->
						</div>
					</div>
				</div>
				<!--目的地导航 end-->

				<script language="JavaScript" type="text/javascript">
					(function() {
						var navigation = $('.place-navbar'), offset_top = navigation
								.offset().top, h = navigation.outerHeight(true), intervalod, navdrop = $('.city-guide'), //顶导航
						overviewdrop = $('.overview-drop'), //攻略概况
						subtabdrop = $('.navbar-dropdown');//子菜单
						navigation
								.after('<div id="fill_area" style="height: ' + h + 'px;display:none;"></div>');
						function setFixed() {

							var scrolltop = $(document).scrollTop(), fillarea = $('#fill_area');
							if (scrolltop > offset_top + 60) {
								fillarea.show();
								navigation.addClass('place-navbar-fixed');
							} else {
								fillarea.hide();
								navigation.removeClass('place-navbar-fixed');
							}
						}

						$(window).scroll(function() {
							setFixed();
						});
						/*定导航*/
						navdrop.mouseenter(function(ev) {
							clearTimeout(intervalod);
							overviewdrop.removeClass('hide');
						});
						navdrop.mouseleave(function(ev) {
							intervalnd = setTimeout(function() {
								overviewdrop.addClass('hide');
							}, 200);
						});
						/*攻略概况*/
						overviewdrop.mouseenter(function(ev) {
							clearTimeout(intervalnd);
							overviewdrop.removeClass('hide');
						});
						overviewdrop.mouseleave(function(ev) {
							intervalod = setTimeout(function() {
								overviewdrop.addClass('hide');
							}, 100);
						});
						/*子菜单*/
						subtabdrop.mouseenter(function(ev) {
							$(ev.currentTarget).find('.navbar-dropmenu')
									.removeClass('hide');
						});
						subtabdrop.mouseleave(function(ev) {
							$(ev.currentTarget).find('.navbar-dropmenu')
									.addClass('hide');
						});
						setFixed();
					})();
				</script>

			</div>
		</div>
		<!--*********************************** 详情页头部 end ********************************************-->



		<!--*************************************** 详情页第二部分 begin ***************************************-->
		<div class="row row-primary">
			<div class="wrapper">
				<div class="screen clearfix">
					<!--详情页 大图-->
					<div class="r-main">
						<a class="photo" href="" target="_blank"> <img
							src="img/mudidi-xiangqing/guilin-datu.jpeg" width="680"
							height="360">
							<div class="text">
								<span>有466060张图片</span>
							</div>
						</a>
					</div>

					<!--桂林印象-->
					<div class="r-side">
						<div class="m-impress">
							<h3 class="hd">桂林印象</h3>
							<div class="bd clearfix">
								<ul class="tag" style="height: 140px; overflow: hidden">
									<li title="3667篇游记提及"><a href="" target="_blank">山<em>3667</em></a>
									</li>
									<li title="1752篇游记提及"><a href="" target="_blank">漂流<em>1752</em></a>
									</li>
									<li title="1581篇游记提及"><a href="" target="_blank">漓江鱼<em>1581</em></a>
									</li>
									<li title="1317篇游记提及"><a href="" target="_blank">看演出<em>1317</em></a>
									</li>
									<li title="1138篇游记提及"><a href="" target="_blank">桂林米粉<em>1138</em></a>
									</li>
									<li title="1135篇游记提及"><a href="" target="_blank">桂林米粉<em>1135</em></a>
									</li>
									<li title="734篇游记提及"><a href="" target="_blank">蔬果<em>734</em></a>
									</li>
									<li title="628篇游记提及"><a href="" target="_blank">溶洞<em>628</em></a>
									</li>
									<li title="555篇游记提及"><a href="" target="_blank">酿<em>555</em></a>
									</li>
								</ul>
							</div>
						</div>
						<div class="m-nearby">
							<div class="maps-img">
								<img src="">
							</div>
							<div class="maps-expand hide" data-cs-p="目的地分发">
								<div id="picArea" class="picArea">
									<span class="close"></span>
									<div id="mypic" class="mypic">
										<img src="img/mudidi-xiangqing/ditu.jpeg" width="525"
											height="360" border="0" id="mypic1" class="mypic1"> <img
											src="img/mudidi-xiangqing/ditu2.jpeg" width="525"
											height="360" border="0" id="mypic2" class="mypic2">
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--桂林印象-->

				<!--广告-->
				<div class="da980" style="padding: 20px 0 0;">
					<div class="wrapper">
						<div style="position: relative">
							<a target="_blank"
								href="http://www.mafengwo.cn/ad/r.php?key=Y1pRQA"><img
								border="0" src="img/mudidi-xiangqing/guanggao1.jpeg" /></a><img
								src="img/mudidi-xiangqing/icon.png"
								style="position: absolute; bottom: 4px; left: 4px; width: 22px; height: 12px;" />
						</div>
					</div>
				</div>
				<!--广告-->

			</div>
		</div>
		<!--*********************************** 详情页第二部分 end   ***************************************-->



		<!--*************************************** 详情页第三部分 begin ************************************-->
		<div id="pagelet-block-95f29af1de3edbbb063e13a499bc548a"
			class="pagelet-block" data-api=":mdd:pagelet:recommendsApi"
			data-params="{&quot;iMddid&quot;:&quot;10095&quot;}" data-async="1"
			data-controller="">
			<div class="row row-feature row-bg">
				<div class="wrapper">

					<!--酒店住宿攻略 begin-->
					<div class="col col-hotel">
						<h2 class="hd">
							<a data-title="酒店标题" href="" target="_blank"><i></i>酒店住宿攻略</a>
						</h2>
						<dl>
							<dt>
								<a data-title="酒店分区1" class="r-tit" href="" target="_blank"><span
									class="No">1</span>十字街</a>
							</dt>
							<dd>
								<a data-title="酒店分区1" href="" target="_blank">
									<div class="r-photo">
										<img src="img/mudidi-xiangqing/jiudian.jpeg" width="296"
											height="156">
									</div>
									<div class="r-text">
										<h4 class="percent">
											<em>41%</em>的游客选择住在这里
										</h4>
										<p>
											有<span class="num">166</span>家酒店。 这里是桂林的中心广场，也是市内最繁华热闹的街区。
											十字街距离火车站不远，搭乘公交可方便到达...
										</p>
									</div>
								</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a data-title="酒店分区2" class="r-tit" href="" target="_blank"><span
									class="No">2</span>火车站周边</a>
							</dt>
							<dd>
								<a data-title="酒店分区2" href="" target="_blank">
									<div class="r-text">
										<h4 class="percent">
											<em>32%</em>的游客选择住在这里
										</h4>
										<p>
											有<span class="num">333</span>家酒店。 经济型酒店很多，住宿环境一般但交通很方便。
											小客栈偶尔会有宰客的行为，蜂蜂们要多加小心。
										</p>
									</div>
								</a>
							</dd>
						</dl>
						<div class="ft">
							<a data-title="查看全部酒店" class="a-link" href="" target="_blank"><i
								class="icon-link"></i>3552家酒店</a>
						</div>
					</div>
					<!--酒店住宿攻略 end-->


					<!--必游景点排行 begin-->
					<div class="col col-scenic">
						<h2 class="hd">
							<a data-title="景点标题" href="" target="_blank"><i></i>必游景点排行</a>
						</h2>
						<dl>
							<dt>
								<a data-title="景点1" class="r-tit" href="" target="_blank"><span
									class="No">1</span>漓江</a>
							</dt>
							<dd>
								<a data-title="景点1" href="" target="_blank">
									<div class="r-photo">
										<img src="img/mudidi-xiangqing/jingdian.jpeg" width="296"
											height="156">
									</div>
									<div class="r-text">
										<span class="user" title="lucky_肥高" rel="nofollow"> <img
											src="">浪人
										</span> &nbsp;“相信很多人前去兴坪无疑是奔着20块人民币背景和九马画山，事实上本人觉得不值100块，才一个半...”
									</div>
								</a>
							</dd>
						</dl>
						<dl>
							<dt>

								<a data-title="景点2" class="r-tit" href="" target="_blank"><span
									class="No">2</span>遇龙河</a>
							</dt>
							<dd>
								<a data-title="景点2" href="" target="_blank">
									<div class="r-text">
										<span class="user" title="﹉桃色禁忌﹎" rel="nofollow"> <img
											src="">浪人
										</span>
										&nbsp;“&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我们玩了上半程。刚漂下去的时候还有点怕怕的，后来才逐渐好了，其实并不可怕，关...”
									</div>
								</a>
							</dd>
						</dl>
						<div class="ft">
							<a data-title="查看全部景点" class="a-link" href=""><i
								class="icon-link"></i>327个景点</a>
						</div>
					</div>
					<!--必游景点排行 end-->

					<!--必吃美食排行 begin-->
					<div class="col col-cate">
						<h2 class="hd">
							<a data-title="餐饮标题" href="" target="_blank"><i></i>必吃美食排行</a>
						</h2>
						<dl>
							<dt>
								<a data-title="餐饮1" class="r-tit" href=""><span class="No">1</span>漓江鱼</a>
							</dt>
							<dd>
								<a data-title="餐饮1" href="">
									<div class="r-photo">
										<img src="img/mudidi-xiangqing/meishi.jpeg" width="296"
											height="156">
									</div>
									<div class="r-text">
										啤酒漓江鱼是阳朔的当地名菜。选用阳朔漓江里鲜活的大鲤鱼，先用桂北山区出产的生茶油烹炸，后放入桂林产的上等啤酒红焖而成，具有独特...
									</div>
								</a>
							</dd>
						</dl>
						<dl>
							<dt>
								<a data-title="餐饮2" class="r-tit" href=""><span class="No">2</span>桂林米粉</a>
							</dt>
							<dd>
								<a data-title="餐饮2" href="">
									<div class="r-text">
										桂林米粉以其独特的风味远近闻名。其做工考究，先将上好大米磨成浆，装袋滤干，揣成粉团煮熟后压榨成圆根或片状即成。园的称米粉，片状...
									</div>
								</a>
							</dd>
						</dl>
						<div class="ft">
							<a data-title="查看全部餐饮" class="a-link" href=""><i
								class="icon-link"></i>5169个餐厅</a>
						</div>
					</div>
					<!--必吃美食排行 end-->

				</div>
			</div>
		</div>
		<!--*************************************** 详情页第三部分 end **************************************-->



		<!--*************************************** 详情页第四部分 begin ***********************************-->
		<div class="row row-local" data-cs-t="目的地详情页自由行攻略">
			<div class="wrapper" data-cs-p="">
				<h2 class="r-title">自由行攻略</h2>
				<div class="local-pro">
					<ul class="clearfix">
						<li><a class="img" href="" target="_blank"> <img
								src="img/mudidi-xiangqing/ziyouxinggonglue.jpeg" width="320"
								height="170">
						</a> <a class="title" href="" target="_blank">桂林土著，教你如何玩转桂林山水（附经典4日行程推荐）</a>
							<p>最佳旅游时间</p>
							<p>桂林精华4日线路推荐</p>
							<div class="more">
								<a class="a-link" href="" target="_blank"><i
									class="icon-link"></i>查看详情</a>
							</div></li>
					</ul>
				</div>
			</div>
		</div>
		<!--*************************************** 详情页第四部分 end *****************************************-->



		<!--*************************************** 详情页第四部分 begin ***********************************-->
		<div class="row row-travels row-bg">
			<div class="wrapper">
				<div class="navbar clearfix">
					<ul class="tn-nav">
						<li class="active"><a href="" data-type="yj">桂林游记</a></li>
						<li><a href="" data-type="xc">桂林推荐行程</a></li>
					</ul>
				</div>
				<div class="_notelist">
					<div class="tn-list">

						<!--游记1-->
						<div class="tn-item clearfix">
							<div class="tn-image">
								<a href="" target="_blank"> <img class="lazy" width="220"
									height="150" src="img/mudidi-xiangqing/youji1.jpeg"
									style="display: inline;"> <i class="icon-baozang"></i>
								</a>
							</div>
							<div class="tn-wrapper" data-focus="" data-topsort="1"
								data-star="3">
								<dl>
									<dt class="hasxjicon">
										<a class="bzicon" href="" target="_blank" title="宝藏游记"></a> <a
											href="" target="_blank">❤宝藏纪念❤盛夏</a>
									</dt>
									<dd>
										<a href="" target="_blank">2016年06月23日，我向自己预约了这篇游记，当时我说：
											7月的某天， 我计划去 桂林 。 出发前，我敲下了这些文字：
											很小的时候跟随父母去了一次，记忆已经完全模糊了，一直想再去看看，赶上我们家灰太狼刚好有几天年假，想着这次终于可以不用一个人旅行了！哇哈哈！
											—————...</a>
									</dd>
								</dl>
							</div>
						</div>
						<!--游记1-->


						<!--游记2-->
						<div class="tn-item clearfix">
							<div class="tn-image">
								<a href="" target="_blank"> <img class="lazy" width="220"
									height="150" src="img/mudidi-xiangqing/youji2.jpeg"
									style="display: inline;">
								</a>
							</div>
							<div class="tn-wrapper">
								<dl>
									<dt class="hasxjicon">
										<a class="fsicon" href="" target="_blank" title="蜂首游记"></a> <a
											href="" target="_blank">【定焦纪实】-兴安不完全纪录</a>
									</dt>
									<dd>
										<a href="" target="_blank">【题记】
											从小在南方长大，只耳闻过北国的秋天，金黄一片，却从未感受过。 尤其是 广州 ，一夜冬风来，从未感受过秋天的金黄与清爽。
											于是趁着周末，来到 兴安 ，探索那点点的秋意。 兴安 不大，两天时间却也无法游遍，不完全纪录在此，却依旧心满意足。
											因为想拍银杏，所以没...</a>
									</dd>
								</dl>
							</div>
						</div>
						<!--游记2-->

						<!--游记3-->
						<div class="tn-item clearfix">
							<div class="tn-image">
								<a href="" target="_blank"> <img class="lazy" width="220"
									height="150" src="img/mudidi-xiangqing/youji3.jpeg"
									style="display: inline;">
								</a>
							</div>

							<div class="tn-wrapper" data-focus="1" data-topsort="0"
								data-star="3">
								<dl>
									<dt class="hasxjicon">
										<a class="fsicon" href="" target="_blank" title="蜂首游记"></a> <a
											href="" target="_blank">没有说走就走的长途旅行，但有说走就走的周末旅行。打个飞的去广西，过个周末就肥来上班儿！——以此纪念黄姚古镇和阳朔的三日短暂小时光</a>
									</dt>
									<dd>
										<a href="" target="_blank"> 【写在前面的话】
											亲，你会为一年只有不到10天年假完全不够去旅行而发愁么？
											亲，你会为手里攥着好几天没用完的年假但却始终被一堆工作压着无从请假从而无法去旅行而郁闷么？
											亲，你会为你可以请假的那几天恰巧你男盆友/老公没办法请假从而无法去旅行而沮丧么？ 亲，你会为好...</a>
									</dd>
								</dl>
							</div>
						</div>
						<!--游记3-->


					</div>
				</div>

				<!--page bar-->
				<div class="_pagebar">
					<div align="right" class="m-pagination">
						<span class="count">共<span>101</span>页 / <span>1006</span>条
						</span> <span class="pg-current">1</span> <a href="" class="pi">2</a> <a
							href="" class="pi">3</a> <a href="" class="pi">4</a> <a href=""
							class="pi">5</a> <a href="" class="pi">6</a> <a
							class="pi pg-next" href="">后一页</a> <a class="pi pg-next" href="">末页</a>
					</div>
				</div>
				<!--page bar-->
			</div>


		</div>
	</div>
</div>
</div>

<!--广告-->
<div class="row wrapper">
	<div style="position: relative">
		<a target="_blank" href=""><img border="0"
			src="img/mudidi-xiangqing/guanggao.jpeg" /></a><img
			src="img/mudidi-xiangqing/icon.png"
			style="position: absolute; bottom: 4px; left: 4px; width: 22px; height: 12px;" />
	</div>
</div>
</div>



<!--**************************** footer ******************************-->
<div id="footer">
	<div class="ft-content">
		<div class="ft-info clearfix">
			<dl class="ft-info-col ft-info-intro">
				<dt>中国领先的自由行服务平台</dt>
				<dd>覆盖全球200多个国家和地区</dd>
				<dd>
					<strong>100,000,000</strong> 位旅行者
				</dd>
				<dd>
					<strong>920,000</strong> 家国际酒店
				</dd>
				<dd>
					<strong>21,000,000</strong> 条真实点评
				</dd>
				<dd>
					<strong>382,000,000</strong> 次攻略下载
				</dd>
				<dd>
					<a class="highlight"
						href="http://www.mafengwo.cn/activity/sales_report2015/index"
						target="_blank">中国旅游行业第一部“玩法”</a>
				</dd>
			</dl>
			<dl class="ft-info-col ft-info-about">
				<dt>关于我们</dt>
				<dd>
					<a href="http://www.mafengwo.cn/s/about.html" rel="nofollow">关于蚂蜂窝</a>
				</dd>
				<dd>
					<a href="http://www.mafengwo.cn/s/property.html" rel="nofollow">网络信息侵权通知指引</a>
				</dd>
				<dd>
					<a href="http://www.mafengwo.cn/s/private.html" rel="nofollow">隐私政策</a>
				</dd>
				<dd>
					<a href="http://www.mafengwo.cn/s/agreement.html" rel="nofollow">服务协议</a>
				</dd>
				<dd>
					<a href="http://www.mafengwo.cn/s/contact.html" rel="nofollow">联系我们</a>
				</dd>
				<dd>
					<a class="joinus highlight" title="蚂蜂窝团队招聘" target="_blank"
						href="http://www.mafengwo.cn/s/hr.html" rel="nofollow">加入蚂蜂窝</a>
				</dd>
			</dl>
			<dl class="ft-info-col ft-info-service">
				<dt>旅行服务</dt>
				<dd>
					<ul class="clearfix">
						<li><a target="_blank" href="http://www.mafengwo.cn/gonglve/">旅游攻略</a></li>
						<li><a target="_blank" href="http://www.mafengwo.cn/hotel/">酒店预订</a></li>
						<li><a target="_blank" href="http://www.mafengwo.cn/sales/">旅游特价</a></li>
						<li><a target="_blank" href="http://zuche.mafengwo.cn/">国际租车</a></li>
						<li><a target="_blank" href="http://www.mafengwo.cn/wenda/">旅游问答</a></li>
						<li><a target="_blank" href="http://www.mafengwo.cn/insure/">旅游保险</a></li>
						<li><a target="_blank" href="http://z.mafengwo.cn">旅游指南</a></li>
						<li><a target="_blank" href="http://huoche.mafengwo.cn">订火车票</a></li>
						<li><a target="_blank"
							href="http://www.mafengwo.cn/travel-news/">旅游资讯</a></li>
						<li><a target="_blank"
							href="http://www.mafengwo.cn/app/intro/gonglve.php">APP下载</a></li>
						<li><a target="_blank"
							href="http://www.mafengwo.cn/sales/union.php" class="highlight">全球供应商入驻</a></li>
					</ul>
				</dd>
			</dl>
			<dl class="ft-info-col ft-info-qrcode">
				<dd>
					<span class="ft-qrcode-tejia"><img
						src="img/footer/liangpin.png"></span>
					<p>蚂蜂窝良品</p>
				</dd>
				<dd>
					<span class="ft-qrcode-weixin"><img
						src="img/footer/weixin.gif"></span>
					<p>蚂蜂窝官方微信</p>
				</dd>
			</dl>
			<dl class="ft-info-social">
				<dt>关注我们</dt>
				<dd>
					<a class="ft-social-weibo" target="_blank"
						href="http://weibo.com/mafengwovip"><i class="ft-social-icon"></i><img
						src="img/footer/xinlang.png"></a> <a class="ft-social-qqt"
						target="_blank" href="http://t.qq.com/mafengwovip"><i
						class="ft-social-icon"></i><img src="img/footer/tengxun.png"></a>
					<a class="ft-social-qzone" target="_blank"
						href="http://1213600479.qzone.qq.com/"><i
						class="ft-social-icon"></i><img src="img/footer/qqkj.png"></a>
				</dd>
			</dl>
		</div>

		<div class="ft-copyright">
			<div class="ft-safety">
				<a class="s-a" target="_blank"
					href="https://search.szfw.org/cert/l/CX20140627008255008321"
					id="___szfw_logo___"></a> <a class="s-b"
					href="https://ss.knet.cn/verifyseal.dll?sn=e130816110100420286o93000000&ct=df&a=1&pa=787189"
					target="_blank" rel="nofollow"></a> <a class="s-c"
					href="http://www.itrust.org.cn/Home/Index/itrust_certifi/wm/1669928206.html"
					target="_blank" rel="nofollow"></a>
			</div>
			<a href="http://www.mafengwo.cn"><i class="ft-mfw-logo"></i></a>
			<p>
				© 2016 Mafengwo.cn <a href="http://www.miibeian.gov.cn/"
					target="_blank">京ICP备11015476号</a> 京公网安备110105013401号 京ICP证110318号
			</p>
			<p>
				新出网证(京)字242号 全国统一客服电话：<span class="highlight">4006-345-678</span><a
					target="_blank" href="http://www.mafengwo.cn/s/sitemap.html"
					class="highlight m_l_10">网站地图</a>
			</p>
		</div>
	</div>
</div>
</body>
</html>
