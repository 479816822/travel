<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>爱旅游U首页</title>
<link href="css/index.css" rel="stylesheet">

	<script language="javascript" src="js/jquery-3.1.0.min.js"
			type="text/javascript"></script>
	<script language="javascript" src="js/jquery-validation-1.15.1.js"></script>
<script type="text/javascript">
	$(function() {
		var Scroll = function($ul) {
			this.$ul = $ul;
			this.started = false;
		};
		Scroll.prototype = {
			start : function() {
				if (this.started) {
					return false;
				}
				this.started = true;
				var $tails = this.$ul.find('li').filter(':lt(5)').clone();
				this.$ul.append($tails);
				this.scroll();
			},
			scroll : function() {
				var ulHeight = this.$ul.height();
				var that = this;
				this.$ul.css('top', 0);
				this.$ul.animate({
					top : -ulHeight
				}, 70000, 'linear', function() {
					that.scroll();
				})
			}
		};
		var scroll = new Scroll($('[data-zcscroll]').eq(0));
		scroll.start();
		function rollNum($obj) {
			var num = $obj.data("people"); //滚动的对象
			var length = String(num).length; //数字转换成字符串的长度
			for (var i = 0; i < length; i++) {
				var charOne = String(num).charAt(i);
				var top = 0 - parseInt(charOne, 10) * 40;
				$obj.find('b').eq(i).find('span').animate({
					top : top
				}, 1000, 'swing')
			}
		}

		rollNum($(".nums .joins").eq(0));
		function barProgress($obj) {
			$obj.animate({
				width : $obj.data('barWidth')
			}, 1000, 'swing');
		}

		barProgress($('[data-bar-width]').eq(0));
		var switchLock = false;
		$('[data-zct]').on(
				'click',
				function() {
					var self = $(this), i = self.data('zct');
					var $out = $('[data-zcp]:visible'), $in = $('[data-zcp="'
							+ i + '"]');
					if (self.hasClass('cur') || switchLock) {
						return false;
					}
					switchLock = true;
					self.addClass('cur').siblings('[data-zct]').removeClass(
							'cur');
					$out.fadeTo(500, 0.5, function() {
						$(".nums .joins").find('b span').css('top', 0);
						$("[data-bar-width]").css('width', 0);
						$in.css('opacity', 0.5).show().fadeTo(
								500,
								1,
								function() {

									barProgress($('[data-bar-width]').eq(i));
									rollNum($(".nums .joins").eq(i));
									var scroll = new Scroll(
											$('[data-zcscroll]').eq(i));
									scroll.start();
									switchLock = false;
								});
						$out.hide();
					});
				});
	});
</script>


