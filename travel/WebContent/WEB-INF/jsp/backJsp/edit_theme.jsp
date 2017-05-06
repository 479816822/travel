<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>目的地主题编辑</title>
    <link rel="stylesheet" type="text/css" href="pluing/easyui/themes/black/easyui.css">
    <link rel="stylesheet" type="text/css" href="pluing/easyui/themes/icon.css">
    <script type="text/javascript" src="pluing/easyui/jquery.min.js"></script>
    <script type="text/javascript" src="pluing/easyui/jquery.easyui.min.js"></script>
    <link rel="stylesheet" type="text/css" href="css/backcss/edit_theme.css">
    <!-- 图片上传 -->


    <script language="javascript" src="js/jquery-validation-1.15.1.js"
            type="text/javascript"></script>


    <style type="text/css">
        .datagrid-header-rownumber,.datagrid-cell-rownumber{
            width:40px;
        }
    </style>

    <link rel="stylesheet" href="pluing/publicity/zyupload/skins/zyupload-1.0.0.min.css " type="text/css">
    <script type="text/javascript" src="pluing/publicity/zyupload/zyupload-1.0.0.min.js"></script>


    <link rel="stylesheet" href="pluing/jquery-treeview-master/jquery.treeview.css" />
    <script src="pluing/jquery-treeview-master/demo/jquery.cookie.js" type="text/javascript"></script>
    <script src="pluing/jquery-treeview-master/jquery.treeview.js" type="text/javascript"></script>

    <style type="text/css">
        .datagrid-header-rownumber,.datagrid-cell-rownumber{
            width:40px;
        }
    </style>

    <script type="text/javascript">
        $(function() {
            $("#luckyNum").val("");
            $(".user-details").html("");
            $("#product-container").hide();
            $("#dlg-buttons").hide();
            $("#dlg-btn").hide();
            $(".center_left").show();



            $("#tree").treeview();

            loadLocal();

            //打开相应地页签
            $(".folder").click(function(){

            });

            $(".shouye").click(function() {
                $("#grid-view").children().hide();
                $(".ads-index").show();
            });
            $(".gonglue").click(function() {
                $("#grid-view").children().hide();
                $(".ads-strategy").show();
            });
            $("#add").click(function() {
                $("#grid-view").children().hide();
                $(".add-product").show();
                $(".center_left").show();
            });
            $("#edit").click(function() {
                $("#grid-view").children().hide();
                $(".delete-product").show();
                $(".center_left").show();
            });

            //删除
            $("#delete").click(function() {
                $("#edit").children().hide();
                $(".center_left").show();

            });

            $(".hide-details").click(function() {
                $(this).parent().next().hide();
                $(this).hide();
            });





            /* 添加商品 */
            $("#addBtn").click(function(){

                //		var $path=$("#pic").val();
                //	var $name=$path.substring($path.lastIndexOf("\\")+1).replace(" ", "");
                //alert($name);
                var $category=$("#proCategory option:selected").val();
                $.ajax({
                    type : "POST",
                    url : "addProduct",
                    data:{
                        "proName":$("input[name='proName']").val(),
                        "proPrice":$("input[name='proPrice']").val(),
                        "proStock":$("input[name='proStock']").val(),
                        "proDes":$("input[name='proDes']").val(),
                        "proImg":$("input[name='proImg']").val(),
                        "category":$category
                    },
                    dataType : "json",
                    success : function(data) {
                        if(data == 1){
                            alert("上传成功");
                            $("input[name='proName']").attr("value","");
                            $("input[name='proPrice']").attr("value","");
                            $("input[name='proStock']").attr("value","");
                            $("input[name='proDes']").attr("value","");
                            $("#pic").attr("value","");
                        }else{
                            alert("上传失败");
                        }
                    }
                });

            });


        })
    </script>
    <script>

        function loadLocal(){
            var rows = [];
            for(var i=1; i<=8000; i++){
                var amount = Math.floor(Math.random()*1000);
                var price = Math.floor(Math.random()*1000);
                rows.push({
                    inv: 'Inv No '+i,
                    date: $.fn.datebox.defaults.formatter(new Date()),
                    name: 'Name '+i,
                    amount: amount,
                    price: price,
                    cost: amount*price,
                    note: 'Note '+i
                });
            }
            $('#tt').datagrid('loadData', rows);
        }
        function load(mode){
            if (mode == 'local'){
                loadLocal();
            } else {
                $('#tt').datagrid({
                    url:'datagrid27_getdata.php'
                });
            }
        }

        function luckyDraw() {
            $.ajax({
                type : "POST",
                url : "luckyDraw",
                dataType : "json",
                success : function(data) {
                    $("#luckyNum").val(data['userPhone']);
                    html = '<p>昵称:' + data['userNick']+'</p>'
                            +'<p>邮箱:' + data['userEmail']+'</p>';
                    /*  +'<p>年龄:' + data['userAge']+'</p>'; */
                    $(".user-details").html(html);
                }
            });
        }
        function editProduct(){
            $.ajax({
                type : "POST",
                url : "editProduct",
                data:{"category":$("#category option:selected").val()},
                dataType : "json",
                success : function(data) {
                    /* $(".thisProduct").hover(function(){
                     $(this).children().eq(3).show();
                     },function(){
                     $(this).children().eq(3).hide();
                     }); */


                    $("#product").html('<tr id="product-head"><td>id</td><td>图片</td><td>名称</td><td>价格</td></tr>');
                    $.each(data,function(index,value) {
                        html="<tr class='thisProduct'><td>"
                                +value.proId+"</td><td>"
                                +"<img style='width:50px;height:50px;' src='"+value.proImg+ "'/></td><td>"
                                +value.proName+"</td><td>"
                                +value.proPrice+"honey</td><td><a href='#' class='deleteThis'>下架</a></td></tr>";
                        $("#product").append(html);
                    });
                    $("#product-container").show();
                    $(".deleteThis").click(function(){
                        //$( "#dlg-btn" ).show();
                        /* $(".btn").click(function(){
                         $("#dlg-btn").hide();
                         if($(this).val()=="确认"){ */
                        $(this).parent().parent().remove();
                        $.ajax({
                            type : "POST",
                            url : "deleteProduct",
                            data:{"proId":$(this).parent().parent().children().eq(0).text()},
                            dataType : "json",
                        });
                        /* 	}
                         });		 */
                    });
                }
            });
        }


        function fun(str){

            var str1 = str.length;
            var n = str1 - 2;
            var str2 = str.substring(2, n);
            $("input[name='proImg']").val(str2);
            $("#zyupload").remove();
            $(".class_img").hide();

        }

    </script>
