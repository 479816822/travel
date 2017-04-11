<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"
	import="java.util.List,java.util.ArrayList"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>strategy</title>
    <link rel="stylesheet" href="css/strategy.css">
    <script src="js/jquery-3.1.0.min.js"></script>
    <script>
        var i = 0;
        var timer;
        $(function () {
            adCirculation();

            //鼠标悬停广告暂停切换
            $("#slide_box li").hover(function () {
                clearTimeout(timer);
            }, function () {
                timer = setTimeout("adCirculation()", 1500);
            });
            
            //悬停显示下级菜单
            $(".nav-title").hover(function(){
            	$(".nav-panel").hide();
            	$(this).next().show();
            	$(this).children().eq(0).css("color","orange");
            	$(this).children().eq(1).css("background-position","-30px -40px");
            	//$(this).css("border-right","0px");
            },function(){
            	$(this).next().hide();
            	$(this).children().eq(0).css("color","#666");
            	$(this).children().eq(1).css("background-position","-20px -40px");
            	//$(this).css("border-right","1px solid #ddd");
           	    
            	
                
            });
           
            $(".nav-panel").hover(function(){
              	$(this).show();
              },function(){
              	$(this).hide();
              });
            
        });
        
        //轮播
        function adCirculation() {
            i++;
            if (i == 5)
                i = 0;
            //大图片
            $("#slide_box").children().eq(i).css("display", "inline-block").siblings().css("display", "none");
            //小图标
//          $("#thumb_box").children().eq(i).addClass("on").siblings().removeClass("on");
            $("#thumb_box").children().eq(i).attr("background", "url('../strategy-img/scroll_b.png')").siblings().attr("background", "url('../strategy-img/scroll_s.png')");
            timer = setTimeout("adCirculation()", 1500);
        }
        
    </script>
</head>
<body>
<div class="header">
    <iframe src="header1.html" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"
            style="margin: 0px auto;"></iframe>
</div>
<hr>