<script type="text/javascript">
	var i = 0;
	var timer;
	var ads_L = [ "taiwan", "putaoya", "yabi", "xinjiapo", "hangzhou" ];
	var pageSize = parseInt($("#pageSize").text());
	var loAdd = "";
	var url;

	$(function() {
		adCirculation();

		//游记筛选
		$(".shaixuan").click(function() {
			$("#liebiao").show();
		});

		$(".shaixuan").hover(function() {
			$(this).children().css("background-position", "0 -140px");
			$(this).css("background", "orange").css("color", "white");
		}, function() {
			$(this).children().css("background-position", "0 -130px");
			$(this).css("background", "white").css("color", "#666");
		});

		$("#guanbi").click(function() {
			$("#liebiao").hide();
		});

		//鼠标悬停广告暂停切换
		$("#wrapper").hover(function() {
			clearTimeout(timer);
		}, function() {
			timer = setTimeout("adCirculation()", 4000);
		});
		$("#little-wrapper ul").hover(function() {
			clearTimeout(timer);
		}, function() {
			timer = setTimeout("adCirculation()", 4000);
		});


	
		
		//2.ajax进行顶的数据同步更新
		$(".praise_1").click(function() {
			url="updatePraise";
			var travel= { mdRecid : $(this).children().html(),
				mdStdname : $(this).children().next().next().html()
			}
			ajax1($(this).children().next().next(), travel,url);
		});
		//搜索框
		$(".search-option li").click(
				function() {
					//$(this).addClass("tab-selected").siblings().removeClass("tab-selected");
					$(this).css("background-position", "-60px -140px")
							.siblings().css("background-position",
									"-60px -110px");
					var index = $(this).index + 1;
					$(".search-group").children().eq(index).siblings().hide();
				});

		//热门、最新游记切换
		$(".showhot").click(function() {

			$(".shownewest").css("color", "#666");
			$(this).css("color", "orange");

			$(".shownewest").parent().css("border-bottom", "none");
			$(this).parent().css("border-bottom", "3px solid #ff9d00");

			$(".tn-list").children().remove();

			BindData("hot");
		});

		$(".shownewest").click(function() {
			$(".showhot").css("color", "#666");
			$(this).css("color", "orange");

			$(".showhot").parent().css("border-bottom", "none");
			$(this).parent().css("border-bottom", "3px solid #ff9d00");

			$(".tn-list").children().remove();

			BindData("newest");
		});

		//分页
		//首页
		$(".pg-first").click(function() {
			var pageNum = parseInt($(".pg-current").html());//获得当前页的页码
			//设置当前页为第一页
			$(".pg-current").html(1);
			pageFunction(pageNum);
			});
		
		
		
			
		
		//分页
		//下一页
		$(".pg_next").click(function() {
			var pageCount = parseInt($("#lblCurent").val());//总页数
			var pageNum = parseInt($(".pg-current").html());//获得当前页的页码
			if (pageNum < pageCount) {
				pageNum++;
			}
			$(".pg-current").html(pageNum);
			pageFunction(pageNum);
		});

		//上一页
		$(".pg_prev").click(function() {
			var pageCount = parseInt($("#lblCurent").text());
			var pageNum = parseInt($(".pg-current").html());//获得当前页的页码
			if (pageNum != 1) {
				pageNum = pageNum - 1;
			}
			$(".pg-current").html(pageNum)
			pageFunction(pageNum);
		});

		//指定的页pg-current
		$(".page").click(function() {

			$(".page").removeClass("pg-current");
			$(this).addClass("pg-current");

			var pageNum;//当前页
			var i = parseInt($(this).html());
			pageNum = i;
			$("#lblCurent").val(pageNum);
			fun0("get_page", pageNum);
		});
		
		//尾页
		$(".pg_last").click(function() {
			var pageCount = parseInt($("#lblCurent").val());
			$(".pg-current").html(pageCount);
			pageFunction(pageCount);
		});

		
		//page处理,条用ajax查询数据
		function pageFunction(pageCurrent) {
			var pageCount = parseInt($("#lblCurent").val());//总页数
			var numbers= parseInt($("#pageCount").val());//总条数
			var pageSize= parseInt($("#pageSize").val());//每页大小
			var cache=$("#cache").val()//缓存名
			var page={
					pageCount:pageCount,
					pageSize:pageSize,
					dataCount:numbers,
					pageCurrent:pageCurrent,
					cache:cache
			} 
			
			var urls="pageData";
		//查询分页数据
			getPageData(page,urls);
		}


		//游记显示---分页获取数据
		function BindData(urls) {
			$
					.ajax({
						type : "POST",
						url : urls,
						async : false,
						data : {
							pageNum : $("#lblCurent").val(),
							pageSize : $("#pageSize").val(),
							loAdd : loAdd
						},
						dataType : "json",
						success : function(data) {
							$(".tn-list").children().remove();
							$
									.each(
											data,
											function(pageNum, n) {
												var msg;
												for (i = 0; i < n.listTravlePagragraph.length; i++) {
													if (n.listTravlePagragraph[i].mdContent != null) {
														msg = n.listTravlePagragraph[i].mdContent;
														break;
													}
												}

												$(".tn-list")
														.append(
																"<div class='tn-item clearfix'>"
																		+ "<div class='tn-image'>"
																		+ "<a href='showTravel?traId="
																		+ n.mdRecid
																		+ "&userId="
																		+ n.user.mdUserRecid
																		+ "' target='_blank'><img class=''  src='"+n.mdThemeImg+"' style='display: inline;'></a>"
																		+ "</div>"
																		+ "<div class='tn-wrapper'>"
																		+ "<dl>"
																		+ "<dt><a href='showTravel?traId="
																		+ n.mdRecid
																		+ "&userId="
																		+ n.user.mdUserRecid
																		+ "' target='_blank'>"
																		+ n.mdTheme
																		+ "</a> </dt>"
																		+ "<dd style='height:80px;;overflow:hidden;text-overflow:ellipsis; '><a  href='showTravel?traId="
																		+ n.mdRecid
																		+ "&userId="
																		+ n.user.mdUserRecid
																		+ "' target='_blank'>"
																		+ msg
																		+ "...</a></dd>"
																		+ "</dl>"
																		+ "<div class='tn-extra'>"
																		+ "<span class='tn-ding praise_1'> "
																		+ "<span style='display: none;'>"
																		+ n.mdRecid
																		+ "</span> <a class='btn-ding praise' rel='nofollow'></a> <em>"
																		+ n.mdStdname
																		+ "</em>"
																		+ "</span> "
																		+ "  <span class='tn-place'><i></i><a  href='showTravel?traId="
																		+ n.mdRecid
																		+ "&userId="
																		+ n.user.mdUserRecid
																		+ "' class='_j_gs_item' rel='nofollow'>"
																		+ n.viewName
																		+ "</a>，by "
																		+ n.user.mdUserName
																		+ "</span>"
																		+ "<span class='tn-user'> "
																		+ "	<a  href='showTravel?traId="
																		+ n.mdRecid
																		+ "&userId="
																		+ n.user.mdUserRecid
																		+ "' target='_blank' rel='nofollow'> <img src='"
																		+ n.user.userHeadImg
																		+"'>"
																		+ "</a>"
																		+ "</span> <span class='tn-nums'><i></i>15620/262</span>"
																		+ "</div>"
																		+ "</div></div>");
											});
						}
					})
		}

		//分页处理
		function getPageData(page,urls) {
			$.ajax({
				type : "POST",
				url : urls,
				data : page,
				async : false,
				dataType : "json",
				success : function(data) {
							$(".tn-list").children().remove();
							//**********************
							var obj=data.travlLists;
							
							for(i=0;i< obj.length;i++){
												var msg;
												for (j = 0; j < obj[i].listTravlePagragraph.length; j++) {
													if (obj[i].listTravlePagragraph[j].mdContent != null) {
														msg = obj[i].listTravlePagragraph[j].mdContent;
														break;
													}
												}
												var str =	"<div class='tn-item clearfix'>"
													+ "<div class='tn-image'>"
													+ "<a href='showTravel?traId="
													+ obj[i].mdRecid
													+ "&userId="
													+ obj[i].user.mdUserRecid
													+ "' target='_blank'><img class=''  src='"+obj[i].mdThemeImg+"' style='display: inline;'></a>"
													+ "</div>"
													+ "<div class='tn-wrapper'>"
													+ "<dl>"
													+ "<dt><a href='showTravel?traId="
													+ obj[i].mdRecid
													+ "&userId="
													+ obj[i].user.mdUserRecid
													+ "' target='_blank'>"
													+ obj[i].mdTheme
													+ "</a> </dt>"
													+ "<dd style='height:80px;;overflow:hidden;text-overflow:ellipsis; '><a  href='showTravel?traId="
													+ obj[i].mdRecid
													+ "&userId="
													+ obj[i].user.mdUserRecid
													+ "' target='_blank'>"
													+ msg
													+ "...</a></dd>"
													+ "</dl>"
													+ "<div class='tn-extra'>"
													+ "<span class='tn-ding praise_1'> "
													+ "<span style='display: none;'>"
													+ obj[i].mdRecid
													+ "</span> <a class='btn-ding praise' rel='nofollow'></a> <em>"
													+ obj[i].mdStdname
													+ "</em>"
													+ "</span> "
													+ "  <span class='tn-place'><i></i><a  href='showTravel?traId="
													+ obj[i].mdRecid
													+ "&userId="
													+ obj[i].user.mdUserRecid
													+ "' class='_j_gs_item' rel='nofollow'>"
													+ obj[i].mdTheme
													+ "</a>，by "
													+ obj[i].user.mdUserName
													+ "</span>"
													+ "<span class='tn-user'> "
													+ "	<a  href='showTravel?traId="
													+ obj[i].mdRecid
													+ "&userId="
													+ obj[i].user.mdUserRecid
													+ "' target='_blank' rel='nofollow'> <img src='"
													+ obj[i].user.userHeadImg
													+"'>"
													+ "</a>"
													+ "</span> <span class='tn-nums'><i></i>15620/262</span>"
													+ "</div>"
													+ "</div></div>";
												var $node = $(str);
												$(".tn-list").append($node);
						       	}
							//*************************88
							 }, 
					    error : function(msg) {
													//提示输需要入的信息
									alert("eeror")
							}
					});
		}

	});

	function funs(p) {
		var travel = {
			"mdRecid" : $(p).children().html(),
			"mdStdName" : $(p).children().next().next().html()
		}
		ajax1($(p).children().next().next(), travel);

	}
	
	

	//ajax公用的方法
	function ajax1(p, travel,add) {
		var num=p.html();
		if(num==null)
			num="0";
		var n=parseInt(num);
		$.ajax({
			type : "POST",
			url : add,
			data : travel,
			dataType : "json",
			success : function(msg) {
				if(url=="updatePraise"&&msg>0){
					n=n+1;
				p.html(n);
				}
			},
			error : function(msg) {
				//提示输需要入的信息
			}
		});
	}
	
	
	//图片自动切换
	function adCirculation() {
	
		if (i == 5)
			i = 0;
		$("#wrapper").css("background-image",
				"url(syste_img/img/index-img/" + ads_L[i] + "-L.jpg)");
		$(".des").children().eq(i).css("display", "block").siblings().css(
				"display", "none");
		$(".des2").children().eq(i).css("display", "block").siblings().css(
				"display", "none");
		$(".littleImg li").eq(i).css("border", "2px solid orange").siblings()
				.css("border", "none");

		//小广告循环
		$("#little-wrapper ul").children().eq(i).css("display", "inline-block")
				.siblings().css("display", "none");
		$("#little-wrapper ol").children().eq(i).css("background-color",
				"yellow").siblings().css("background-color", "#eee");

		timer = setTimeout("adCirculation()", 4000);
		i++;
	}
