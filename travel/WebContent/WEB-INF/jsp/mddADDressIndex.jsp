<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html xmlns="">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>目的地旅游攻略 - 蚂蜂窝</title>

<!--样式-->
<link href="css/mudidi.css" rel="stylesheet">
<script language="javascript" src="js/jquery-3.1.0.min.js"
			type="text/javascript"></script>
<script language="javascript" src="js/jquery-validation-1.15.1.js"></script> </head>
<script language="javascript" src="js/mudidi.js" type="text/javascript"></script>
<body>
	<!--********************导航栏 begin ********************-->
		<div class="header" style="	width: 100%;
	height: 60px;
	margin: 0 auto;
	position: fixed;
	z-index: 999;
	border-bottom: 2px solid #eee;">
		<iframe src="VisitHead" frameborder="0" scrolling="no" marginheight="0"
			marginwidth="0" style="margin: 0px auto;z-index: 999;
	width: 100%;
	height: 300px;"></iframe>
	</div>
		<!-- 新自由行菜单 end -->
		<!--********************导航栏 end ********************-->


		<!--******************* header大图 begin *********************-->
		<div class="container" data-cs-t="目的地首页">
			<div class="place-focus" data-cs-p="头图">
				<div class="show-banner show-info-line">
					<div class="cover">
						<a class="bigimg" href="" target="_blank" data-cs-l="图片"> <img
							class="index" data-ow="1920" data-oh="1330" src='syste_img/img/10010.jpeg' />
							<div class="shade"></div>
						</a>
					</div>
					<!--大图上的消息-->
					<div class="show-info show-info-sm">
						<!--头图右边白线图-->
						<img src="syste_img/img/mudidi/toutu-line.png" />
						<div class="show-name">
							<a href="" target="_blank" data-t="目的地"> <span class="day"><em>DAY</em><br>
								<strong>6</strong></span>
								<h2>三亚亲子六日玩法</h2>
							</a>
						</div>
						<p class="location">
							该线路基于<em>39</em>位蜂蜂游记生成，<em>42%</em>的蜂蜂都会选择此路线
						</p>
						<div class="show-links">
							<span class="icon-arr">→</span><a href="" target="_blank"
								data-t="目的地">大东海</a> <span class="icon-arr">→</span><a href=""
								target="_blank" data-t="目的地">鹿回头山顶公园</a> <span class="icon-arr">→</span><a
								href="" target="_blank" data-t="目的地">三亚千古情景区</a> <span
								class="icon-arr">→</span><a href="" target="_blank" data-t="目的地">槟榔谷黎苗文化旅游区</a>
							<span class="icon-arr">→</span><a href="" target="_blank"
								data-t="目的地">三亚湾椰梦长廊</a> <span class="icon-arr">→</span><a
								href="" target="_blank" data-t="目的地">分界洲岛生态旅游区</a> <span
								class="icon-arr">→</span><a href="" target="_blank" data-t="目的地">南湾猴岛生态旅游区</a>
							<span class="icon-arr">→</span><a href="" target="_blank"
								data-t="目的地">三亚免税店</a> <span class="icon-arr">→</span><a href=""
								target="_blank" data-t="POI">海棠湾天房洲际度假酒店</a>
						</div>
					</div>
				</div>






				<div class="place-search-panel place-search-panel-sm">
					<h2>Don't fear the unknown</h2>
					<form name="mdd-search-form" action="/group/s.php" method="get">
						<div class="searchbar">
							<input autocomplete="off" class="search-input" type="text"
								name="q" placeholder="我想去..." /> <a class="search-button"
								href="#" data-cs-l="搜索" role="button"><i class="icon-search"></i></a>
						</div>
					</form>
				</div>
			</div>
			<script type="text/javascript">
				//图片处理
				function loadImg(src, load) {
					$(new Image()).load(load)[0].src = src;
				}
				function coverPicLoad(img, $con, fitType, cropData) {
					var $img = $(img = img || this);
					if (typeof $con == "string" || typeof $con == "number") {
						fitType = $con;
						$con = $img.parent();
					} else if ($.type($con) != "object"
							|| $.isPlainObject($con)) {
						$con = $img.parent();
					}
					var imagew = (img = $img[0]).naturalWidth, imageh = img.naturalHeight, offsetw = $con
							.width(), offseth = $con.height(), css = {};
					if (!imagew) {
						if ($img.attr("data-ow")) {
							imagew = $img.attr("data-ow");
							imageh = $img.attr("data-oh");
						} else {
							$img.attr("data-ow", imagew = img.width);
							$img.attr("data-oh", imageh = img.height);
						}
					}
					if (imagew / imageh >= offsetw / offseth) {
						if (imageh >= offseth || fitType == "1") {
							css = {
								margin : "0 0 0 "
										+ (offsetw - imagew
												/ (imageh / offseth)) / 2
										+ "px",
								height : fitType == "1" ? "100%" : offseth,
								width : "auto"
							};
						} else if (imageh / offseth >= 0.95) {
							css = {
								margin : "0 0 0 " + (offsetw - imagew) / 2
										+ "px",
								width : imagew,
								height : offseth
							};
						} else {
							css = {
								margin : (offseth - imageh) / 2 + "px 0 0 "
										+ (offsetw - imagew) / 2 + "px",
								width : "auto",
								height : "auto"
							};
						}
					} else {
						if (imagew >= offsetw || fitType == "1") {
							css = {
								margin : (offseth - imageh / (imagew / offsetw))
										/ 2 + "px 0 0 0",
								width : fitType == "1" ? "100%" : offsetw,
								height : "auto"
							};
						} else if (imagew / offsetw >= 0.95) {
							css = {
								margin : (offseth - imageh) / 2 + "px 0 0 0",
								width : offsetw,
								height : imageh
							};
						} else {
							css = {
								margin : (offseth - imageh) / 2 + "px 0 0 "
										+ (offsetw - imagew) / 2 + "px",
								width : "auto",
								height : "auto"
							};
						}
					}
					$img.css(css).appendTo($con);
				}
				//头图处理
				(function() {
					var $window = $(window), $banner = $('.place-focus'), $cover = $banner
							.find('.show-banner >.cover'), $coverc = $cover
							.find('a.bigimg'), img = $coverc.find('img'), $info = $banner
							.find('.show-info'), $searchPanel = $('.place-search-panel'), _resizetimeout;

					function calHeight() {
						var wh = $window.height(), ww = Math.max($banner
								.width(), $window.width());
						if (wh > ww * .8) {
							return img.data('oh') / img.data('ow') * ww;
						} else {
							return Math.max(wh
									- Math.max(Math.min(wh - 550, 150), 100),
									400);
						}
					}

					$cover.height(calHeight());
					if (img[0].complete) {
						$cover.height('auto');
					} else {
						img.load(function() {
							$cover.height('auto');
						});
					}
					var winH, winW;
					$window
							.bind(
									'resize.bannerimg',
									function(e, t) {
										var height = $window.height();
										var width = $window.width();
										if (winH != height || winW != width) {
											winH = height;
											winW = width;
											$info[$window.width() <= 1440 ? 'addClass'
													: 'removeClass']
													('show-info-sm');
											$searchPanel[$window.width() <= 1440 ? 'addClass'
													: 'removeClass']
													('place-search-panel-sm');
											coverPicLoad(img, $coverc
													.height(calHeight()), 1);
										}
									}).trigger("resize.bannerimg");
				})();

				/*头图用户信息显示*/
				var $uFrom = $('.pic-from'), $uFromPop = $uFrom
						.find('.pic-from-pop'), _oUFromPopw = $uFromPop.width();
				$uFrom.hover(function() {
					$uFromPop.stop(true).width(0).css({
						visibility : 'visible'
					}).animate({
						width : _oUFromPopw
					});
				}, function() {
					$uFromPop.stop(true).animate({
						width : 0
					}, function() {
						$(this).css('visibility', 'hidden');
					});
				});

				//向下滚动
				$('.show-arrdown').click(function(e) {
					e.preventDefault();
					var top = $('.row:first').offset().top;
					$('html,body').stop().animate({
						'scrollTop' : top
					}, 300);
				});
				$('.show-links').find('.icon-arr').eq(0).hide();
			</script>

			<!--广告-->
			<div class="iamad-fxckme">
				<div style="position: relative">
					<a target="_blank" href=""> <img border="0"
						src="syste_img/img/mudidi/guanggao3.jpeg" style="margin-left: 0%;margin-right: 15%"/></a> <img
						src="syste_img/img/mudidi/guanggao.png"
						style="position: absolute; bottom: 4px; left: 4px; width: 22px; height: 12px;" />
				</div>
			</div>


			<!--******************************热门目的地 begin ******************************-->