</head>
<body>
<table id="dg" title="" class="easyui-datagrid"
       style="width: 100%; height: 100%" url="" toolbar="#toolbar"
       rownumbers="true" fitColumns="true" singleSelect="true">
</table>

<div id="toolbar">
    <div class="option">
        <div class="drop-menu">
            <ul>
                <li><a href="#" id="add" >新增</a></li>
                <li><a href="#" id="edit" >修改</a></li>
                <li><a href="#" id="look" >查看</a></li>
                <li><a href="#" id="delete" >删除</a></li>
            </ul>
        </div>
    </div>
</div>


<div id="grid-view" >

    <div class="center_left">
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

    <div id="welcome">Welcome to ALU爱旅游 Manange！！！！</div>

    <div class="delete-product form-control">
        <h2>修改商店商品</h2>
        <form action="" method="post">
            <div class="fitem">
                <label>主题名称<span style="color: red">*</span>:</label>
                <input name="mdStdname" class="easyui-validatebox">
            </div>
            <div class="fitem">
                <label>主题等级<span style="color: red">*</span>:</label>
                <input name="mdStdcode" class="easyui-validatebox">
            </div>
            <div class="fitem">
                <label>主题等级<span style="color: red">*</span>:</label>
                <input name="sortLv" class="easyui-validatebox">
            </div>
            <div id="product-container">
                <table id="product"></table>
            </div>
        </form>
    </div>

    <div class="add-product form-control">
        <h2>新增目的地主题</h2>
        <form action="" method="post" id="addForm">
            <div class="fitem">
                <label>主题名称<span style="color: red">*</span>:</label>
                <input name="mdStdname" class="easyui-validatebox">
            </div>
            <div class="fitem">
                <label>主题等级<span style="color: red">*</span>:</label>
                <input name="mdStdcode" class="easyui-validatebox" readonly>
            </div>
            <div class="fitem">
                <label>主题级次<span style="color: red">*</span>:</label>
                <input name="sortLv" class="easyui-validatebox" readonly>
            </div>
            <div class="fitem">
                <label>修改人<span style="color: red">*</span>:</label>
                <input name="sortLv" class="easyui-validatebox" style="margin-left: 11px">
            </div>
        </form>
        <input type="submit" id="addBtn" onclick="" value="点击添加">
    </div>

    <div class="look_data" style="display: none">


        <h2>主题显示数据</h2>
        <div class="demo-info" style="margin-bottom:10px">
            <div class="demo-tip icon-tip">&nbsp;</div>
            <div></div>
        </div>
        <div style="margin-bottom:10px">
            <select onchange="load(this.value)">
                <option value="remote">Load Remote Data</option>
                <option value="local">Load Local Data</option>
            </select>
        </div>
        <table id="tt" class="easyui-datagrid" style="width:700px;height:300px"
               title="DataGrid - VirtualScrollView"
               data-options="view:scrollview,rownumbers:true,singleSelect:true,
				url:'datagrid27_getdata.php',autoRowHeight:false,pageSize:50">
            <thead>
            <tr>
                <th field="inv" width="80">Inv No</th>
                <th field="date" width="100">Date</th>
                <th field="name" width="80">Name</th>
                <th field="amount" width="80" align="right">Amount</th>
                <th field="price" width="80" align="right">Price</th>
                <th field="cost" width="100" align="right">Cost</th>
                <th field="note" width="110">Note</th>
            </tr>
            </thead>
        </table>

    </div>


</div>



<div id="dlg-btn">
    <p>确认删除此商品吗？</p>
    <a href="#" class="easyui-linkbutton btn" iconCls="icon-ok" >确定</a>
    <a href="#" class="easyui-linkbutton btn" iconCls="icon-cancel" >取消</a>
</div>



</body>
</html>