<div id="content">
    <div class="focus">
        <div class="mdd_nav">
            <div class="gonglve-nav" data-cs-t="攻略导航">
                <div class="nav-item" data-cs-p="海外秋季目的地精选">
                    <div class="nav-title"><h3>海外秋季目的地精选</h3><b class="gn-arrow"></b></div>
                    <div class="nav-panel rank-panel">
                        <ol>
                            <li class="top3"><em class="rank-num">1</em><strong><a href=""
                                                                                   target="_blank">美国东部</a></strong><a
                                    href="" target="_blank">感受历史金色光环</a></li>
                            <li class="top3"><em class="rank-num">2</em><strong><a
                                    href="" target="_blank">加拿大 </a></strong><a
                                    href="" target="_blank">枫叶之国实至名归</a></li>
                            <li class="top3"><em class="rank-num">3</em><strong><a
                                    href="" target="_blank">京都</a></strong><a
                                    href="" target="_blank">千年古都浓浓秋意</a></li>
                            <li><em class="rank-num">4</em><strong><a href=""
                                                                      target="_blank">里斯本</a></strong><a
                                    href="" target="_blank">路止于此海始于斯</a></li>
                            <li><em class="rank-num">5</em><strong><a href=""
                                                                      target="_blank">莫斯科</a></strong><a
                                    href="" target="_blank">去赏世上最早秋景</a></li>
                            <li><em class="rank-num">6</em><strong><a href=""
                                                                      target="_blank">首尔</a></strong><a
                                    href="" target="_blank">初秋的浪漫思密达</a></li>
                            <li><em class="rank-num">7</em><strong><a href=""
                                                                      target="_blank">法国</a></strong><a
                                    href="" target="_blank">葡萄美酒浓香四溢</a></li>
                            <li><em class="rank-num">8</em><strong><a href=""
                                                                      target="_blank">德国</a></strong><a
                                    href="" target="_blank">疯狂慕尼黑啤酒节</a></li>
                            <li><em class="rank-num">9</em><strong><a href=""
                                                                      target="_blank">南非</a></strong><a
                                    href="" target="_blank">南半球的盎然春意</a></li>
                            <li><em class="rank-num">10</em><strong><a href=""
                                                                       target="_blank">马尔代夫</a></strong><a
                                    href="" target="_blank">四季皆宜潜水天堂</a></li>
                        </ol>
                        <span class="nav-banner"
                              style="background:url(http://file31.mafengwo.net/M00/DB/72/wKgBs1dfpuaATGRlAAAVhrE4pLc75.jpeg) no-repeat;"><a
                                href="" hidefocus="ture" target="_blank"></a></span></div>
                </div>
                <div class="nav-item" data-cs-p="国内秋季目的地推荐">
                    <div class="nav-title"><h3>国内秋季目的地推荐</h3><b class="gn-arrow"></b></div>
                    <div class="nav-panel rank-panel">
                        <ol>
                            <li class="top3"><em class="rank-num">1</em><strong><a href=""
                                                                                   target="_blank">九寨沟</a></strong><a
                                    href="" target="_blank">层林尽染童话世界</a></li>
                            <li class="top3"><em class="rank-num">2</em><strong><a
                                    href="" target="_blank">大连</a></strong><a
                                    href="" target="_blank">渤海之滨浪漫之城</a></li>
                            <li class="top3"><em class="rank-num">3</em><strong><a
                                    href="" target="_blank">北京</a></strong><a
                                    href="" target="_blank">遇见最美皇城根儿 </a></li>
                            <li><em class="rank-num">4</em><strong><a href=""
                                                                      target="_blank">呼伦贝尔</a></strong><a
                                    href="" target="_blank">极北草原星空林海</a></li>
                            <li><em class="rank-num">5</em><strong><a href=""
                                                                      target="_blank">北疆</a></strong><a
                                    href="" target="_blank">图瓦村落水墨清晨</a></li>
                            <li><em class="rank-num">6</em><strong><a href=""
                                                                      target="_blank">桂林</a></strong><a
                                    href="" target="_blank">银杏秋韵艳绝天下</a></li>
                            <li><em class="rank-num">7</em><strong><a href=""
                                                                      target="_blank">敦煌</a></strong><a
                                    href="" target="_blank">秋高气爽金色胡杨</a></li>
                            <li><em class="rank-num">8</em><strong><a href=""
                                                                      target="_blank">鼓浪屿</a></strong><a
                                    href="" target="_blank">文艺气息清新小岛</a></li>
                            <li><em class="rank-num">9</em><strong><a href=""
                                                                      target="_blank">盘锦</a></strong><a
                                    href="" target="_blank">丹顶鹤红树林</a></li>
                            <li><em class="rank-num">10</em><strong><a href=""
                                                                       target="_blank">黄山</a></strong><a
                                    href="" target="_blank">如梦云海遒劲苍松</a></li>
                        </ol>
                        <span class="nav-banner"
                              style="background:url(http://file31.mafengwo.net/M00/DB/72/wKgBs1dfpuaATGRlAAAVhrE4pLc75.jpeg) no-repeat;"><a
                                href="" hidefocus="ture" target="_blank"></a></span></div>
                </div>
                <div class="nav-item" data-cs-p="奔向海岛">
                    <div class="nav-title"><h3>奔向海岛</h3><b class="gn-arrow"></b></div>
                    <div class="nav-panel rank-panel">
                        <ol>
                            <li class="top3"><em class="rank-num">1</em><strong><a href=""
                                                                                   target="_blank">象岛</a></strong><a
                                    href="" target="_blank">腻了普吉，来象岛玩个深度</a></li>
                            <li class="top3"><em class="rank-num">2</em><strong><a href=""
                                                                                   target="_blank">巴厘岛</a></strong><a
                                    href="" target="_blank">巴厘岛免签啦！</a></li>
                            <li class="top3"><em class="rank-num">3</em><strong><a href=""
                                                                                   target="_blank">毛里求斯</a></strong><a
                                    href="" target="_blank">印度洋上的海上明珠</a></li>
                            <li><em class="rank-num">4</em><strong><a href=""
                                                                      target="_blank">塞班岛</a></strong><a
                                    href="" target="_blank">错“季”出行，也有惊喜</a></li>
                            <li><em class="rank-num">5</em><strong><a href=""
                                                                      target="_blank">长滩岛</a></strong><a
                                    href="" target="_blank">潜水与蜜月的天堂</a></li>
                            <li><em class="rank-num">6</em><strong><a href="" target="_blank">圣托里尼</a></strong><a
                                    href="" target="_blank">蓝白之城映衬着海风吹拂</a></li>
                            <li><em class="rank-num">7</em><strong><a href=""
                                                                      target="_blank">沙美岛</a></strong><a
                                    href="" target="_blank">如果你厌倦了芭提雅</a></li>
                            <li><em class="rank-num">8</em><strong><a href="" target="_blank">杜马盖地</a></strong><a
                                    href="" target="_blank">找小丑鱼做客去！</a></li>
                            <li><em class="rank-num">9</em><strong><a href=""
                                                                      target="_blank">兰卡威</a></strong><a
                                    href="" target="_blank">海钓、潜水，看蓝天</a></li>
                            <li><em class="rank-num">10</em><strong><a href=""
                                                                       target="_blank">沙巴</a></strong><a
                                    href="" target="_blank">这里有世界上最美的落日</a></li>
                        </ol>
                        <span class="nav-banner"
                              style="background:url(http://file31.mafengwo.net/M00/DB/72/wKgBs1dfpuaATGRlAAAVhrE4pLc75.jpeg) no-repeat;"><a
                                href="" hidefocus="ture" target="_blank"></a></span></div>
                </div>
                <div class="nav-item" data-cs-p="主题推荐" >
                    <div class="nav-title"><h3>主题推荐</h3><b class="gn-arrow"></b></div>
                    <div class="nav-panel category-panel">
                        <dl class="clearfix">
                            <dt>骑行</dt>
                            <dd><a title="海南" href="" target="_blank">海南</a></dd>
                            <dd><a title="青海湖" href="" target="_blank">青海湖</a></dd>
                            <dd><a title="敦煌" href="" target="_blank">敦煌</a></dd>
                            <dd><a title="漠河" href="" target="_blank">漠河</a></dd>
                            <dd><a title="台湾" href="" target="_blank">台湾</a></dd>
                            <dd><a title="北京" href="" target="_blank">北京</a></dd>
                            <dd><a title="杭州" href="" target="_blank">杭州</a></dd>
                            <dd><a title="双廊" href="" target="_blank">双廊</a></dd>
                            <dd><a title="婺源" href="" target="_blank">婺源</a></dd>
                            <dd><a title="阿尔山" href="" target="_blank">阿尔山</a></dd>
                            <dd><a title="法国" href="" target="_blank">法国</a></dd>
                            <dd><a title="厦门" href="" target="_blank">厦门</a></dd>
                            <dd><a title="阳朔" href="" target="_blank">阳朔</a></dd>
                            <dd><a title="香格里拉" href="" target="_blank">香格里拉</a></dd>
                            <dd><a title="太湖" href="" target="_blank">太湖</a></dd>
                            <dd><a title="西藏" href="" target="_blank">西藏</a></dd>
                            <dd><a title="大理" href="" target="_blank">大理</a></dd>
                            <dd><a title="成都" href="" target="_blank">成都</a></dd>
                            <dd><a title="乌鲁木齐" href="" target="_blank">乌鲁木齐</a></dd>
                        </dl>
                        <dl class="clearfix">
                            <dt>潜水</dt>
                            <dd><a title="沙巴" href="" target="_blank">沙巴</a></dd>
                            <dd><a title="三亚" href="" target="_blank">三亚</a></dd>
                            <dd><a title="斐济" href="" target="_blank">斐济</a></dd>
                            <dd><a title="巴厘岛" href="" target="_blank">巴厘岛</a></dd>
                            <dd><a title="长滩岛" href="" target="_blank">长滩岛</a></dd>
                            <dd><a title="马尔代夫" href="" target="_blank">马尔代夫</a></dd>
                            <dd><a title="苏梅岛" href="" target="_blank">苏梅岛</a></dd>
                            <dd><a title="普吉岛" href="" target="_blank">普吉岛</a></dd>
                            <dd><a title="夏威夷" href="" target="_blank">夏威夷</a></dd>
                            <dd><a title="巴拉望" href="" target="_blank">巴拉望</a></dd>
                            <dd><a title="马来西亚" href="" target="_blank">马来西亚</a></dd>
                            <dd><a title="兰卡威" href="" target="_blank">兰卡威</a></dd>
                            <dd><a title="埃及" href="" target="_blank">埃及</a></dd>
                            <dd><a title="印度尼西亚" href="" target="_blank">印度尼西亚</a></dd>
                            <dd><a title="泰国" href="" target="_blank">泰国</a></dd>
                        </dl>
                        <dl class="clearfix">
                            <dt>徒步</dt>
                            <dd><a title="尼泊尔" href="" target="_blank">尼泊尔</a></dd>
                            <dd><a title="虎跳峡" href="" target="_blank">虎跳峡</a></dd>
                            <dd><a title="喀纳斯" href="" target="_blank">喀纳斯</a></dd>
                            <dd><a title="墨脱" href="" target="_blank">墨脱</a></dd>
                            <dd><a title="小五台" href="" target="_blank">小五台</a></dd>
                            <dd><a title="贡嘎雪山" href="" target="_blank">贡嘎雪山</a></dd>
                            <dd><a title="海陀山" href="" target="_blank">海陀山</a></dd>
                            <dd><a title="海螺沟" href="" target="_blank">海螺沟</a></dd>
                            <dd><a title="雨崩" href="" target="_blank">雨崩</a></dd>
                            <dd><a title="三峡" href="" target="_blank">三峡</a></dd>
                            <dd><a title="阳朔" href="" target="_blank">阳朔</a></dd>
                            <dd><a title="新都桥" href="" target="_blank">新都桥</a></dd>
                            <dd><a title="楠溪江" href="" target="_blank">楠溪江</a></dd>
                            <dd><a title="梅里雪山" href="" target="_blank">梅里雪山</a></dd>
                            <dd><a title="野三坡" href="" target="_blank">野三坡</a></dd>
                            <dd><a title="西双版纳" href="" target="_blank">西双版纳</a></dd>
                        </dl>
                        <dl class="clearfix">
                            <dt>登山</dt>
                            <dd><a title="珠穆朗玛峰" href="" target="_blank">珠穆朗玛峰</a></dd>
                            <dd><a title="乞力马扎罗" href="" target="_blank">乞力马扎罗</a></dd>
                            <dd><a title="牛背山" href="" target="_blank">牛背山</a></dd>
                            <dd><a title="太白山" href="" target="_blank">太白山</a></dd>
                            <dd><a title="四姑娘山" href="" target="_blank">四姑娘山</a></dd>
                            <dd><a title="雁荡山" href="" target="_blank">雁荡山</a></dd>
                            <dd><a title="云台山" href="" target="_blank">云台山</a></dd>
                            <dd><a title="三清山" href="" target="_blank">三清山</a></dd>
                            <dd><a title="普陀山" href="" target="_blank">普陀山</a></dd>
                            <dd><a title="庐山" href="" target="_blank">庐山</a></dd>
                            <dd><a title="海陀山" href="" target="_blank">海陀山</a></dd>
                            <dd><a title="小五台" href="" target="_blank">小五台</a></dd>
                            <dd><a title="华山" href="" target="_blank">华山</a></dd>
                            <dd><a title="泰山" href="" target="_blank">泰山</a></dd>
                            <dd><a title="黄山 " href="" target="_blank">黄山 </a></dd>
                            <dd><a title="武功山" href="" target="_blank">武功山</a></dd>
                        </dl>
                    </div>
                </div>
            </div>
            <div class="input_like">
                <div>
                    <span></span>
                    <input id="search_word" type="text" placeholder="请输入想去的地方，如:香港"/>
                    <div class="clear"></div>
                </div>
                <div class="search_resu" id="search_result">
                </div>
            </div>
            <div class="app_d">
                <h3><a href="" target="_blank"><img src="img/strategy-img/logo_gonglve.png" alt="" width="50" height="50"/></a></h3>
                <div class="domn_in">
                    <h4><a href="" target="_blank">蚂蜂窝自由行APP下载</a></h4>
                    <p>
                        <a style="cursor: auto;">iPhone版</a>
                        <span>|</span>
                        <a style="cursor: auto;">Android版</a>
                        <span>|</span>
                        <a style="cursor: auto;">iPad版</a>
                    </p>
                    <div class="clear"></div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div class="slide">
            <ul id="slide_box">
                <li><a href="" target="_blank"><img src="img/strategy-img/ad1.jpg"></a></li>
                <li><a href="" target="_blank"><img src="img/strategy-img/ad2.jpg"></a></li>
                <li><a href="" target="_blank"><img src="img/strategy-img/ad2.jpg"></a></li>
                <li><a href="" target="_blank"><img src="img/strategy-img/ad4.jpg"></a></li>
                <li><a href="" target="_blank"><img src="img/strategy-img/ad5.png"></a></li>
            </ul>
            <ol id="thumb_box">
                <li data-id="0">1</li>
                <li data-id="1">2</li>
                <li data-id="2">3</li>
                <li data-id="3">4</li>
                <li data-id="4">5</li>
            </ol>
        </div>
    </div>
    <div class="large-ad">
        <img src="img/strategy-img/large-ad.png">
    </div>
    <div class="wrap">
        <div class="wrap-left">
            <p class="title">旅游攻略导航</p>
            <ul class="area">
                <li>国内<i></i></li>
                <li class="spacer"></li>
                <li>国外<i></i></li>
                <li class="spacer"></li>
                <li>主体<i></i></li>
            </ul>
            <div class="rank">
                <ul class="rank">
                    <li class="top">
                        <img src="img/strategy-img/chengdu.jpg">
                        <p class="time">更新日期:2016-09-09</p>
                        <div class="down_cout">
                            <span></span>
                            <p>123456人下载</p>
                        </div>
                    </li>
                    <li><span class="num">2</span><a>西安</a></li>
                    <li><span class="num">3</span><a>大理</a></li>
                    <li><span class="num">4</span><a>厦门</a></li>
                    <li><span class="num">5</span><a>北京</a></li>
                    <li><span class="num">6</span><a>深圳</a></li>
                    <li><span class="num">7</span><a>上海</a></li>
                    <li><span class="num">8</span><a>丽江</a></li>
                </ul>
            </div>

        </div>
        <div class="wrap-right">
            <p class="bigTitle">推荐攻略</p><br>
            <div class="hr">
                <hr>
            </div>
            <div class="items">
                <a href="" target="_blank" class="item ask">
                    <div class="about">
                            <span class="stat">
                                <span class="num">2810  </span>蜂蜂赞
                                <i class="icon-hand"></i>
                            </span>
                            <span class="type">
                                <i class="icon-wenda"></i>来自
                                <strong>问答</strong>
                            </span>
                    </div>
                    <div class="title">
                        日本有哪些吃货殿堂级的美食节？
                    </div>
                    <dl class="art">
                        <dt>
                            <img src="img/strategy-img/art1.jpg">
                        </dt>
                        <dd>
                            <div class="info">
                                1、道顿堀美食街
                                道顿堀作为大阪最地标的景点，不仅是很多日剧日影的取景地，而且绝对也是霓虹最具人气和知名度的吃货的天堂，号称是“日本第一美食街”！每次来这里，都觉得超幸福~感觉哪儿哪儿都好香，哪儿哪儿都想吃~但每次又会鄙视自己的胃怎么那么不够用呢……
                                最喜欢这里的章鱼烧、大阪 烧、寿司、炸串、巨蟹、...
                            </div>
                            <div class="ext">
                                <span class="art-tag">美食</span>
                                <span class="art-tag">日本</span>
                                <span class="nums">66666浏览，100回答</span>
                            </div>
                        </dd>
                    </dl>
                    <div class="hr">
                        <hr>
                    </div>
                </a>
                <a href="" target="_blank" class="item official">
                    <div class="about">
                            <span class="stat">
                                <span class="num">3209  </span>蜂蜂喜欢
                                <i class="icon-hand"></i>
                            </span>
                            <span class="type">
                                <i class="icon-wenda"></i>来自
                                <strong>官方账号</strong>
                            </span>
                    </div>
                    <div class="title">
                        全球8大“尖叫机器”大盘点
                    </div>
                    <div class="txt">
                        <div class="info">
                            你感觉像是要飞出座椅，却又瞬间从数百米的高空急速回落。你仿佛要脱离地心引力，
                            直到游览结束才重返现实。这些设备不仅是为了丰富游客的体验，而是让游客感受到必生难忘的刺激感。
                            你坐上去，系上安全带然后放声尖叫。这就是挑战肾上腺素爆发的极速之旅。.
                        </div>
                    </div>
                    <div class="imgs">
                        <ul class="clearfix">
                            <li><img src="img/strategy-img/art21.jpg"></li>
                            <li><img src="img/strategy-img/art22.jpg"></li>
                            <li><img src="img/strategy-img/art23.jpg"></li>
                            <li class="ext">88888浏览</li>
                        </ul>
                    </div>
                    <div class="hr">
                        <hr>
                    </div>
                </a>
                <a href="" target="_blank" class="item ask">
                    <div class="about">
                            <span class="stat">
                                <span class="num">2810  </span>蜂蜂赞
                                <i class="icon-hand"></i>
                            </span>
                            <span class="type">
                                <i class="icon-wenda"></i>来自
                                <strong>问答</strong>
                            </span>
                    </div>
                    <div class="title">
                        日本有哪些吃货殿堂级的美食节？
                    </div>
                    <dl class="art">
                        <dt>
                            <img src="img/strategy-img/art1.jpg">
                        </dt>
                        <dd>
                            <div class="info">
                                1、道顿堀美食街
                                道顿堀作为大阪最地标的景点，不仅是很多日剧日影的取景地，而且绝对也是霓虹最具人气和知名度的吃货的天堂，号称是“日本第一美食街”！每次来这里，都觉得超幸福~感觉哪儿哪儿都好香，哪儿哪儿都想吃~但每次又会鄙视自己的胃怎么那么不够用呢……
                                最喜欢这里的章鱼烧、大阪 烧、寿司、炸串、巨蟹、...
                            </div>
                            <div class="ext">
                                <span class="art-tag">美食</span>
                                <span class="art-tag">日本</span>
                                <span class="nums">66666浏览，100回答</span>
                            </div>
                        </dd>
                    </dl>
                    <div class="hr">
                        <hr>
                    </div>
                </a>
                <a href="" target="_blank" class="item official">
                    <div class="about">
                            <span class="stat">
                                <span class="num">3209  </span>蜂蜂喜欢
                                <i class="icon-hand"></i>
                            </span>
                            <span class="type">
                                <i class="icon-wenda"></i>来自
                                <strong>官方账号</strong>
                            </span>
                    </div>
                    <div class="title">
                        全球8大“尖叫机器”大盘点
                    </div>
                    <div class="txt">
                        <div class="info">
                            你感觉像是要飞出座椅，却又瞬间从数百米的高空急速回落。你仿佛要脱离地心引力，
                            直到游览结束才重返现实。这些设备不仅是为了丰富游客的体验，而是让游客感受到必生难忘的刺激感。
                            你坐上去，系上安全带然后放声尖叫。这就是挑战肾上腺素爆发的极速之旅。.
                        </div>
                    </div>
                    <div class="imgs">
                        <ul class="clearfix">
                            <li><img src="img/strategy-img/art21.jpg"></li>
                            <li><img src="img/strategy-img/art22.jpg"></li>
                            <li><img src="img/strategy-img/art23.jpg"></li>
                            <li class="ext">88888浏览</li>
                        </ul>
                    </div>
                    <div class="hr">
                        <hr>
                    </div>
                </a>
            </div>
        </div>
    </div>
    <div class="bottom">
        <img src="img/strategy-img/bottom.jpg">
    </div>
</div>

<div class="footer">
    <iframe src="footer.html" frameborder="0" scrolling="no" marginheight="0"
            marginwidth="0"
            style="margin: 0px auto;"></iframe>
</div>
</body>
</html>