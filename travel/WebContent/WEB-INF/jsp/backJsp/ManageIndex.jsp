<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="keywords" content="jquery,ui,easy,easyui,web">
	<meta name="description" content="easyui help you build your web page easily!">
    <title>爱旅游U管理平台</title>
    <link href="css/backcss/ManageIndex.css" rel="stylesheet"
          type="text/css">


       <link href="css/backcss/easyui.css" rel="stylesheet">
       
          <script type="text/javascript" src="js/easyui/jquery-easyui.js"></script>
    <script type="text/javascript" src="js/easyui/jquery1-1.12.js"></script>
	<link href="css/backcss/icon.css" rel="stylesheet"> <script type="text/javascript" src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="http://www.w3cschool.cc/try/jeasyui/jquery.easyui.min.js"></script>
  

    <script language="javascript" src="js/jquery-validation-1.15.1.js"
            type="text/javascript"></script>

      <link rel="stylesheet" href="pluing/jquery-treeview-master/jquery.treeview.css" />
   <script src="pluing/jquery-treeview-master/demo/jquery.cookie.js" type="text/javascript"></script>
      <script src="pluing/jquery-treeview-master/jquery.treeview.js" type="text/javascript"></script>
      
      

      
    <script type="text/javascript">
       $(function(){

           $("#tree").treeview();

           //打开相应地页签
           $(".folder").click(function(){

           });
           
           //点击
           $(".folder").click(function(){
        	   var value=$(this).html();
        	   var str="<div title='目的地主题' closable='true' style='padding:0px;width:100%;height:100%;margin: 0px'>"
               + " <iframe src='edit_theme' frameborder='0'"
               + "  marginheight='0' marginwidth='0' style='margin: 0px auto;width:100%;height:99%;'></iframe> </div>";
        	   var $node = $(str);
        	 //  $(".tab_add").append($node);
        	 
        	   addTab("地址","AreaEdit");
        	 
           })
           
           
        


       })
    </script>
    
    
     <script>
        function addTab(title, url){
            if ($('#tt').tabs('exists', title)){
                $('#tt').tabs('select', title);
           } else {
                var content = '<iframe scrolling="auto" frameborder="0"  src="'+url+'" style="width:100%;height:100%;"></iframe>';
                $('#tt').tabs('add',{
                    title:title,
                    content:content,
                    closable:true
                });
            }
        }
    </script>
    
</head>
<body>
<!--头-->
<div class="ma_header">
    <div class="fl_left head_font">爱旅游U系统管理平台</div>
   <a><div class="fl_rigth out_1">退出</div></a>
    <div div class="fl_rigth out_1"><span>欢迎你:</span>Admin</div>
</div>
<div class="ma_center" style="height: 850px;clear: both;">
    <div class="mn_left" >
        <ul id="tree" class="filetree">
            <li style="margin-left: 0px">
                 系统管理
                <ul>
                    <li><span class="folder">权限管理</span>
                        <ul>
                            <li><span class="folder">权限设置</span> </li>
                            <li><span class="folder">权限管理</span> </li>
                        </ul>
                    </li>
                    <li><span class="folder">人员管理</span>
                        <ul>
                            <li><span class="folder">人员管理</span> </li>
                            <li><span class="folder">人员管理</span> </li>
                            <li><span class="folder">人员管理</span> </li>
                            <li><span class="folder">人员管理</span> </li>
                        </ul>

                    </li>
                    <li><span class="folder">前台管理</span>
                        <ul>
                            <li><span class="folder">网站首页</span> </li>
                            <li><span class="folder">目的地详情</span>
                                <ul>
                                    <a>  <li><span class="folder">主题查看</span> </li></a>
                                    <a> <li><span class="folder">主题添加</span> </li></a>
                                    <a> <li><span class="folder">主题删除</span> </li></a>
                                    <a> <li><span class="folder">主题修改</span> </li></a>
                                </ul>
                            </li>
                            <li><span class="folder">用户管理</span> </li>
                            <li><span class="folder">商品管理</span> </li>
                            <li><span class="folder">网站活动</span> </li>
                            <li><span class="folder">网站酒店</span> </li>
                            <li><span class="folder">网站公告</span> </li>
                            <li><span class="folder">网站广告</span> </li>
                            <li><span class="folder">旅游景点</span>
                                <ul>
                                    <li><a><span class="folder">旅游景点编辑</span> </a></li>
                                    <li><a><span class="folder">添加旅游景点</span> </a></li>
                                    <li><a><span class="folder">删除旅游经典</span> </a></li>
                                    <li><a><span class="folder">修改旅游景点</span> </a></li>
                                    <li><a><span class="folder">查看景点信息</span> </a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li><span class="folder">功能管理</span>
                        <ul>
                            <li><a><span class="folder">人员管理</span></a> </li>
                            <li><a><span class="folder">人员管理</span> </a></li>
                            <li><a><span class="folder">人员管理</span> </a></li>
                            <li><a><span class="folder">人员管理</span></a> </li>
                        </ul>
                    </li>
                    <li><a><span class="folder">日志管理</span></a></li>
                    <li><a><span class="folder">系统维护</span></a></li>
                    <li><span class="folder">基础数据</span>
                        <ul>
                            <li><span class="folder">银行</span>
                                <ul>
                                    <li><a><span class="folder">查看</span> </a></li>
                                    <li><a><span class="folder">删除</span></a> </li>
                                    <li><a><span class="folder">添加</span> </a></li>
                                    <li><a><span class="folder">修改</span></a> </li>
                                </ul>
                            </li>
                            <li><span class="folder">地址</span>
                                <ul>
                                    <li><a><span class="folder">查看</span></a> </li>
                                    <li><a><span class="folder">删除</span></a> </li>
                                    <li><a><span class="folder">添加</span> </a></li>
                                    <li><a><span class="folder">修改</span></a> </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
    <div class="ma_rigth" >
        <div id="tt" class="easyui-tabs tab_add" style="width:1540px;height: 820px;background:  rgb(236, 236, 236);font-size: 16px">
            <div title="Welecom ALU Manage" style="padding:0px;width: 100%;height: 77%">
                <img alt="WelCome ALU" src="img/wKgBZ1jgVTKAUvdXAA0U6TbsfEg65.jpeg" style="  position:fixed;

    width:100%;

    height:87%;">
            </div>
    
        </div>
    </div>
</div>
<!--尾-->

<div class="ma_fotter">
    <div class="fl_left left_date"><span>当前时间:</span><span>2017-04-13 10:22:56</span></div>
    <div class="fl_rigth left_date1">版权所有归属于爱旅游U</div>
</div>

</body>
</html>