<c:forEach items="${allList1 }" var="only_one"> 

			<div class="row row-routelines" data-cs-p="玩法路线">
				<div class="wrapper">
					<div class="r-title">
						<h2>${only_one.oneArea }</h2>
						<div>玩法路线在手，景点、美食、交通、住宿全搞定！</div>
					</div>
					<ul class="r-nav">
					<c:forEach items="${only_one.twoList }" var="two_list">
						<li class="nav3 r-nav-active"><a href="">${two_list.twoArea }</a></li>
						</c:forEach>
					</ul>
					<!--国内推荐 begin -->
					
					<c:set var="first" value="${only_one.twoList[0] }"></c:set>
					
					<!--1.云南 begin-->
					<div class="discovery-tiles" data-routeindex="0">
						<div class="tiles-left">
							<div class="tiles-item tiles-b">
							<!-- 点击时到详情页进行显示 -->
								<a href="showAddress?id=${first.threeList[0].threeId }" target="_blank"> <img
									src="${first.threeList[0].attractionList[0].attrImg }" />
									<div class="title title-line">
										<span class="day"><em>DAY</em><br>
										<strong>9</strong></span>
										<h3>${first.threeList[0].threeArea }</h3>
										<p>大理 － 丽江 － 泸沽湖</p>
									</div>
									<div class="info info-line">
										<div class="middle">
											<span class="day"><em>DAY</em><br>
											<strong>9</strong></span>
											<h3>大理-丽江-泸沽湖9日玩法</h3>
											<p>D1-D3 大理</p>
											<p>D4-D6 丽江</p>
											<p>D7-D8 泸沽湖</p>
											<p>D9 丽江</p>
										</div>
									</div>
								</a>
							</div>

							<div class="tiles-item tiles-c2">
								<a href="showAddress?id=${first.threeList[1].threeId }" target="_blank"> <img
									src="${first.threeList[1].attractionList[0].attrImg }" />
									<div class="title title-line">
										<span class="day"><em>DAY</em><br>
										<strong>4</strong></span>
										<h3>${first.threeList[1].threeArea }</h3>
										<p>丽江古城 － 狮子山 － 木府 － 丽江四方街 － 冰川公园 － 云杉坪(殉情谷) － 蓝月谷 － 束河古镇
											－ 束河四方街</p>
									</div>
									<div class="info info-line">
										<div class="middle">
											<span class="day"><em>DAY</em><br>
											<strong>4</strong></span>
											<h3>丽江+玉龙雪山4日玩法</h3>
											<p class="p-day">D1 丽江古城 － 狮子山 － 木府 － 丽江四方街</p>
											<p class="p-day">D2 冰川公园 － 云杉坪(殉情谷) － 蓝月谷</p>
											<p class="p-day">D3 束河古镇 － 束河四方街 － 青龙桥 － 九鼎龙潭 － 龙泉寺(三圣宫)
												－ 茶马古道博物馆</p>
											<p class="">D4 拉市海湿地公园</p>
										</div>
									</div>
								</a>
							</div>

							<div class="tiles-item tiles-c2">
								<a href="showAddress?id=${first.threeList[2].threeId }" target="_blank"> <img
									src="${first.threeList[2].attractionList[0].attrImg }" />
									<div class="title title-line">
										<span class="day"><em>DAY</em><br>
										<strong>3</strong></span>
										<h3>${first.threeList[2].threeArea }</h3>
										<p>丽宁十八弯观景台 － 泸沽湖观景台 － 大落水码头 － 洛克岛(嬉娃俄岛/湖心岛) － 里格岛 － 里格岛 －
											尼赛村(里色村) － 小洛水 － 泸源崖</p>
									</div>
									<div class="info info-line">
										<div class="middle">
											<span class="day"><em>DAY</em><br>
											<strong>3</strong></span>
											<h3>泸沽湖3日玩法</h3>
											<p class="p-day">D1 丽宁十八弯观景台 － 泸沽湖观景台 － 大落水码头 －
												洛克岛(嬉娃俄岛/湖心岛) － 里格岛</p>
											<p class="p-day">D2 里格岛 － 尼赛村(里色村) － 小洛水 － 泸源崖 － 情人滩 －
												末代土司王妃府 － 草海 － 赵家湾(女神湾)</p>
											<p class="p-day">D3 里格岛 － 尼赛村(里色村) － 格姆女神山</p>
										</div>
									</div>
								</a>
							</div>
						</div>

						<div class="tiles-right">
							<div class="tiles-item tiles-r2b">
								<a href="showAddress?id=${first.threeList[3].threeId }" target="_blank"> <img
									src="${first.threeList[3].attractionList[0].attrImg }" />
									<div class="title title-line">
										<span class="day"><em>DAY</em><br>
										<strong>3</strong></span>
										<h3>${first.threeList[3].threeArea }</h3>
										<p>大理古城 － 崇圣寺三塔 － 三塔倒影公园 － 人民路 － 大理古城 － 喜洲镇 － 蝴蝶泉 － 双廊 －
											南诏风情岛</p>
									</div>
									<div class="info info-line">
										<div class="middle">
											<span class="day"><em>DAY</em><br>
											<strong>3</strong></span>
											<h3>${first.threeList[3].threeArea }</h3>
											<p class="p-day">D1 大理古城 － 崇圣寺三塔 － 三塔倒影公园 － 人民路</p>
											<p class="p-day">D2 大理古城 － 喜洲镇 － 蝴蝶泉 － 双廊 － 南诏风情岛 － 挖色镇 －
												小普陀 － 大理古城</p>
											<p class="">D3 苍山</p>
										</div>
									</div>
								</a>
							</div>

							<div class="tiles-item tiles-r2s">
								<a href="showAddress?id=${first.threeList[4].threeId }" target="_blank"> <img
									src="${first.threeList[4].attractionList[0].attrImg }" />
									<div class="title title-line">
										<span class="day"><em>DAY</em><br>
										<strong>2</strong></span>
										<h3>${first.threeList[4].threeArea }</h3>
										<p>噶丹•松赞林寺 － 独克宗古城 － 龟山公园 － 月光广场 － 普达措国家公园</p>
									</div>
									<div class="info info-line">
										<div class="middle">
											<span class="day"><em>DAY</em><br>
											<strong>2</strong></span>
											<h3>香格里拉2日玩法</h3>
											<p class="p-day">D1 噶丹•松赞林寺 － 独克宗古城 － 龟山公园 － 月光广场</p>
											<p class="">D2 普达措国家公园</p>
										</div>
									</div>
								</a>
							</div>
						</div>
					</div>
					<!--1.云南 end-->





				</div>
				<!--广告-->
				<div class="iamad-fxckme middle" style="margin: 20px auto 0;">
					<div style="position: relative">
						<a target="_blank" href=""><img border="0"
							src="syste_img/img/mudidi/guanggao1.png" /></a> <img
							src="syste_img/img/mudidi/guanggao.png"
							style="position: absolute; bottom: 4px; left: 4px; width: 22px; height: 12px;" />
					</div>
				</div>
			</div>





</c:forEach>

			<!--******************************热门目的地 end ******************************-->
<!--******************************当季 begin ******************************-->

<!--******************************当季end ******************************-->

			<!--*分隔线*-->
			<div class="row-line"></div>