</script>

</head>
<body>



	<div class="header">
		<iframe src="VisitHead" frameborder="0" scrolling="no" marginheight="0"
			marginwidth="0" style="margin: 0px auto;"></iframe>
	</div>
	<div id="focus">
		<div id="wrapper">
			<ul class="des">
				<li><a href="" target="_blank" class="show-title dark">
						<div class="date">
							<span class="day">12</span>/Sep.2016
						</div>
						<h3>1 | 一封来自南洋的味蕾情书</h3>
				</a></li>
				<li><a href="" target="_blank" class="show-title dark">
						<div class="date">
							<span class="day">12</span>/Sep.2016
						</div>
						<h3>2| 一封来自南洋的味蕾情书</h3>
				</a></li>
				<li><a href="" target="_blank" class="show-title dark">
						<div class="date">
							<span class="day">12</span>/Sep.2016
						</div>
						<h3>3 | 一封来自南洋的味蕾情书</h3>
				</a></li>
				<li><a href="" target="_blank" class="show-title dark">
						<div class="date">
							<span class="day">12</span>/Sep.2016
						</div>
						<h3>4| 一封来自南洋的味蕾情书</h3>
				</a></li>
				<li><a href="" target="_blank" class="show-title dark">
						<div class="date">
							<span class="day">12</span>/Sep.2016
						</div>
						<h3>5 | 一封来自南洋的味蕾情书</h3>
				</a></li>
			</ul>
			<ul class="des2">
				<li>
					<p class="show-info">
						图片来自于<font color="#FF9900"> <a href="" target="_blank">1</a></font>
						，此目的地共收藏了 <font color="#FF9900"><a href="" target="_blank"
							rel="nofollow">859009</a></font> 张<a href="" target="_blank">新加坡</a>
						图片。本片由 <font color="#FF9900"><a href="" target="_blank">一本大民</a></font>
						荣誉出品！
					</p>
				</li>
				<li>
					<p class="show-info">
						图片来自于<font color="#FF9900"> <a href="" target="_blank">2</a></font>
						，此目的地共收藏了 <font color="#FF9900"><a href="" target="_blank"
							rel="nofollow">859009</a></font> 张<a href="" target="_blank">新加坡</a>
						图片。本片由 <font color="#FF9900"><a href="" target="_blank">一本大民</a></font>
						荣誉出品！
					</p>
				</li>
				<li>
					<p class="show-info">
						图片来自于<font color="#FF9900"> <a href="" target="_blank">3</a></font>
						，此目的地共收藏了 <font color="#FF9900"><a href="" target="_blank"
							rel="nofollow">859009</a></font> 张<a href="" target="_blank">新加坡</a>
						图片。本片由 <font color="#FF9900"><a href="" target="_blank">一本大民</a></font>
						荣誉出品！
					</p>
				</li>
				<li>
					<p class="show-info">
						图片来自于<font color="#FF9900"> <a href="" target="_blank">4</a></font>
						，此目的地共收藏了 <font color="#FF9900"><a href="" target="_blank"
							rel="nofollow">859009</a></font> 张<a href="" target="_blank">新加坡</a>
						图片。本片由 <font color="#FF9900"><a href="" target="_blank">一本大民</a></font>
						荣誉出品！
					</p>
				</li>
				<li>
					<p class="show-info">
						图片来自于<font color="#FF9900"> <a href="" target="_blank">5</a></font>
						，此目的地共收藏了 <font color="#FF9900"><a href="" target="_blank"
							rel="nofollow">859009</a></font> 张<a href="" target="_blank">新加坡</a>
						图片。本片由 <font color="#FF9900"><a href="" target="_blank">一本大民</a></font>
						荣誉出品！
					</p>
				</li>
			</ul>
			<div id="small">
				<ul class="littleImg">
					<li><img src="syste_img/img/index-img/taiwan-S.jpg" height="70px" width="120px"></li>
					<li><img src="syste_img/img/index-img/putaoya-S.jpg"  height="70px" width="120px"></li>
					<li><img src="syste_img/img/index-img/yabi-S.jpg"  height="70px" width="120px"></li>
					<li><img src="syste_img/img/index-img/xinjiapo-S.jpg"  height="70px" width="120px"></li>
					<li><img src="syste_img/img/index-img/hangzhou-S.jpg"  height="70px" width="120px"></li>
				</ul>
				<a class="show-more" target="_blank" href="beautifulPage">历历在目</a>
			</div>
		</div>

		<div class="search-container" id="_j_index_search">
			<div class="search-group">
				<div class="searchtab" id="_j_index_search_tab">
					<ul class="clearfix search-option">
						<li class="tab-selected" data-index="0"><i></i>全部</li>
						<li data-index="1"><i></i>酒店</li>
						<li data-index="2"><i></i>目的地</li>
						<li data-index="3"><i></i>自由行商城</li>
					</ul>
				</div>
				<!-- 全部  -->
				<div class="searchbar" id="_j_index_search_bar_all">
					<div class="search-wrapper">
						<div class="search-input">
							<input name="q" type="text" placeholder="搜目的地/攻略/酒店/旅行特价"
								id="_j_index_search_input_all" autocomplete="off">
						</div>
					</div>
					<div class="search-button" id="_j_index_search_btn_all">
						<a role="button" href="javascript:"><i class="icon-search"></i></a>
					</div>
				</div>
				<!-- 酒店  -->
				<div class="searchbar searchbar-hotel hide"
					id="_j_index_search_bar_hotel">
					<div class="search-wrapper">
						<form action="/hotel/s.php" method="get">
							<div class="search-input">
								<input name="sKeyWord" type="text" placeholder="请输入国家、地区、城市名称"
									id="_j_index_search_input_hotel" autocomplete="off">
							</div>
						</form>
						<div class="search-date" id="_j_check_in">
							<input type="text" readonly="readonly" id="dp1474338031677"
								class="hasDatepicker"> <span></span> <i class="icon-cal"></i>
						</div>
						<div class="search-date" id="_j_check_out">
							<input type="text" readonly="readonly" id="dp1474338031678"
								class="hasDatepicker"> <span></span> <i class="icon-cal"></i>
						</div>
					</div>
					<div class="search-button" id="_j_index_search_btn_hotel">
						<a role="button" href="javascript:"><i class="icon-search"></i></a>
					</div>
				</div>
				<!-- 目的地  -->
				<div class="searchbar hide" id="_j_index_search_bar_mdd">
					<form action="/group/s.php" method="get">
						<div class="search-wrapper">
							<div class="search-input">
								<input name="q" type="text" placeholder="我要去..."
									id="_j_index_search_input_mdd" autocomplete="off">
							</div>
						</div>
						<div class="search-button" id="_j_index_search_btn_mdd">
							<a role="button" href="javascript:"><i class="icon-search"></i></a>
						</div>
					</form>
				</div>
				<!-- 出行服务  -->
				<div class="searchbar hide" id="_j_index_search_bar_sales">
					<div class="search-wrapper">
						<div class="search-input">
							<input type="text" placeholder="产品名称/目的地/优惠"
								id="_j_index_search_input_sales" autocomplete="off">
						</div>
					</div>
					<div class="search-button" id="_j_index_search_btn_sales">
						<a role="button" href="javascript:"><i class="icon-search"></i></a>
					</div>
				</div>
				<!-- 目的地suggest  -->
				<div class="search-suggest-panel search-suggest-place hide"
					id="_j_index_suggest_list_mdd">
					<ul class="suggest-list"></ul>
				</div>
				<!-- 酒店suggest  -->
				<div class="search-suggest-panel search-suggest-hotel hide"
					id="_j_index_suggest_list_hotel"></div>
			</div>
		</div>

	</div>

	<div id="content">
		<div id="c-l">
			<div id="c-l-1">
				<img src="syste_img/img/index-img/cl1.jpg">
			</div>
			<div id="c-l-2">
				<div class="title">
					<h2>
						<span>旅行家专栏</span>
					</h2>
					<p>专栏首页</p>
				</div>
				<div id="little-wrapper">
					<ul>
						<li><img src="syste_img/img/index-img/little-ad1.jpg">
							<p>
								<span>鱼、鱼、鱼</span>我似乎只能面对那盆鱼发出哀怨的祈求：拜托了！
							</p></li>
						<li><img src="syste_img/img/index-img/little-ad2.jpg">
							<p>
								<span>首尔市立美术馆才是韩国灵魂</span>首尔多丘陵，首尔市立美术馆的西小门本馆便藏在德寿宫旁的一个小丘上。
							</p></li>
						<li><img src="syste_img/img/index-img/little-ad3.jpg">
							<p>
								<span>姬百合之塔：岛歌声中的"军国少女"</span>姬百合之塔，为何这般隆重？
							</p></li>
						<li><img src="syste_img/img/index-img/little-ad4.jpg">
							<p>
								<span>一封伊斯坦布尔的来信</span>博斯普鲁斯已经不在了，只剩下了土耳其。
							</p></li>
						<li><img src="syste_img/img/index-img/little-ad5.jpg">
							<p>
								<span>她们在黄金时代到来</span>她们的存在，也帮我有定力，审视自己成长间内化的，那些陈腐的关于女人的一生应该如何度过的观念。
							</p></li>
					</ul>
					<ol>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
						<li></li>
					</ol>
				</div>
			</div>
			<div id="c-l-3">
				<div class="title">
					<h2>旅行攻略推荐</h2>
					<p>更多</p>
				</div>
				<div id="c-l-31">
					<img src="syste_img/img/index-img/cl3.jpg">
				</div>
				<div id="c-l-32">
					<h2>
						<b>明十三陵</b>
					</h2>
					<br> <br>
					<p>
						详细的吃、住、行、景<br>点、路线、实用信息
					</p>
					<br>
				</div>
				<div id="c-l-33">
					<span>deefds11</span>&nbsp;&nbsp;点评了&nbsp;&nbsp;三亚的&nbsp;&nbsp; <span>光头海鲜店</span><br>
					<span>fdsd43</span>&nbsp;&nbsp;点评了&nbsp;&nbsp;三亚的&nbsp;&nbsp; <span>重庆海鲜</span><br>
					<span>ffer6</span>&nbsp;&nbsp;点评了&nbsp;&nbsp;亚庇的&nbsp;&nbsp;<span>亚庇海鲜店</span><br>
					<span>wwhtt90</span>&nbsp;&nbsp;点评了&nbsp;&nbsp;北京的&nbsp;&nbsp; <span>艺术区</span><br>
				</div>
			</div>
			<div id="c-l-4">
				<img src="syste_img/img/index-img/cl4.jpg">
			</div>
			<div id="c-l-5">
				<div class="title">
					<h2>我的活动</h2>
					<p>
						<span>正在进行</span>
					</p>
				</div>
				<a> <img src="syste_img/img/index-img/activity1.png"> <strong>发现华盛顿之美</strong><br>定制华盛顿之旅，赢往返机票！
				</a> <a> <img src="syste_img/img/index-img/activity2.png"> <strong>寻艺江苏，让旅行别有心意</strong><br>我是小小莎，跟我来学门新手艺
				</a> <a> <img src="syste_img/img/index-img/activity3.png"> <strong>自驾招募
						带你探索世界鲜见之美</strong><br>体验一段难以复制的秘境探索旅程
				</a> <a> <img src="syste_img/img/index-img/activity4.png"> <strong>欢迎旅行，欢迎回家</strong><br>无论哪里，同一份中式礼遇。
				</a> <a> <img src="syste_img/img/index-img/activity5.png"> <strong>欢迎旅行，欢迎回家</strong><br>看大片阅美文，开启你的两栖之旅
				</a>
			</div>
			<div id="c-l-6">
				<img src="syste_img/img/index-img/cl5.jpg">
			</div>
			<div id="c-l-7">
				<div class="title">
					<h2>加入蚂蜂窝</h2>
					<p>
						<span><a href="" target="_blank">更多职位&gt;</a></span>
					</p>
				</div>
				<div>
					<a href="" target="_blank"> <img src="syste_img/img/index-img/cl7.jpg"></a>
					<ul id="found">
						<li><a href="" target="_blank"><span>申请职位&gt;</span>广告销售经理<i>HOT</i></a></li>
						<li><a href="" target="_blank"><span>申请职位&gt;</span>资深PHP开发工程师<i>HOT</i></a></li>
						<li><a href="" target="_blank"><span>申请职位&gt;</span>在线客服经理<i>HOT</i></a></li>
					</ul>
				</div>
			</div>
			<div id="c-l-8">
				<div id="title">
					<div class="hd-title">
						<h2>蚂蜂窝旅行网站最新进展</h2>
						<!--<h2><a href="javascript:">旅行网站</a></h2>最新进展-->
					</div>
				</div>
				<ul class="newest">
					<li>08月24日<a href="" target="_blank" rel="nofollow">蚂蜂窝C9计划·秋酷大趴开始报名</a></li>
					<li>08月15日<a href="" target="_blank" rel="nofollow">2016蚂蜂窝指路人全球招募</a></li>
					<li>08月06日<a href="" target="_blank" rel="nofollow">奥运金牌争夺战活动开始</a></li>
					<li>06月11日<a href="" target="_blank" rel="nofollow">2016竞猜欧洲杯活动开始</a></li>
					<li>05月18日<a href="" target="_blank" rel="nofollow">蚂蜂窝打卡全新升级</a></li>
					<li>04月27日<a href="" target="_blank" rel="nofollow">招财猫回归</a></li>
				</ul>
			</div>
		</div>
		<div id="c-r">
			<div id="c-r-1">
				<div style="position: relative">
					<a target="_blank" href="" rel="nofollow"> <img border="0"
						src="syste_img/img/index-img/cr1.jpg" />
					</a> <img src="syste_img/img/index-img/guanggao.png"
						style="position: absolute; bottom: 4px; left: 4px; width: 22px; height: 12px;" />
				</div>
			</div>
			<div class="oneBuy clearfix">
				<div class="hd">
					<a href="" target="_blank">一元自由行</a>
					<div class="rBtn">
						<a href="" target="_blank" class="cur"><strong>沙巴<i></i></strong>46%</a>
					</div>
				</div>
				<div data-zcp="0">
					<div class="pro_pic">
						<a href="" target="_blank"> <img src="syste_img/img/index-img/cr2.png"
							width="280" height="180" alt="">
							<div class="nums">
								<span class="joins" data-people="2386"> <b><span
										style="top: 0;"><i>0</i><i>1</i><i>2</i><i>3</i><i>4</i><i>5</i><i>6</i><i>7</i><i>8</i><i>9</i></span></b><b><span
										style="top: 0;"><i>0</i><i>1</i><i>2</i><i>3</i><i>4</i><i>5</i><i>6</i><i>7</i><i>8</i><i>9</i></span></b><b><span
										style="top: 0;"><i>0</i><i>1</i><i>2</i><i>3</i><i>4</i><i>5</i><i>6</i><i>7</i><i>8</i><i>9</i></span></b><b><span
										style="top: 0;"><i>0</i><i>1</i><i>2</i><i>3</i><i>4</i><i>5</i><i>6</i><i>7</i><i>8</i><i>9</i></span></b>
								</span>
								<div class="text">人已参加</div>
							</div>
							<div class="feeds">
								<ul style="position: relative; top: 0;" data-zcscroll="1">
									<li><span>大王和王子</span>7秒前 购买了一元自由行</li>
									<li><span>阿千</span>33秒前 获得了一个幸运号</li>
									<li><span>阿千</span>45秒前 获得了一个幸运号</li>
									<li><span>豆丁找豆皮</span>48秒前 购买了一元自由行</li>
									<li><span>长路</span>1分钟前 购买了一元自由行</li>
									<li><span>Nica</span>1分钟前 获得了一个幸运号</li>
									<li><span>Nica</span>1分钟前 获得了一个幸运号</li>
									<li><span>寒心</span>2分钟前 购买了一元自由行</li>
									<li><span>9个太阳</span>3分钟前 获得了一个幸运号</li>
									<li><span>9个太阳</span>3分钟前 获得了一个幸运号</li>
									<li><span>CharliE❀...</span>6分钟前 购买了一元自由行</li>
									<li><span>贝</span>6分钟前 获得了一个幸运号</li>
									<li><span>贝</span>7分钟前 获得了一个幸运号</li>
									<li><span>贝</span>7分钟前 购买了一元自由行</li>
									<li><span>jenny</span>8分钟前 购买了一元自由行</li>
									<li><span>若兰美女</span>8分钟前 获得了一个幸运号</li>
									<li><span>若兰美女</span>8分钟前 获得了一个幸运号</li>
									<li><span>若兰美女</span>9分钟前 购买了一元自由行</li>
									<li><span>Liv</span>9分钟前 购买了一元自由行</li>
									<li><span>puffy</span>10分钟前 购买了一元自由行</li>
									<li><span>gary1428</span>12分钟前 获得了一个幸运号</li>
									<li><span>救世主</span>14分钟前 购买了一元自由行</li>
									<li><span>北极小泡</span>16分钟前 获得了一个幸运号</li>
									<li><span>愛🤗的👀</span>17分钟前 购买了一元自由行</li>
									<li><span>琳二二一...</span>18分钟前 获得了一个幸运号</li>
									<li><span>灰原亚弥</span>20分钟前 获得了一个幸运号</li>
									<li><span>华縡18108...</span>21分钟前 购买了一元自由行</li>
									<li><span>琳</span>21分钟前 购买了一元自由行</li>
									<li><span>卿久久</span>22分钟前 购买了一元自由行</li>
									<li><span>蚂蜂窝用...</span>23分钟前 购买了一元自由行</li>
								</ul>
							</div>
						</a>

					</div>
					<div class="pro_detail">
						<h2>
							<a style="color: #666; text-decoration: none;" target="_blank"
								href=""><span class="tag">今日</span>全国往返沙巴5天/6天双人自由行</a>
						</h2>
						<p class="subtit">（首次参与赠50元代金券）</p>
						<a class="con_btn" target="_blank" href="">
							<div class="money clearfix">
								<div class="txt">
									<i></i>目标：<em>¥</em><span class="price">7999</span>
								</div>
								<div class="btn">1元试试</div>
							</div>
						</a>
						<div class="f-infos clearfix">
							<div class="fore1">
								已支持<strong>￥3696</strong>
							</div>
							<div class="fore3">
								完成进度<strong>46%</strong>
							</div>
						</div>
						<div class="f-bar">
							<div class="f-bar-red" data-bar-width="162.38"></div>
						</div>
					</div>
				</div>
			</div>

			<!--     游记展示           -->
			<div class="mfw-container">
				<div class="navbar clearfix">
					<ul class="tn-nav">
						<li class="active _j_gs_tab"><a class="showhot showtravel">热门游记</a>
							<div class="tn-menu  shaixuan">
								<i class="tn-menu-icon"></i>筛选
							</div></li>
						<li class="_j_gs_tab"><a class="shownewest showtravel"
							id="zuixin">最新发表</a></li>
					</ul>
					<div class="tn-write">
						<a class="btn-add" href="to_Writetravel" target="_blank"><i></i>写游记</a>
					</div>
					<a class="tn-tips" href="" target="_blank"><i></i>我要上首页</a>
				</div>
				<!-- 筛选列表 -->
				<div class="tn-dropdown-pop" id="liebiao" style="display: none;">
					<span class="underline"></span> <a class="close" id="guanbi">×</a>
					<div class="section clearfix">
						<div class="label">目的地</div>
						<div class="section-cont">
							<div class="mui-search">
								<input class="mui-search-inp _j_gs_input" type="text"
									placeholder="输入你想查看的目的地">
								<div
									class="m-search-suggest tn-search-suggest hide _j_sr_container"></div>
							</div>
							<div class="hot-place">
								<a class="_j_gs_item _j_gs_sn_10183_2"
									href="javascript:void(0);" data-objid="10183" data-type="2"
									data-name="日本">日本</a> <a class="_j_gs_item _j_gs_sn_11058_2"
									href="javascript:void(0);" data-objid="11058" data-type="2"
									data-name="斯里兰卡">斯里兰卡</a> <a
									class="_j_gs_item _j_gs_sn_11030_2" href="javascript:void(0);"
									data-objid="11030" data-type="2" data-name="济州岛">济州岛</a> <a
									class="_j_gs_item _j_gs_sn_10189_2" href="javascript:void(0);"
									data-objid="10189" data-type="2" data-name="香港">香港</a> <a
									class="_j_gs_item _j_gs_sn_10065_2" href="javascript:void(0);"
									data-objid="10065" data-type="2" data-name="北京">北京</a> <a
									class="_j_gs_item _j_gs_sn_12711_2" href="javascript:void(0);"
									data-objid="12711" data-type="2" data-name="云南">云南</a> <a
									class="_j_gs_item _j_gs_sn_10083_2" href="javascript:void(0);"
									data-objid="10083" data-type="2" data-name="泰国">泰国</a> <a
									class="_j_gs_item _j_gs_sn_10799_2" href="javascript:void(0);"
									data-objid="10799" data-type="2" data-name="青海湖">青海湖</a>
							</div>
						</div>
					</div>
					<div class="section clearfix">
						<div class="label">兴趣</div>
						<div class="section-cont">
							<ul class="interest-list clearfix">
								<li class="_j_gs_item _j_gs_sn_417_1" data-objid="417"
									data-type="1" data-name="吃遍天下"><a
									href="javascript:void(0);"> <span class="img"><img
											width="110" src="syste_img/img/index-img/filter-cbtx.jpg"></span>
										<h3>吃遍天下</h3>
										<p>无敌手</p>
								</a></li>
								<li class="_j_gs_item _j_gs_sn_452_1" data-objid="452"
									data-type="1" data-name="带着对象"><a
									href="javascript:void(0);"> <span class="img"><img
											width="110" src="syste_img/img/index-img/filter-dzdx.jpg"></span>
										<h3>带着对象</h3>
										<p>去虐狗</p>
								</a></li>
								<li class="_j_gs_item _j_gs_sn_427_1" data-objid="427"
									data-type="1" data-name="姑娘漂亮"><a
									href="javascript:void(0);"> <span class="img"><img
											width="110" src="syste_img/img/index-img/filter-gnpl.jpg"></span>
										<h3>姑娘漂亮</h3>
										<p>就是美</p>
								</a></li>
								<li class="_j_gs_item _j_gs_sn_436_1" data-objid="436"
									data-type="1" data-name="带着孩子"><a
									href="javascript:void(0);"> <span class="img"><img
											width="110" src="syste_img/img/index-img/filter-dzhz.jpg"></span>
										<h3>带着孩子</h3>
										<p>看世界</p>
								</a></li>
								<li class="_j_gs_item _j_gs_sn_423_1" data-objid="423"
									data-type="1" data-name="登山徒步"><a
									href="javascript:void(0);"> <span class="img"><img
											width="110" src="syste_img/img/index-img/filter-dstb.jpg"></span>
										<h3>登山徒步</h3>
										<p>用脚走</p>
								</a></li>
								<li class="_j_gs_item _j_gs_sn_435_1" data-objid="435"
									data-type="1" data-name="带着父母"><a
									href="javascript:void(0);"> <span class="img"><img
											width="110" src="syste_img/img/index-img/filter-dzfm.jpg"></span>
										<h3>带着父母</h3>
										<p>去远方</p>
								</a></li>
								<li class="_j_gs_item _j_gs_sn_451_1" data-objid="451"
									data-type="1" data-name="独自一人"><a
									href="javascript:void(0);"> <span class="img"><img
											width="110" src="syste_img/img/index-img/filter-dzyr.jpg"></span>
										<h3>独自一人</h3>
										<p>最自由</p>
								</a></li>
								<li class="_j_gs_item _j_gs_sn_453_1" data-objid="453"
									data-type="1" data-name="短途周末"><a
									href="javascript:void(0);"> <span class="img"><img
											width="110" src="syste_img/img/index-img/filter-dtzm.jpg"></span>
										<h3>短途周末</h3>
										<p>散散心</p>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="tn-selected _j_tag_choose_container"></div>

				<!-- 遍历显示游记 -->
				<div id="pagelet-block hot" class="pagelet-block">
					<div class="tn-content">
						<div class="tn-list">
							<div id="template">
								<c:forEach items="${travelList }" var="listItem">
								<c:if test="${listItem!=null }">
									<div class="tn-item clearfix">
										<div class="tn-image">
											<a
												href="showTravel?traId=${listItem.mdRecid }&userId=${listItem.user.mdUserRecid }"
												target="_blank"> <img src="${listItem.mdThemeImg }"
												style="display: inline;">
											</a>
										</div>
										<div class="tn-wrapper">
											<dl>
												<dt>
													<a
														href="showTravel?traId=${listItem.mdRecid }&userId=${listItem.user.mdUserRecid }"
														target="_blank">${listItem.mdTheme }</a>
												</dt>
												<dd style="height:80px;;overflow:hidden;text-overflow:ellipsis; ">

													<!-- 用来寻找第一个段落作为显示的 -->

													<c:set var="flag" value="true" />
													<c:forEach items="${listItem.listTravlePagragraph}" var="i"
														varStatus="loopstatus">
														<c:if test="${ flag && (i.mdContent != null) }">
															<c:set var="data" value="${i.mdContent }" />
														</c:if>
														<c:if test="${i.mdContent != null}">
															<c:set var="flag" value="false" />
														</c:if>
													</c:forEach>

													<a
														href="showTravel?traId=${listItem.mdRecid }&userId=${listItem.user.mdUserRecid }"
														target="_blank"> ${data } ...</a>
												</dd>
											</dl>
											<div class="tn-extra">
												<span class="tn-ding praise_1"> <span
													style="display: none;">${listItem.mdRecid }</span> <a
													class="btn-ding praise" rel="nofollow"></a> <em id="">${listItem.mdStdname }
												</em><!-- 获赞数 -->
												</span> 
												<span class="tn-place"><i></i><a
													href="showTravel?traId=${listItem.mdRecid }&userId=${listItem.user.mdUserRecid }"
													class="_j_gs_item" rel="nofollow">${listItem.mdTheme }</a>，by
													${listItem.user.mdUserName }</span> <span class="tn-user"> <a
													href="" target="_blank" rel="nofollow"> <img
														src="${listItem.user.userHeadImg }">
												</a>
												</span> <span class="tn-nums"><i></i>15620/262</span>
											</div>
										</div>
									</div>
									</c:if>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>


				<!-- 分页显示 -->
				<div align="right" class="m-pagination" id="tn_pagination"
					data-type="0" data-objid="0">
					<input class="count" type="hidden" value="${page.pageCount}"
						id="lblCurent" /> <input class="count" type="hidden"
						value="${page.pageSize }" id="pageSize" />  <input class="count" type="hidden"
						value="${page.cache }" id="cache" /><input class="count"
						type="hidden" value="${page.dataCount }" id="pageCount" /> <span
						class="count">共${page.pageCount }页 / ${page.dataCount }条</span>

							<a class="a_font"> <span class="pg-current page">${page.pageCurrent }</span></a> 


					<a class="pg-first pageitem" rel="nofollow">首页</a>
					<a class="pg_prev pageitem" rel="nofollow">上一页</a> <a
						class="pg_next pageitem" rel="nofollow">下一页</a> <a
						class="pg_last pageitem" rel="nofollow">末页</a>
				</div>
			</div>
		</div>
	</div>
	<div id="c-r-last">
		<a href="" target="_blank"> <img src="syste_img/img/index-img/bottom.jpg">
		</a>
	</div>
	<div class="footer">
		<iframe src="IndexFooter" frameborder="0" scrolling="no" marginheight="0"
			marginwidth="0" style="margin: 0px auto;"></iframe>
	</div>

</body>
</html>