<c:forEach items="${allList }" var="all">



			<!--******************************主题精选 begin ******************************-->
			<div class="row row-routelines" data-cs-p="玩法路线">
				<div class="wrapper">
					<div class="r-title">
						<h2>${all.oneArea }</h2>
						<div>玩法路线在手，景点、美食、交通、住宿全搞定！</div>
					</div>
					<ul class="r-nav">
						<li class="nav3 r-nav-active"><a href="">${all.twoList[0].twoArea }</a></li>
						<li class="nav3 "><a href="">${all.twoList[1].twoArea }</a></li>
						<li class="nav3 "><a href="">${all.twoList[2].twoArea }</a></li>
					</ul>

					<!--1.泰国 begin -->
					<!--第1块图片-->
					<div class="discovery-tiles" data-routeindex="0">
						<div class="tiles-left">
							<div class="tiles-item tiles-b">
								<a href="" target="_blank"> <img
									src="img/mudidi/taiguo1.jpeg" />
									<div class="title title-line">
										<span class="day"><em>DAY</em><br>
										<strong>7</strong></span>
										<h3>清迈拜县7日玩法</h3>
										<p>清迈 － 拜县</p>
									</div>
									<div class="info info-line">
										<div class="middle">
											<span class="day"><em>DAY</em><br>
											<strong>7</strong></span>
											<h3>清迈拜县7日玩法</h3>
											<p>D1-D4 清迈</p>
											<p>D5-D6 拜县</p>
											<p>D7 清迈</p>
										</div>
									</div>
								</a>
							</div>
							<!--第3块图片-->
							<div class="tiles-item tiles-c2">
								<a href="" target="_blank"> <img
									src="img/mudidi/taiguo3.jpeg" />
									<div class="title title-line">
										<span class="day"><em>DAY</em><br>
										<strong>5</strong></span>
										<h3>普吉岛5日经典玩法</h3>
										<p>芭东海滩 － 普吉镇 － 查龙寺 － 卡伦海滩 － 皮皮岛（简称“pp岛”） － 蚊子岛/荣岛 －
											竹子岛/百岛 － 攀牙湾 － 芭东酒吧街</p>
									</div>
									<div class="info info-line">
										<div class="middle">
											<span class="day"><em>DAY</em><br>
											<strong>5</strong></span>
											<h3>普吉岛5日经典玩法</h3>
											<p class="p-day">D1 芭东海滩 － 普吉镇 － 查龙寺 － 卡伦海滩</p>
											<p class="p-day">D2 皮皮岛（简称“pp岛”） － 蚊子岛/荣岛 － 竹子岛/百岛</p>
											<p class="p-day">D3 攀牙湾 － 芭东酒吧街 － 泰拳</p>
											<p class="p-day">D4 珊瑚岛 － 皇帝岛 － 普吉西蒙人妖秀表演</p>
											<p class="p-day">D5 江西冷购物中心 － Let’s Relax － 幻多奇乐园</p>
										</div>
									</div>
								</a>
							</div>
							<!--第4块图片-->
							<div class="tiles-item tiles-c2">
								<a href="" target="_blank"> <img
									src="img/mudidi/taiguo4.jpeg" />
									<div class="title title-line">
										<span class="day"><em>DAY</em><br>
										<strong>2</strong></span>
										<h3>曼谷2日经典玩法</h3>
										<p>大皇宫 － 卧佛寺 － 郑王庙(黎明寺) － 考山路 － 湄南河 － 曼谷艺术文化中心 － 四面佛 －
											暹罗海洋世界 － 唐人街</p>
									</div>
									<div class="info info-line">
										<div class="middle">
											<span class="day"><em>DAY</em><br>
											<strong>2</strong></span>
											<h3>曼谷2日经典玩法</h3>
											<p class="p-day">D1 大皇宫 － 卧佛寺 － 郑王庙(黎明寺) － 考山路 － 湄南河</p>
											<p class="p-day">D2 曼谷艺术文化中心 － 四面佛 － 暹罗海洋世界 － 唐人街</p>
										</div>
									</div>
								</a>
							</div>
						</div>

						<!--第2块图片-->
						<div class="tiles-right">
							<div class="tiles-item tiles-r2b">
								<a href="" target="_blank"> <img
									src="img/mudidi/taiguo2.jpeg" />
									<div class="title title-line">
										<span class="day"><em>DAY</em><br>
										<strong>2</strong></span>
										<h3>华欣2日玩法</h3>
										<p>拷汪行宫 － 华欣火车站 － 华欣海滩 － 华欣夜市 － 圣托里尼乐园 － 小瑞士绵羊牧场 － 爱与希望之宫
										</p>
									</div>
									<div class="info info-line">
										<div class="middle">
											<span class="day"><em>DAY</em><br>
											<strong>2</strong></span>
											<h3>华欣2日玩法</h3>
											<p class="p-day">D1 拷汪行宫 － 华欣火车站 － 华欣海滩 － 华欣夜市</p>
											<p class="p-day">D2 圣托里尼乐园 － 小瑞士绵羊牧场 － 爱与希望之宫</p>
										</div>
									</div>
								</a>
							</div>

							<!--第5块图片-->
							<div class="tiles-item tiles-r2s">
								<a href="" target="_blank"> <img
									src="img/mudidi/taiguo5.jpeg" />
									<div class="title title-line">
										<span class="day"><em>DAY</em><br>
										<strong>1</strong></span>
										<h3>清迈泼水节1日玩法</h3>
										<p>塔佩门 － 清迈古城 － 帕辛寺(清迈)</p>
									</div>
									<div class="info info-line">
										<div class="middle">
											<span class="day"><em>DAY</em><br>
											<strong>1</strong></span>
											<h3>清迈泼水节1日玩法</h3>
											<p class="p-day">塔佩门 － 清迈古城 － 帕辛寺(清迈)</p>
										</div>
									</div>
								</a>
							</div>
						</div>
					</div>
					<!--1.泰国 end**-->

					<!--2.韩国 begin-->
					<div class="discovery-tiles" style="display: none;"
						data-routeindex="1">
						<div class="tiles-left">
							<!--第1块图片-->
							<div class="tiles-item tiles-b">
								<a href="" target="_blank"> <img
									src="img/mudidi/hanguo1.jpeg" />
									<div class="title title-line">
										<span class="day"><em>DAY</em><br>
										<strong>6</strong></span>
										<h3>首尔+釜山6日玩法</h3>
										<p>首尔 － 釜山</p>
									</div>
									<div class="info info-line">
										<div class="middle">
											<span class="day"><em>DAY</em><br>
											<strong>6</strong></span>
											<h3>首尔+釜山6日玩法</h3>
											<p>D1-D3 首尔</p>
											<p>D4-D6 釜山</p>
										</div>
									</div>
								</a>
							</div>

							<!--第3块图片-->
							<div class="tiles-item tiles-c2">
								<a href="" target="_blank"> <img
									src="img/mudidi/hanguo3.jpeg" />
									<div class="title title-line">
										<span class="day"><em>DAY</em><br>
										<strong>5</strong></span>
										<h3>济州岛5日环岛玩法</h3>
										<p>山君不离 － 济州生态主题公园 － 龙头岩 － 汉拿山 － 宝健路 － 正房瀑布 － 信不信由你博物馆 －
											济州泰迪熊博物馆 － 柱状节理带</p>
									</div>
									<div class="info info-line">
										<div class="middle">
											<span class="day"><em>DAY</em><br>
											<strong>5</strong></span>
											<h3>济州岛5日环岛玩法</h3>
											<p class="p-day">D1 山君不离 － 济州生态主题公园 － 龙头岩</p>
											<p class="">D2 汉拿山 － 宝健路</p>
											<p class="p-day">D3 正房瀑布 － 信不信由你博物馆 － 济州泰迪熊博物馆 － 柱状节理带</p>
											<p class="p-day">D4 城山日出峰 － 涉地可支 － 爱来魔相4D艺术馆(城邑馆)</p>
											<p class="">D5 牛岛 － 新罗免税店济州店</p>
										</div>
									</div>
								</a>
							</div>

							<!--第4块图片-->
							<div class="tiles-item tiles-c2">
								<a href="" target="_blank"> <img
									src="img/mudidi/hanguo4.jpeg" />
									<div class="title title-line">
										<span class="day"><em>DAY</em><br>
										<strong>5</strong></span>
										<h3>首尔5日玩法</h3>
										<p>明洞 － 首尔塔 － 北村韩屋村 － 三清洞 － 景福宫 － 仁寺洞 － 清溪川 －
											Trickeye特丽爱3D立体美术馆 － 弘益大学</p>
									</div>
									<div class="info info-line">
										<div class="middle">
											<span class="day"><em>DAY</em><br>
											<strong>5</strong></span>
											<h3>首尔5日玩法</h3>
											<p class="">D1 明洞 － 首尔塔</p>
											<p class="p-day">D2 北村韩屋村 － 三清洞 － 景福宫 － 仁寺洞 － 清溪川</p>
											<p class="p-day">D3 Trickeye特丽爱3D立体美术馆 － 弘益大学 － 梨花女子大学 －
												东大门</p>
											<p class="p-day">D4 骆山公园 － 广藏市场 － 乐天免税店(总店) － 乱打秀(明洞专用剧场)
											</p>
											<p class="">D5 返程</p>
										</div>
									</div>
								</a>
							</div>
						</div>

						<!--第2块图片-->
						<div class="tiles-right">
							<div class="tiles-item tiles-r2b">
								<a href="" target="_blank"> <img
									src="img/mudidi/hanguo2.png" />
									<div class="title title-line">
										<span class="day"><em>DAY</em><br>
										<strong>4</strong></span>
										<h3>首尔4日经典玩法</h3>
										<p>新罗免税店首尔店 － 首尔塔 － 北村韩屋村 － 三清洞 － 景福宫 － 仁寺洞 － 清溪川 －
											Trickeye特丽爱3D立体美术馆 － 弘益大学</p>
									</div>
									<div class="info info-line">
										<div class="middle">
											<span class="day"><em>DAY</em><br>
											<strong>4</strong></span>
											<h3>首尔4日经典玩法</h3>
											<p class="">D1 新罗免税店首尔店 － 首尔塔</p>
											<p class="p-day">D2 北村韩屋村 － 三清洞 － 景福宫 － 仁寺洞 － 清溪川</p>
											<p class="p-day">D3 Trickeye特丽爱3D立体美术馆 － 弘益大学 － 梨花女子大学 －
												东大门</p>
											<p class="">D4 明洞</p>
										</div>
									</div>
								</a>
							</div>

							<!--第5块图片-->
							<div class="tiles-item tiles-r2s">
								<a href="" target="_blank"> <img
									src="img/mudidi/hanguo5.jpeg" />
									<div class="title title-line">
										<span class="day"><em>DAY</em><br>
										<strong>2</strong></span>
										<h3>釜山城市2日玩法</h3>
										<p>海云台海水浴场 － 海云台迎月路 － 广安里海水浴场 － 釜山广安大桥 － 甘川洞文化艺术村 － 札嘎其市场
											－ 南浦洞 － BIFF广场 － 龙头山公园</p>
									</div>
									<div class="info info-line">
										<div class="middle">
											<span class="day"><em>DAY</em><br>
											<strong>2</strong></span>
											<h3>釜山城市2日玩法</h3>
											<p class="p-day">D1 海云台海水浴场 － 海云台迎月路 － 广安里海水浴场 － 釜山广安大桥</p>
											<p class="p-day">D2 甘川洞文化艺术村 － 札嘎其市场 － 南浦洞 － BIFF广场 －
												龙头山公园</p>
										</div>
									</div>
								</a>
							</div>
						</div>
					</div>
					<!--2.韩国 end**-->

					<!--3.日本-->
					<div class="discovery-tiles" style="display: none;"
						data-routeindex="2">
						<div class="tiles-left">
							<div class="tiles-item tiles-b">
								<a href="" target="_blank"> <img
									src="img/mudidi/riben1.jpeg" />
									<div class="title title-line">
										<span class="day"><em>DAY</em><br>
										<strong>2</strong></span>
										<h3>名古屋2日玩法</h3>
										<p>热田神宫 － 名古屋城 － 名古屋电视塔 － 绿洲21 － 名古屋港水族馆 － 大须观音寺 － 大须商店街 －
											荣购物街区</p>
									</div>
									<div class="info info-line">
										<div class="middle">
											<span class="day"><em>DAY</em><br>
											<strong>2</strong></span>
											<h3>名古屋2日玩法</h3>
											<p class="p-day">D1 热田神宫 － 名古屋城 － 名古屋电视塔 － 绿洲21</p>
											<p class="p-day">D2 名古屋港水族馆 － 大须观音寺 － 大须商店街 － 荣购物街区</p>
										</div>
									</div>
								</a>
							</div>

							<div class="tiles-item tiles-c2">
								<a href="" target="_blank"> <img
									src="img/mudidi/riben2.jpeg" />
									<div class="title title-line">
										<span class="day"><em>DAY</em><br>
										<strong>2</strong></span>
										<h3>登别2日玩法</h3>
										<p>登别地狱谷 － 登别熊牧场 － 登别温泉街 － 地球岬 － 登别尼克斯海洋公园 － 伊达时代村</p>
									</div>
									<div class="info info-line">
										<div class="middle">
											<span class="day"><em>DAY</em><br>
											<strong>2</strong></span>
											<h3>登别2日玩法</h3>
											<p class="p-day">D1 登别地狱谷 － 登别熊牧场 － 登别温泉街</p>
											<p class="p-day">D2 地球岬 － 登别尼克斯海洋公园 － 伊达时代村</p>
										</div>
									</div>
								</a>
							</div>

							<div class="tiles-item tiles-c2">
								<a href="" target="_blank"> <img
									src="img/mudidi/riben3.jpeg" />
									<div class="title title-line">
										<span class="day"><em>DAY</em><br>
										<strong>1</strong></span>
										<h3>镰仓1日玩法</h3>
										<p>江之岛 － 湘南海岸 － 镰仓高校前站 － 高德院 － 长谷寺 － 鹤冈八幡宫</p>
									</div>
									<div class="info info-line">
										<div class="middle">
											<span class="day"><em>DAY</em><br>
											<strong>1</strong></span>
											<h3>镰仓1日玩法</h3>
											<p class="p-day">江之岛 － 湘南海岸 － 镰仓高校前站 － 高德院 － 长谷寺 － 鹤冈八幡宫
											</p>
										</div>
									</div>
								</a>
							</div>
						</div>

						<div class="tiles-right">
							<div class="tiles-item tiles-r2b">
								<a href="" target="_blank"> <img
									src="img/mudidi/riben4.jpeg" />
									<div class="title title-line">
										<span class="day"><em>DAY</em><br>
										<strong>1</strong></span>
										<h3>小樽1日玩法</h3>
										<p>小樽运河 － 大正哨子馆 － 小樽八音盒堂(别馆)</p>
									</div>
									<div class="info info-line">
										<div class="middle">
											<span class="day"><em>DAY</em><br>
											<strong>1</strong></span>
											<h3>小樽1日玩法</h3>
											<p class="p-day">小樽运河 － 大正哨子馆 － 小樽八音盒堂(别馆)</p>
										</div>
									</div>
								</a>
							</div>

							<div class="tiles-item tiles-r2s">
								<a href="" target="_blank"> <img
									src="img/mudidi/riben5.jpeg" />
									<div class="title title-line">
										<span class="day"><em>DAY</em><br>
										<strong>1</strong></span>
										<h3>函馆1日玩法</h3>
										<p>函馆朝市 － 五棱郭公园 － 函馆山</p>
									</div>
									<div class="info info-line">
										<div class="middle">
											<span class="day"><em>DAY</em><br>
											<strong>1</strong></span>
											<h3>函馆1日玩法</h3>
											<p class="p-day">函馆朝市 － 五棱郭公园 － 函馆山</p>
										</div>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--******************************主题精选end ******************************-->


			<!--*分隔线*-->
			<div class="row-line"></div>

</c:forEach>









			<!--****************************全球目的地 begin*******************************-->
			<div class="row">
				<div class="wrapper">
					<div class="row-list" data-cs-p="全球目的地">
						<h2 class="hd">
							全球目的地<span>（按拼音首字母排序）</span>
						</h2>

						<div class="bd">
							<dl class="yazhou">
								<dt class="sub-title">亚洲</dt>
								<dd class="clearfix">
									<ul class="col">
										<li class="letter">A</li>
										<li><a href="" target="_blank">阿富汗 <span class="en">Afghanistan</span></a></li>
										<li><a href="" target="_blank">阿联酋 <span class="en">United
													Arab Emirates</span></a></li>
										<li><a href="" target="_blank">阿曼 <span class="en">Sultanate
													of Oman</span></a></li>
										<li><a href="" target="_blank">阿塞拜疆 <span class="en">Azerbaijan</span></a></li>
										<li class="letter">B</li>
										<li><a href="" target="_blank">巴基斯坦 <span class="en">Pakistan</span></a>
										</li>
										<li><a href="" target="_blank">巴勒斯坦 <span class="en">Palestine</span></a>
										</li>
										<li><a href="" target="_blank">巴林 <span class="en">Bahrain</span></a>
										</li>
										<li><a href="" target="_blank">不丹 <span class="en">Bhutan</span></a>
										</li>
										<li class="letter">C</li>
										<li><a href="" target="_blank">朝鲜 <span class="en">North
													Korea</span></a></li>
										<li class="letter">D</li>
										<li><a href="" target="_blank">东帝汶 <span class="en">East
													Timor</span></a></li>
										<li class="letter">F</li>
										<li><a href="" target="_blank">菲律宾 <span class="en">Philippines</span></a><i
											class="icon-label"></i></li>
										<li class="letter">G</li>
										<li><a href="" target="_blank">格鲁吉亚 <span class="en">Georgia</span></a></li>
										<li class="letter">H</li>
										<li><a href="" target="_blank">哈萨克斯坦 <span class="en">The
													Republic of Kazakhstan</span></a></li>
										<li><a href="" target="_blank">韩国 <span class="en">Korea</span></a><i
											class="icon-label"></i></li>
										<li class="letter">J</li>
										<li><a href="" target="_blank">吉尔吉斯斯坦 <span
												class="en">Kyrgyzstan</span></a></li>
										<li><a href="" target="_blank">柬埔寨 <span class="en">Cambodia</span></a><i
											class="icon-label"></i></li>
									</ul>
									<ul class="col">
										<li class="letter">K</li>
										<a href="" target="_blank">卡塔尔 <span class="en">The
												State of Qatar</span></a>
										</li>
										<li><a href="" target="_blank">科威特 <span class="en">The
													State of Kuwait</span></a></li>
										<li class="letter">L</li>
										<li><a href="" target="_blank">老挝 <span class="en">Laos</span></a><i
											class="icon-label"></i></li>
										<li><a href="" target="_blank">黎巴嫩 <span class="en">Lebanon</span></a></li>
										<li class="letter">M</li>
										<li><a href="" target="_blank">马尔代夫 <span class="en">Maldives</span></a><i
											class="icon-label"></i></li>
										<li><a href="" target="_blank">马来西亚 <span class="en">Malaysia</span></a><i
											class="icon-label"></i></li>
										<li><a href="" target="_blank">蒙古 <span class="en">Mongolia</span></a></li>
										<li><a href="" target="_blank">孟加拉国 <span class="en">Bangladesh</span></a></li>
										<li><a href="" target="_blank">缅甸 <span class="en">Myanmar</span></a><i
											class="icon-label"></i></li>
										<li class="letter">N</li>
										<li><a href="" target="_blank">尼泊尔 <span class="en">Nepal</span></a><i
											class="icon-label"></i></li>
										<li class="letter">R</li>
										<li><a href="" target="_blank">日本 <span class="en">Japan</span></a><i
											class="icon-label"></i></li>
										<li class="letter">S</li>
										<li><a href="" target="_blank">沙特阿拉伯 <span class="en">Saudi
													Arabia</span></a></li>
										<li><a href="" target="_blank">斯里兰卡 <span class="en">Sri
													Lanka</span></a></li>
										<li class="letter">T</li>
										<li><a href="" target="_blank">塔吉克斯坦 <span class="en">Tajikistan</span></a></li>
										<li><a href="" target="_blank">泰国 <span class="en">Thailand</span></a><i
											class="icon-label"></i></li>
									</ul>

									<ul class="col">
										<li><a href="" target="_blank">土库曼斯坦 <span class="en">Turkmenistan</span></a></li>
										<li class="letter">W</li>
										<li><a href="" target="_blank">文莱 <span class="en">Brunei
													Darussalam</span></a></li>
										<li><a href="" target="_blank">乌兹别克斯坦 <span
												class="en">The Republic of Uzbekistan</span></a></li>
										<li class="letter">X</li>
										<li><a href="" target="_blank">新加坡 <span class="en">Singapore</span></a><i
											class="icon-label"></i></li>
										<li><a href="" target="_blank">叙利亚 <span class="en">The
													Syrian Arab Republic</span></a></li>
										<li class="letter">Y</li>
										<li><a href="" target="_blank">亚美尼亚 <span class="en">The
													Republic of Armenia</span></a></li>
										<li><a href="" target="_blank">也门 <span class="en">The
													Republic of Yemen</span></a></li>
										<li><a href="" target="_blank">伊拉克 <span class="en">Iraq</span></a>
										</li>
										<li><a href="" target="_blank">伊朗 <span class="en">Iran</span></a>
										</li>
										<li><a href="" target="_blank">以色列 <span class="en">Israel</span></a>
										</li>
										<li><a href="" target="_blank">印度 <span class="en">India</span></a><i
											class="icon-label"></i></li>
										<li><a href="" target="_blank">印度尼西亚 <span class="en">Indonesia</span></a><i
											class="icon-label"></i></li>
										<li><a href="" target="_blank">约旦 <span class="en">Jordan</span></a>
										</li>
										<li><a href="" target="_blank">越南 <span class="en">Vietnam</span></a><i>class="icon-label"></i>
										</li>
										<li class="letter">Z</li>
										<li><a href="" target="_blank">中国 <span class="en">China</span></a>
										</li>
									</ul>
								</dd>
							</dl>

							<dl class="beimei">
								<dt class="sub-title">北美洲</dt>
								<dd class="clearfix">
									<ul class="col">
										<li class="letter">A</li>
										<li><a href="" target="_blank">安提瓜和巴布达 <span
												class="en">Antigua and Barbuda</span></a></li>
										<li class="letter">B</li>
										<li><a href="" target="_blank">巴巴多斯 <span class="en">Barbados</span></a>
										</li>
										<li><a href="" target="_blank">巴哈马 <span class="en">Bahamas</span></a></li>
										<li><a href="" target="_blank">巴拿马 <span class="en">Panama</span></a>
										</li>
										<li><a href="" target="_blank">伯利兹 <span class="en">Belize</span></a>
										</li>
										<li class="letter">D</li>
										<li><a href="" target="_blank">多米尼加 <span class="en">Dominican
													Republic</span></a></li>
										<li><a href="" target="_blank">多米尼克 <span class="en">Dominica</span></a>
										</li>
										<li class="letter">G</li>
										<li><a href="" target="_blank">哥斯达黎加 <span class="en">Costa
													Rica</span></a></li>
									</ul>

									<ul class="col">
										<li><a href="" target="_blank">格林纳达 <span class="en">Grenada</span></a></li>
										<li><a href="" target="_blank">古巴 <span class="en">Cuba</span></a><i
											class="icon-label"></i></li>
										<li class="letter">H</li>
										<li><a href="" target="_blank">海地 <span class="en">Haiti</span></a>
										</li>
										<li><a href="" target="_blank">洪都拉斯 <span class="en">Republic
													of Honduras</span></a></li>
										<li class="letter">J</li>
										<li><a href="" target="_blank">加拿大 <span class="en">Canada</span></a><i
											class="icon-label"></i></li>
										<li class="letter">M</li>
										<li><a href="" target="_blank">美国 <span class="en">United
													States of America</span></a></li>
										<li><a href="" target="_blank">墨西哥 <span class="en">The
													United Mexican States</span></a><i class="icon-label"></i></li>
										<li class="letter">N</li>
										<li><a href="" target="_blank">尼加拉瓜 <span class="en">Nicaragua</span></a>
										</li>
									</ul>
									<ul class="col">
										<li class="letter">S</li>
										<li><a href="" target="_blank">萨尔瓦多 <span class="en">El
													Salvador</span></a></li>
										<li><a href="" target="_blank">圣基茨和尼维斯 <span
												class="en">Saint Kitts and Nevis</span></a></li>
										<li><a href="" target="_blank">圣卢西亚 <span class="en">Saint
													Lucia</span></a></li>
										<li><a href="" target="_blank">圣文森特和格林纳丁斯 <span
												class="en">Saint Vincent and the Grenadines</span></a></li>
										<li class="letter">T</li>
										<li><a href="" target="_blank">特立尼达和多巴哥 <span
												class="en">Trinidad and Tobago</span></a></li>
										<li class="letter">W</li>
										<li><a href="" target="_blank">危地马拉 <span class="en">Guatemala</span></a>
										</li>
										<li class="letter">Y</li>
										<li><a href="" target="_blank">牙买加 <span class="en">Jamaica</span></a></li>
									</ul>
								</dd>
							</dl>

							<dl class="nanmei">
								<dt class="sub-title">南美洲</dt>
								<dd class="clearfix">
									<ul class="col">
										<li class="letter">A</li>
										<li><a href="" target="_blank">阿根廷 <span class="en">Argentina</span></a><i
											class="icon-label"></i></li>
										<li class="letter">B</li>
										<li><a href="" target="_blank">巴拉圭 <span class="en">Paraguay</span></a></li>
										<li><a href="" target="_blank">巴西 <span class="en">Brazil</span></a><i
											class="icon-label"></i></li>
										<li><a href="" target="_blank">秘鲁 <span class="en">The
													Republic of Peru</span></a></li>
									</ul>
									<ul class="col">
										<li><a href="" target="_blank">玻利维亚 <span class="en">Bolivia</span></a><i
											class="icon-label"></i></li>
										<li class="letter">E</li>
										<li><a href="" target="_blank">厄瓜多尔 <span class="en">Ecuador</span></a></li>
										<li class="letter">G</li>
										<li><a href="" target="_blank">哥伦比亚 <span class="en">Colombia</span></a><i
											class="icon-label"></i></li>
										<li><a href="" target="_blank">圭亚那 <span class="en">Guyana</span></a>
										</li>
									</ul>
									<ul class="col">
										<li class="letter">S</li>
										<li><a href="" target="_blank">苏里南 <span class="en">The
													Republic of Suriname</span></a></li>
										<li class="letter">W</li>
										<li><a href="" target="_blank">委内瑞拉 <span class="en">Bolivarian
													Republic of Venezuela</span></a></li>
										<li><a href="" target="_blank">乌拉圭 <span class="en">The
													Oriental Republic of Uruguay</span></a></li>
										<li class="letter">Z</li>
										<li><a href="" target="_blank">智利 <span class="en">Republic
													of Chile</span></a><i class="icon-label"></i></li>
									</ul>
								</dd>
							</dl>

							<dl class="ouzhou">
								<dt class="sub-title">欧洲</dt>
								<dd class="clearfix">
									<ul class="col">
										<li class="letter">A</li>
										<li><a href="" target="_blank">阿尔巴尼亚 <span class="en">The
													Republic of Albania</span></a></li>
										<li><a href="" target="_blank">爱尔兰 <span class="en">Ireland</span></a><i
											class="icon-label"></i></li>
										<li><a href="" target="_blank">爱沙尼亚 <span class="en">The
													Republic of Estonia</span></a></li>
										<li><a href="" target="_blank">安道尔 <span class="en">Andorra</span></a></li>
										<li><a href="" target="_blank">奥地利 <span class="en">Austria</span></a><i
											class="icon-label"></i></li>
										<li class="letter">B</li>
										<li><a href="" target="_blank">白俄罗斯 <span class="en">Belarus</span></a></li>
										<li><a href="" target="_blank">保加利亚 <span class="en">The
													Republic of Bulgaria</span></a></li>
										<li><a href="" target="_blank">比利时 <span class="en">Belgium</span></a><i
											class="icon-label"></i></li>
										<li><a href="" target="_blank">冰岛 <span class="en">Iceland</span></a><i
											class="icon-label"></i></li>
										<li><a href="" target="_blank">波黑 <span class="en">Bosnia
													and Herzegovina</span></a></li>
										<li><a href="" target="_blank">波兰 <span class="en">Poland</span></a><i
											class="icon-label"></i></li>
										<li class="letter">D</li>
										<li><a href="" target="_blank">丹麦 <span class="en">Denmark</span></a><i
											class="icon-label"></i></li>
										<li><a href="" target="_blank">德国 <span class="en">Germany</span></a><i
											class="icon-label"></i></li>
										<li class="letter">E</li>
										<li><a href="" target="_blank">俄罗斯 <span class="en">Russia</span></a><i
											class="icon-label"></i></li>
										<li class="letter">F</li>
										<li><a href="" target="_blank">法国 <span class="en">France</span></a><i
											class="icon-label"></i></li>
										<li><a href="" target="_blank">梵蒂冈 <span class="en">Vatican
													City State</span></a></li>
									</ul>

									<ul class="col">
										<li><a href="" target="_blank">芬兰 <span class="en">Finland</span></a><i
											class="icon-label"></i></li>
										<li class="letter">H</li>
										<li><a href="" target="_blank">荷兰 <span class="en">Holland</span></a><i
											class="icon-label"></i></li>
										<li><a href="" target="_blank">黑山 <span class="en">Montenegro</span></a>
										</li>
										<li class="letter">J</li>
										<li><a href="" target="_blank">捷克 <span class="en">Czech</span></a><i
											class="icon-label"></i></li>
										<li class="letter">K</li>
										<li><a href="" target="_blank">科索沃 <span class="en">The
													Republic of Kosovo</span></a></li>
										<li><a href="" target="_blank">克罗地亚 <span class="en">Croatia</span></a></li>
										<li class="letter">L</li>
										<li><a href="" target="_blank">拉脱维亚 <span class="en">Latvia</span></a></li>
										<li><a href="" target="_blank">立陶宛 <span class="en">Lithuania</span></a>
										</li>
										<li><a href="" target="_blank">列支敦士登 <span class="en">Liechtenstein</span></a></li>
										<li><a href="" target="_blank">卢森堡 <span class="en">The
													Grand Duchy of Luxembourg</span></a></li>
										<li><a href="" target="_blank">罗马尼亚 <span class="en">Romania</span></a></li>
										<li class="letter">M</li>
										<li><a href="" target="_blank">马耳他 <span class="en">Malta</span></a>
										</li>
										<li><a href="" target="_blank">马其顿 <span class="en">Macedonia</span></a>
										</li>
										<li><a href="" target="_blank">摩尔多瓦 <span class="en">The
													Republicof Moldova</span></a></li>
										<li><a href="" target="_blank">摩纳哥 <span class="en">The
													Principality of Monaco</span></a></li>
										<li class="letter">N</li>
										<li><a href="" target="_blank">挪威 <span class="en">Norway</span></a><i
											class="icon-label"></i></li>
									</ul>
									<ul class="col">
										<li><a href="" target="_blank">葡萄牙 <span class="en">Portugal</span></a><i
											class="icon-label"></i></li>
										<li class="letter">R</li>
										<li><a href="" target="_blank">瑞典 <span class="en">The
													Kingdom of Sweden</span></a><i class="icon-label"></i></li>
										<li><a href="" target="_blank">瑞士 <span class="en">Switzerland</span></a><i
											class="icon-label"></i></li>
										<li class="letter">S</li>
										<li><a href="" target="_blank">塞尔维亚 <span class="en">The
													Republic of Serbia</span></a></li>
										<li><a href="" target="_blank">塞浦路斯 <span class="en">Cyprus</span></a></li>
										<li><a href="" target="_blank">圣马力诺 <span class="en">The
													Republic of San Marino</span></a></li>
										<li><a href="" target="_blank">斯洛伐克 <span class="en">Slovakia</span></a>
										</li>
										<li><a href="" target="_blank">斯洛文尼亚 <span class="en">The
													Republic of Slovenia</span></a></li>
										<li class="letter">T</li>
										<li><a href="" target="_blank">土耳其 <span class="en">Turkey</span></a><i
											class="icon-label"></i></li>
										<li class="letter">W</li>
										<li><a href="" target="_blank">乌克兰 <span class="en">Ukraine</span></a></li>
										<li class="letter">X</li>
										<li><a href="" target="_blank">西班牙 <span class="en">Spain</span></a><i
											class="icon-label"></i></li>
										<li><a href="" target="_blank">希腊 <span class="en">Greece</span></a><i
											class="icon-label"></i></li>
										<li><a href="" target="_blank">匈牙利 <span class="en">Hungary</span></a><i
											class="icon-label"></i></li>
										<li class="letter">Y</li>
										<li><a href="" target="_blank">意大利 <span class="en">Italy</span></a><i
											class="icon-label"></i></li>
										<li><a href="" target="_blank">英国 <span class="en">United
													Kingdom</span></a><i class="icon-label"></i></li>
									</ul>
								</dd>
							</dl>
							<dl class="feizhou">
								<dt class="sub-title">非洲</dt>
								<dd class="clearfix">
									<ul class="col">
										<li class="letter">A</li>
										<li><a href="" target="_blank">阿尔及利亚 <span class="en">People's
													Democratic Republic of Algeria</span></a></li>
										<li><a href="" target="_blank">埃及 <span class="en">Egypt</span></a>
										</li>
										<li><a href="" target="_blank">埃塞俄比亚 <span class="en">Ethiopia</span></a>
										</li>
										<li><a href="" target="_blank">安哥拉 <span class="en">The
													Republic of Angola</span></a></li>
										<li class="letter">B</li>
										<li><a href="" target="_blank">贝宁 <span class="en">Benin</span></a>
										</li>
										<li><a href="" target="_blank">博茨瓦纳 <span class="en">Botswana</span></a>
										</li>
										<li><a href="" target="_blank">布基纳法索 <span class="en">Burkina
													Faso</span></a></li>
										<li><a href="" target="_blank">布隆迪 <span class="en">Burundi</span></a></li>
										<li class="letter">C</li>
										<li><a href="" target="_blank">赤道几内亚 <span class="en">Equatorial
													Guinea</span></a></li>
										<li class="letter">D</li>
										<li><a href="" target="_blank">多哥 <span class="en">Togo</span></a>
										</li>
										<li class="letter">E</li>
										<li><a href="" target="_blank">厄立特里亚 <span class="en">The
													State of Eritrea</span></a></li>
										<li class="letter">F</li>
										<li><a href="" target="_blank">佛得角 <span class="en">Cape
													Verde</span></a></li>
										<li class="letter">G</li>
										<li><a href="" target="_blank">冈比亚 <span class="en">Gambia</span></a>
										</li>
										<li><a href="" target="_blank">刚果 <span class="en">The
													Republic of Congo</span></a></li>
										<li><a href="" target="_blank">刚果民主共和国 <span
												class="en">Democratic Republic of the Congo</span></a></li>
										<li class="letter">J</li>
										<li><a href="" target="_blank">吉布提 <span class="en">Djibouti</span></a></li>
										<li><a href="" target="_blank">几内亚 <span class="en">The
													Republic of Guinea</span></a></li>
										<li><a href="" target="_blank">几内亚比绍 <span class="en">Guinea-Bissau</span></a></li>
										<li><a href="" target="_blank">加纳 <span class="en">Ghana</span></a>
										</li>
									</ul>
									<ul class="col">
										<li><a href="" target="_blank">加蓬 <span class="en">Gabon</span></a>
										</li>
										<li><a href="" target="_blank">津巴布韦 <span class="en">Zimbabwe</span></a>
										</li>
										<li class="letter">K</li>
										<li><a href="" target="_blank">喀麦隆 <span class="en">Cameroon</span></a></li>
										<li><a href="" target="_blank">科摩罗 <span class="en">Comoros</span></a></li>
										<li><a href="" target="_blank">科特迪瓦 <span class="en">Ivory
													Coast</span></a></li>
										<li><a href="" target="_blank">肯尼亚 <span class="en">Kenya</span></a><i
											class="icon-label"></i></li>
										<li class="letter">L</li>
										<li><a href="" target="_blank">莱索托 <span class="en">Lesotho</span></a></li>
										<li><a href="" target="_blank">利比里亚 <span class="en">Liberia</span></a></li>
										<li><a href="" target="_blank">利比亚 <span class="en">State
													of Libya</span></a></li>
										<li><a href="" target="_blank">留尼旺 <span class="en">Réunion</span></a></li>
										<li><a href="" target="_blank">卢旺达 <span class="en">Rwanda</span></a>
										</li>
										<li class="letter">M</li>
										<li><a href="" target="_blank">马达加斯加 <span class="en">Madagascar</span></a><i
											class="icon-label"></i></li>
										<li><a href="" target="_blank">马拉维 <span class="en">The
													Republic of Malawi</span></a></li>
										<li><a href="" target="_blank">马里 <span class="en">The
													Republic of Mali</span></a></li>
										<li><a href="" target="_blank">毛里求斯 <span class="en">Mauritius</span></a><i
											class="icon-label"></i></li>
										<li><a href="" target="_blank">毛里塔尼亚 <span class="en">The
													Islamic Republic of Mauritania</span></a></li>
										<li><a href="" target="_blank">摩洛哥 <span class="en">Morocco</span></a></li>
										<li><a href="" target="_blank">莫桑比克 <span class="en">Mozambique</span></a></li>
										<li class="letter">N</li>
										<li><a href="" target="_blank">纳米比亚 <span class="en">Namibia</span></a></li>
									</ul>

									<ul class="col">
										<li><a href="" target="_blank">南非 <span class="en">South
													Africa</span></a></li>
										<li><a href="" target="_blank">南苏丹 <span class="en">Republic
													of South Sudan</span></a></li>
										<li><a href="" target="_blank">尼日尔 <span class="en">Niger</span></a></li>
										<li><a href="" target="_blank">尼日利亚 <span class="en">Federal
													Republic of Nigeria</span></a></li>
										<li class="letter">S</li>
										<li><a href="" target="_blank">塞拉利昂 <span class="en">Sierra
													leone</span></a></li>
										<li><a href="" target="_blank">塞内加尔 <span class="en">Senegal</span></a></li>
										<li><a href="" target="_blank">塞舌尔 <span class="en">Seychelles</span></a><i
											class="icon-label"></i></li>
										<li><a href="" target="_blank">圣多美和普林西比 <span
												class="en">Sao Tome and Principe</span></a></li>
										<li><a href="" target="_blank">斯威士兰 <span class="en">Swaziland</span></a></li>
										<li><a href="" target="_blank">苏丹 <span class="en">Sudan</span></a></li>
										<li><a href="" target="_blank">索马里 <span class="en">Somalia</span></a></li>
										<li class="letter">T</li>
										<li><a href="" target="_blank">坦桑尼亚 <span class="en">The
													United Republic of Tanzania</span></a></li>
										<li><a href="" target="_blank">突尼斯 <span class="en">Tunisia</span></a></li>
										<li class="letter">W</li>
										<li><a href="" target="_blank">乌干达 <span class="en">Uganda</span></a></li>
										<li class="letter">X</li>
										<li><a href="" target="_blank">西撒哈拉 <span class="en">Western
													Sahara</span></a></li>
										<li class="letter">Z</li>
										<li><a href="" target="_blank">赞比亚 <span class="en">Zambia</span></a></li>
										<li><a href="" target="_blank">乍得 <span class="en">Chad</span></a></li>
										<li><a href="" target="_blank">中非 <span class="en">The
													Central African Republic</span></a></li>
									</ul>
								</dd>
							</dl>

							<dl class="dayangzhou">
								<dt class="sub-title">大洋洲</dt>
								<dd class="clearfix">
									<ul class="col">
										<li class="letter">A</li>
										<li><a href="" target="_blank">澳大利亚 <span class="en">Australia</span></a><i
											class="icon-label"></i></li>
										<li class="letter">B</li>
										<li><a href="" target="_blank">巴布亚新几内亚 <span
												class="en">Papua New Guinea</span></a></li>
										<li class="letter">D</li>
										<li><a href="" target="_blank">大溪地 <span class="en">Tahiti</span></a><i
											class="icon-label"></i></li>
										<li class="letter">F</li>
										<li><a href="" target="_blank">斐济 <span class="en">Fiji</span></a><i
											class="icon-label"></i></li>
										<li class="letter">G</li>
										<li><a href="" target="_blank">关岛 <span class="en">Guam</span></a>
										</li>
										<li class="letter">J</li>
										<li><a href="" target="_blank">基里巴斯 <span class="en">Kiribati</span></a>
										</li>
									</ul>
									<ul class="col">
										<li class="letter">K</li>
										<li><a href="" target="_blank">库克群岛 <span class="en">Cook
													Islands</span></a></li>
										<li class="letter">M</li>
										<li><a href="" target="_blank">马绍尔群岛 <span class="en">Marshall
													Islands</span></a></li>
										<li><a href="" target="_blank">密克罗尼西亚联邦 <span
												class="en">Micronesia</span></a></li>
										<!--li class="letter">N</li>
                                <li><a href="/travel-scenic-spot/mafengwo/57166.html" target="_blank">瑙鲁 <span class="en">Nauru</span></a>
                                </li>
                                <li><a href="/travel-scenic-spot/mafengwo/57168.html" target="_blank">纽埃 <span class="en">Niue</span></a>
                                </li-->
										<li class="letter">P</li>
										<li><a href="" target="_blank">帕劳 <span class="en">Palau</span></a><i
											class="icon-label"></i></li>
									</ul>
									<ul class="col">
										<li class="letter">S</li>
										<li><a href="" target="_blank">萨摩亚 <span class="en">Samoa</span></a>
										</li>
										<li><a href="" target="_blank">所罗门群岛 <span class="en">Solomon
													Islands</span></a></li>
										<li class="letter">T</li>
										<li><a href="" target="_blank">汤加 <span class="en">The
													Kingdom of Tonga</span></a></li>
										<li><a href="" target="_blank">图瓦卢 <span class="en">Tuvalu</span></a>
										</li>
										<li class="letter">W</li>
										<li><a href="" target="_blank">瓦努阿图 <span class="en">Republic
													of Vanuatu</span></a></li>
										<li class="letter">X</li>
										<li><a href="" target="_blank">新西兰 <span class="en">New
													Zealand</span></a><i class="icon-label"></i></li>
									</ul>
								</dd>
							</dl>
						</div>
					</div>

					<!--****************************全球目的地 end *******************************-->


					<!--****************************国内目的地 begin*******************************-->
					<div class="row-list" data-cs-p="国内目的地" id="domestic">
						<h2 class="hd" id="chinamdd">国内目的地</h2>

						<div class="bd bd-china">
							<dl class="item">
								<dt class="sub-title">都市</dt>
								<dd>
									<ul>
										<li><a class="link-hot" target="_blank" href="">香港</a></li>
										<li><a target="_blank" href="">澳门</a></li>
										<li><a class="link-hot" target="_blank" href="">北京</a></li>
										<li><a class="link-hot" target="_blank" href="">上海</a></li>
										<li><a target="_blank" href="">天津</a></li>
										<li><a target="_blank" href="">重庆</a></li>
									</ul>
								</dd>
							</dl>

							<dl class="item">
								<dt class="sub-title">
									<a target="_blank" href="">台湾</a>
								</dt>
								<dd>
									<ul>
										<li><a class="link-hot" target="_blank" href="">台北</a></li>
										<li><a target="_blank" href="">花莲</a></li>
										<li><a class="link-hot" target="_blank" href="">垦丁</a></li>
										<li><a target="_blank" href="">高雄</a></li>
										<li><a target="_blank" href="">台中</a></li>
										<li><a target="_blank" href="">南投</a></li>
										<li><a target="_blank" href="">台南</a></li>
									</ul>
								</dd>
							</dl>

							<dl class="item">
								<dt class="sub-title">
									<a target="_blank" href="">四川</a>
								</dt>
								<dd>
									<ul>
										<li><a class="link-hot" target="_blank" href="">成都</a></li>
										<li><a class="link-hot" target="_blank" href="">九寨沟</a></li>
										<li><a target="_blank" href="">稻城</a></li>
										<li><a target="_blank" href="">西昌</a></li>
										<li><a target="_blank" href="">西岭雪山</a></li>
										<li><a target="_blank" href="">康定</a></li>
										<li><a target="_blank" href="">若尔盖</a></li>
										<li><a target="_blank" href="">色达</a></li>
										<li><a target="_blank" href="">峨眉山</a></li>
										<li><a target="_blank" href="">海螺沟</a></li>
										<li><a target="_blank" href="">牛背山</a></li>
										<li><a target="_blank" href="">新都桥</a></li>
										<li><a target="_blank" href="">四姑娘山</a></li>
									</ul>
								</dd>
							</dl>

							<dl class="item">
								<dt class="sub-title">
									<a target="_blank" href="">西藏</a>
								</dt>
								<dd>
									<ul>
										<li><a class="link-hot" target="">拉萨</a></li>
										<li><a target="_blank" href="">林芝</a></li>
										<li><a target="_blank" href="">阿里</a></li>
										<li><a target="_blank" href="">墨脱</a></li>
										<li><a target="_blank" href="">山南</a></li>
										<li><a class="link-hot" target="_blank" href="">纳木错</a></li>
										<li><a target="_blank" href="">日喀则</a></li>
										<li><a target="_blank" href="">珠穆朗玛峰</a></li>
									</ul>
								</dd>
							</dl>

							<dl class="item">
								<dt class="sub-title">
									<a target="_blank" href="">云南</a>
								</dt>
								<dd>
									<ul>
										<li><a class="link-hot" target="_blank" href="">大理</a></li>
										<li><a class="link-hot" target="_blank" href="">丽江</a></li>
										<li><a target="_blank" href="">昆明</a></li>
										<li><a target="_blank" href="">西双版纳</a></li>
										<li><a class="link-hot" target="_blank" href="">香格里拉</a></li>
										<li><a target="_blank" href="">束河</a></li>
										<li><a target="_blank" href="">瑞丽</a></li>
										<li><a target="_blank" href="">东川</a></li>
										<li><a target="_blank" href="">泸沽湖</a></li>
										<li><a target="_blank" href="">腾冲</a></li>
										<li><a target="_blank" href="">罗平</a></li>
										<li><a target="_blank" href="">元阳</a></li>
										<li><a target="_blank" href="">双廊</a></li>
										<li><a target="_blank" href="">保山</a></li>
										<li><a target="_blank" href="">曲靖</a></li>
									</ul>
								</dd>
							</dl>

							<dl class="item">
								<dt class="sub-title">
									<a target="_blank" href="">浙江</a>
								</dt>
								<dd>
									<ul>
										<li><a class="link-hot" target="_blank" href="">杭州</a></li>
										<li><a class="link-hot" target="_blank" href="">西塘</a></li>
										<li><a target="_blank" href="">绍兴</a></li>
										<li><a target="_blank" href="">宁波</a></li>
										<li><a target="_blank" href="">横店</a></li>
										<li><a class="link-hot" target="_blank" href="">乌镇</a></li>
										<li><a target="_blank" href="">舟山</a></li>
										<li><a target="_blank" href="">南浔</a></li>
										<li><a target="_blank" href="">千岛湖</a></li>
										<li><a target="_blank" href="">普陀山</a></li>
										<li><a target="_blank" href="">东极岛</a></li>
										<li><a target="_blank" href="">南麂岛</a></li>
										<li><a target="_blank" href="">楠溪江</a></li>
										<li><a target="_blank" href="">丽水</a></li>
									</ul>
								</dd>
							</dl>

							<dl class="item">
								<dt class="sub-title">
									<a target="_blank" href="">江苏</a>
								</dt>
								<dd>
									<ul>
										<li><a target="_blank" href="">无锡</a></li>
										<li><a class="link-hot" target="_blank" href="">南京</a></li>
										<li><a class="link-hot" target="_blank" href="">苏州</a></li>
										<li><a target="_blank" href="">扬州</a></li>
										<li><a target="_blank" href="">周庄</a></li>
										<li><a target="_blank" href="">镇江</a></li>
										<li><a target="_blank" href="">常州</a></li>
										<li><a target="_blank" href="">同里</a></li>
										<li><a target="_blank" href="">兴化</a></li>
										<li><a target="_blank" href="">连云港</a></li>
									</ul>
								</dd>
							</dl>

							<dl class="item">
								<dt class="sub-title">
									<a target="_blank" href="">福建</a> <a target="_blank" href="">海南</a>
								</dt>
								<dd>
									<ul>
										<li><a class="link-hot" target="_blank" href="">厦门</a></li>
										<li><a target="_blank" href="">永定</a></li>
										<li><a target="_blank" href="">霞浦</a></li>
										<li><a target="_blank" href="">福州</a></li>
										<li><a class="link-hot" target="_blank" href="">鼓浪屿</a></li>
										<li><a target="_blank" href="">武夷山</a></li>
										<li><a class="link-hot" target="_blank" href="">三亚</a></li>
										<li><a target="_blank" href="">海口</a></li>
									</ul>
								</dd>
							</dl>

							<dl class="item">
								<dt class="sub-title">
									<a target="_blank" href="">山东</a>
								</dt>
								<dd>
									<ul>
										<li><a class="link-hot" target="_blank" href="">青岛</a></li>
										<li><a target="_blank" href="">济南</a></li>
										<li><a target="_blank" href="">烟台</a></li>
										<li><a class="link-hot" target="_blank" href="">泰山</a></li>
										<li><a target="_blank" href="">曲阜</a></li>
										<li><a target="_blank" href="">威海</a></li>
										<li><a target="_blank" href="">长岛</a></li>
										<li><a target="_blank" href="">蓬莱</a></li>
										<li><a target="_blank" href="">日照</a></li>
									</ul>
								</dd>
							</dl>

							<dl class="item">
								<dt class="sub-title">
									<a target="_blank" href="">内蒙古</a>
								</dt>
								<dd>
									<ul>
										<li><a target="_blank" href="">额尔古纳</a></li>
										<li><a target="_blank" href="">阿尔山</a></li>
										<li><a target="_blank" href="">库布齐沙漠</a></li>
										<li><a target="_blank" href="">克什克腾旗</a></li>
										<li><a target="_blank" href="">包头</a></li>
										<li><a target="_blank" href="">锡林郭勒</a></li>
										<li><a class="link-hot" target="_blank" href="">呼伦贝尔</a></li>
										<li><a class="link-hot" target="_blank" href="">额济纳旗</a></li>
										<li><a target="_blank" href="">巴丹吉林</a></li>
									</ul>
								</dd>
							</dl>

							<dl class="item">
								<dt class="sub-title">
									<a target="_blank" href="">广西</a>
								</dt>
								<dd>
									<ul>
										<li><a class="link-hot" target="_blank" href="">桂林</a></li>
										<li><a target="_blank" href="">北海</a></li>
										<li><a target="_blank" href="">阳朔</a></li>
										<li><a class="link-hot" target="_blank" href="">涠洲岛</a></li>
										<li><a target="_blank" href="">南宁</a></li>
										<li><a target="_blank" href="">龙脊梯田</a></li>
										<li><a target="_blank" href="">巴马</a></li>
										<li><a target="_blank" href="">防城港</a></li>
										<li><a target="_blank" href="">黄姚古镇</a></li>
									</ul>
								</dd>
							</dl>

							<dl class="item">
								<dt class="sub-title">
									<a target="_blank" href="">广东</a>
								</dt>
								<dd>
									<ul>
										<li><a class="link-hot" target="_blank" href="">广州</a></li>
										<li><a class="link-hot" target="_blank" href="">深圳</a></li>
										<li><a target="_blank" href="">珠海</a></li>
										<li><a target="_blank" href="">韶关</a></li>
										<li><a target="_blank" href="">佛山</a></li>
										<li><a target="_blank" href="">惠州</a></li>
										<li><a target="_blank" href="">汕头</a></li>
										<li><a target="_blank" href="">湛江</a></li>
										<li><a class="link-hot" target="_blank" href="">开平</a></li>
										<li><a target="_blank" href="">江门</a></li>
										<li><a target="_blank" href="">肇庆</a></li>
										<li><a target="_blank" href="">汕尾</a></li>
										<li><a target="_blank" href="">巽寮湾</a></li>
									</ul>
								</dd>
							</dl>

							<dl class="item">
								<dt class="sub-title">
									<a target="_blank" href="">安徽</a> <a target="_blank" href="">江西</a>
								</dt>
								<dd>
									<ul>
										<li><a target="_blank" href="">合肥</a></li>
										<li><a class="link-hot" target="_blank" href="">黄山</a></li>
										<li><a class="link-hot" target="_blank" href="">宏村</a></li>
										<li><a target="_blank" href="">宣城</a></li>
										<li><a target="_blank" href="">九华山</a></li>
										<li><a class="link-hot" target="_blank" href="">婺源</a></li>
										<li><a target="_blank" href="">南昌</a></li>
										<li><a target="_blank" href="">景德镇</a></li>
										<li><a target="_blank" href="">庐山</a></li>
										<li><a target="_blank" href="">三清山</a></li>
										<li><a target="_blank" href="">井冈山</a></li>
									</ul>
								</dd>
							</dl>
							<dl class="item">
								<dt class="sub-title">
									<a target="_blank" href="">青海</a>
								</dt>
								<dd>
									<ul>
										<li><a class="link-hot" target="_blank" href="">西宁</a></li>
										<li><a target="_blank" href="">同仁</a></li>
										<li><a class="link-hot" target="_blank" href="">青海湖</a></li>
										<li><a target="_blank" href="">玉树</a></li>
										<li><a target="_blank" href="">玉珠峰</a></li>
										<li><a target="_blank" href="">年保玉则</a></li>
										<li><a target="_blank" href="">玛多</a></li>
										<li><a target="_blank" href="">可可西里</a></li>
										<li><a target="_blank" href="">坎布拉</a></li>
										<li><a target="_blank" href="">贵德</a></li>
									</ul>
								</dd>
							</dl>
							<dl class="item">
								<dt class="sub-title">
									<a target="_blank" href="">陕</a> <a target="_blank" href="">甘</a>
									<a target="_blank" href="">宁</a>
								</dt>
								<dd>
									<ul>
										<li><a class="link-hot" target="_blank" href="">西安</a></li>
										<li><a target="_blank" href="">华山</a></li>
										<li><a target="_blank" href="">太白山</a></li>
										<li><a target="_blank" href="">汉中</a></li>
										<li><a target="_blank" href="">咸阳</a></li>
										<li><a class="link-hot" target="_blank" href="">敦煌</a></li>
										<li><a class="link-hot" target="_blank" href="">张掖</a></li>
										<li><a target="_blank" href="">甘南</a></li>
										<li><a target="_blank" href="">银川</a></li>
										<li><a target="_blank" href="">沙坡头</a></li>
									</ul>
								</dd>
							</dl>
							<dl class="item">
								<dt class="sub-title">
									<a target="_blank" href="">河北</a>
								</dt>
								<dd>
									<ul>
										<li><a class="link-hot" target="_blank" href="">北戴河</a></li>
										<li><a class="link-hot" target="_blank" href="">承德</a></li>
										<li><a target="_blank" href="">塞罕坝</a></li>
										<li><a class="link-hot" target="_blank" href="">木兰围场</a></li>
										<li><a target="_blank" href="">乐亭</a></li>
										<li><a target="_blank" href="">海陀山</a></li>
										<li><a target="_blank" href="">丰宁坝上</a></li>
										<li><a target="_blank" href="">蔚县</a></li>
										<li><a target="_blank" href="">小五台</a></li>
									</ul>
								</dd>
							</dl>
							<dl class="item">
								<dt class="sub-title">
									<a target="_blank" href="">河南</a>
								</dt>
								<dd>
									<ul>
										<li><a class="link-hot" target="_blank" href="">洛阳</a></li>
										<li><a target="_blank" href="">郑州</a></li>
										<li><a target="_blank" href="">安阳</a></li>
										<li><a target="_blank" href="">开封</a></li>
										<li><a target="_blank" href="">云台山</a></li>
										<li><a class="link-hot" target="_blank" href="">少林寺</a></li>
									</ul>
								</dd>
							</dl>
							<dl class="item">
								<dt class="sub-title">
									<a target="_blank" href="">湖北</a> <a target="_blank" href="">湖南</a>
								</dt>
								<dd>
									<ul>
										<li><a class="link-hot" target="_blank" href="">武汉</a></li>
										<li><a target="_blank" href="">武当山</a></li>
										<li><a target="_blank" href="">神农架</a></li>
										<li><a target="_blank" href="">三峡</a></li>
										<li><a target="_blank" href="">恩施</a></li>
										<li><a target="_blank" href="">宜昌</a></li>
										<li><a target="_blank" href="">长沙</a></li>
										<li><a class="link-hot" target="_blank" href="">张家界</a></li>
										<li><a class="link-hot" target="_blank" href="">凤凰</a></li>
										<li><a target="_blank" href="">湘西</a></li>
										<li><a target="_blank" href="">靖州</a></li>
									</ul>
								</dd>
							</dl>
							<dl class="item">
								<dt class="sub-title">
									<a target="_blank" href="">贵州</a>
								</dt>
								<dd>
									<ul>
										<li><a target="_blank" href="">贵阳</a></li>
										<li><a class="link-hot" target="_blank" href="">黔东南</a></li>
										<li><a target="_blank" href="">兴义</a></li>
										<li><a target="_blank" href="">荔波</a></li>
										<li><a target="_blank" href="">赤水</a></li>
										<li><a target="_blank" href="">遵义</a></li>
										<li><a class="link-hot" target="_blank" href="">黄果树</a></li>
										<li><a target="_blank" href="">梵净山</a></li>
										<li><a target="_blank" href="">青岩古镇</a></li>
									</ul>
								</dd>
							</dl>
							<dl class="item">
								<dt class="sub-title">
									<a target="_blank" href="">新疆</a>
								</dt>
								<dd>
									<ul>
										<li><a target="_blank" href="">乌鲁木齐</a></li>
										<li><a target="_blank" href="">伊犁</a></li>
										<li><a target="_blank" href="">吐鲁番</a></li>
										<li><a target="_blank" href="">喀什</a></li>
										<li><a class="link-hot" target="_blank" href="">喀纳斯</a></li>
									</ul>
								</dd>
							</dl>
							<dl class="item">
								<dt class="sub-title">
									<a target="_blank" href="">黑</a> <a target="_blank" href="">吉</a>
									<a target="_blank" href="">辽</a>
								</dt>
								<dd>
									<ul>
										<li><a class="link-hot" target="_blank" href="">哈尔滨</a></li>
										<li><a target="_blank" href="">伊春</a></li>
										<li><a target="_blank" href="">大兴安岭</a></li>
										<li><a target="_blank" href="">扎龙</a></li>
										<li><a target="_blank" href="">漠河</a></li>
										<li><a class="link-hot" target="_blank" href="">雪乡</a></li>
										<li><a class="link-hot" target="_blank" href="">长白山</a></li>
										<li><a target="_blank" href="/">长春</a></li>
										<li><a target="_blank" href="">吉林市</a></li>
										<li><a class="link-hot" target="_blank" href="">大连</a></li>
										<li><a target="_blank" href="">沈阳</a></li>
										<li><a target="_blank" href="">丹东</a></li>
										<li><a target="_blank" href="">盘锦</a></li>
										<li><a target="_blank" href="">兴城</a></li>
										<li><a target="_blank" href="">绥中</a></li>
									</ul>
								</dd>
							</dl>
							<dl class="item">
								<dt class="sub-title">
									<a target="_blank" href="">山西</a>
								</dt>
								<dd>
									<ul>
										<li><a class="link-hot" target="_blank" href="">平遥</a></li>
										<li><a target="_blank" href="">太原</a></li>
										<li><a target="_blank" href="">大同</a></li>
										<li><a class="link-hot" target="_blank" href="">五台山</a></li>
										<li><a target="_blank" href="">云冈石窟</a></li>
										<li><a target="_blank" href="">壶口瀑布</a></li>
										<li><a target="_blank" href="">碛口</a></li>
										<li><a target="_blank" href="">绵山</a></li>
										<li><a target="_blank" href="">介休</a></li>
									</ul>
								</dd>
							</dl>
						</div>
					</div>
					<!--****************************国内目的地 end *******************************-->

				</div>

			</div>
		</div>
		<script language="javascript"
			src="http://js.mafengwo.net/js/mdd/mdd_index.js?1472715630"
			type="text/javascript"></script>



	<div class="footer" style="clear: both;
	height: 480px;">
		<iframe src="IndexFooter" frameborder="0" scrolling="no" marginheight="0"
			marginwidth="0" style="margin: 0px auto;width: 100%;
	height: 480px;"></iframe> </div>
</html>
