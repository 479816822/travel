<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>地址编辑</title>


    <link rel="stylesheet" type="text/css" href="css/backcss/AreaCss.css">
    
        <!-- EzsyUI -->

    <link rel="stylesheet" type="text/css" href="pluing/easyui/es/easyui.css">
    <link rel="stylesheet" type="text/css" href="pluing/easyui/es/demo.css">

    <script src="js/jquery-3.1.0.min.js" type="text/javascript"></script>
    <script language="javascript" src="js/jquery-3.1.0.min.js"
            type="text/javascript"></script>
    <script language="javascript" src="js/jquery-validation-1.15.1.js"
            type="text/javascript"></script>


    <script type="text/javascript" src="pluing/easyui/es/jquery-1.6.js"></script>
    <script type="text/javascript" src="pluing/easyui/es/min.js"></script>
    


 
 
    
   <!--  //动态添加节点 -->
    
	<link rel="stylesheet" href="pluing/jquery-treeview-master/demo/screen.css" />

	<script src="js/jquery.min.js"></script>
	<script src="pluing/jquery-treeview-master/jquery.treeview.edit.js" type="text/javascript"></script>

    <link rel="stylesheet" href="pluing/jquery-treeview-master/jquery.treeview.css" />
    <script src="pluing/jquery-treeview-master/demo/jquery.cookie.js" type="text/javascript"></script>
    <script src="pluing/jquery-treeview-master/jquery.treeview.js" type="text/javascript"></script>

    <style type="text/css">
        #fm{
            margin:0;
            padding:10px 30px;
        }
        .ftitle{
            font-size:14px;
            font-weight:bold;
            color:#666;
            padding:5px 0;
            margin-bottom:10px;
            border-bottom:1px solid #ccc;
        }
        .fitem{
            margin-bottom:5px;
        }
        .fitem label{
            display:inline-block;
            width:80px;
        }
    </style>

    <script type="text/javascript">

	  var areaId;
	  var areaLV;
	  var mdLevel;
  $(function(){

      $("#tree").treeview();

 /**     //失去焦点把值赋值
      $(".folder").blur(function(){
    	  alert("fffffffffffffffff")
    	  areaId=$(this).prev().prev();
    	  var length=$(this).children().length();
    	  mdLevel=$(this).prev().prev().prev();
    	  var num=parseInt(mdLevel)
    	  areaLV=$(this).prev();
    		  var code='0';
          for(i=0;i<num;i++){
        	  code=code+'0';
    	  }
    	 var nums=parseInt(code)
    	 nums=nums+length;
          areaLV=areaLV+ code; 
          num=num+1;
          mdLevel=num;
          
          alert(areaId+""+areaLV+""+mdLevel)
      });
      
      //失去焦点把值赋值
      $(".add_nodes").focus(function(){
    	  alert("kkkkkkkkkkk")
    	  areaId=$(this).prev().prev();
    	  var length=$(this).children().length();
    	  mdLevel=$(this).prev().prev().prev();
    	  var num=parseInt(mdLevel)
    	  areaLV=$(this).prev();
    		  var code='0';
          for(i=0;i<num;i++){
        	  code=code+'0';
    	  }
    	 var nums=parseInt(code)
    	 nums=nums+length;
          areaLV=areaLV+ code; 
          num=num+1;
          mdLevel=num;
          
          alert(areaId+""+areaLV+""+mdLevel)
      });

*/
  })

        var urls;
        function newUser(){
    /*    	if(areaId==null&&areaLV==null){//根节点
        		var i=parseInt(mdLevel)
        		i=i+1;
        		var length=$("#tree").children().length;
        	if(length==0){第一个节点
				$("input[name='areaLv']").attr("value",0);
			    $("input[name='mdLevel']").attr("value",0);  
        	}else{
				$("input[name='areaLv']").attr("value",length);
			    $("input[name='mdLevel']").attr("value",0);  
        	}
        	//	$('#dlg_news').dialog('open').dialog('setTitle','建立根节点');
        	}else{//选择了节点
        	$("input[name='areaLv']").attr("value",areaLV);
			$("input[name='mdLevel']").attr("value",mdLevel);  
        }
        */
        	$('#dlg').show();
          //  $('#fm').form('clear');
            urls = 'save_area';	
        }
        
        
        function editUser(){
            var row = $('#dg').datagrid('getSelected');
            if (row){
                $('#dlg').dialog('open').dialog('setTitle','修改地址');
                $('#fm').form('load',row);
                url = 'update_area?id='+row.id;
            }
        }
        
        //添加节点
        function addNode(t){
          alert($(t).parent().html())        	
            var branches= $(t).parent().next().append ($("<li class='' ><div style='display: none;color: black;'>"
 	               + 0+"</div><div style='display: none;color: black;'>"
 	               + 2 +"</div> <div style='display: none;'>"
 	               + 0 +"</div> <a><span class='folder' onclick='addNode(this)'>"
 	               + "nihao" +"</span></a> <ul id='folder21'> </ul> </li>"));
 				
              $(t).parent().next().treeview({
 					add: branches
 				});
 			//	i=i+1;
 				$(t).parent().next().children().next().next().next().remove();
        }
        //绑定事件
        
        
        //关闭窗口
        function closeUser(){
        	 $('#dlg').hide();
        	
        }
        
        //数据更新
        function saveUser(){
        	$.ajax({
				type : "POST",
				url : urls,
				data:{
					"mdStdname":$("input[name='mdStdname']").val(),
					"parentName":$("input[name='parentName']").val(),
					},
				dataType : "json",
				success : function(data) {
					if(data == 1){
						alert("上传成功");
						$("input[name='mdStdname']").attr("value","");
						$("input[name='parentName']").attr("value","");
					}else{
						alert("上传失败");
					}
				}
			}); 
        }
        
        function removeUser(){
            var row = $('#dg').datagrid('getSelected');
            if (row){
                $.messager.confirm('Confirm','Are you sure you want to remove this user?',function(r){
                    if (r){
                        $.post('remove_user.php',{id:row.id},function(result){
                            if (result.success){
                                $('#dg').datagrid('reload');	// reload the user data
                            } else {
                                $.messager.show({	// show error message
                                    title: 'Error',
                                    msg: result.msg
                                });
                            }
                        },'json');
                    }
                });
            }
        }
    </script>

</head>
<body style="padding: 0px">

<div class="hide_data" style="display: none;"></div>

<div class="center">
<div class="left_one">
    <ul id="tree" class="filetree">
            <c:forEach items="${areaList }" var="area">
               <li class="add_nodes" ><div style="display: none;color: black;">${area.mdLevel }</div><div style="display: none;color: black;">${area.mdAreaId }</div> <div style="display: none;">${area.areaLv }</div><a><span class="folder" onclick="addNode(this)">${area.mdStdname }</span></a>
               <ul id="folder21">
       
               </ul>
               </li>
              </c:forEach> 
    </ul>
</div>

<div class="rigth_one">


    <div id="dlg" class="easyui-dialog_s" style="width:600px;height:400px;padding:0px 0px;position:absolute; top: 400px; left: 800px;z-index: 999;background: rgb(222,222,222);display: none;"
         closed="true" buttons="#dlg-buttons">
        <div class="ftitle" style="padding-left: 200px;font-size: 25px">添加地址</div>
        <form id="fm" method="post" novalidate action="save_area">
            <div class="fitem" style="font-size: 16px">
                <label style="width: 110px">地址名称:</label>
                <input name="mdStdname" class="easyui-validatebox" required="true">
            </div>
            <!--div class="fitem">
                <label style="width: 110px">地址编号:</label>
                <input name="areaLv" class="easyui-validatebox" required="true" readonly="readonly">
            </div>
            <div class="fitem">
                <label style="width: 110px">地址等级:</label>
                <input name="mdLevel" readonly="readonly">
            </div-->
              <div class="fitem">
                <label style="width: 110px">上级地址:</label>
                <input name="parentName" class="easyui-validatebox" required="true">
            </div>
        </form>
        
      <div id="dlg-buttons" style="top: 200px;left: 300px" >
        <a href="#" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveUser()" >Save</a>
        <a href="#" class="easyui-linkbutton" iconCls="icon-cancel" onclick="closeUser()" >Cancel</a>
    </div>
        
    </div>

    <div class="" style="font-size: 20px;margin-left: 500px;margin-bottom: 5px;margin-top: 8px">系统地址管理</div>

    <table id="dg" title="My AREA" class="easyui-datagrid" style="width: 1000px;height:450px"
           url="select_area"
           toolbar="#toolbar" pagination="true"
           rownumbers="true" fitColumns="true" singleSelect="true">
        <thead>
        <tr>
            <th field="mdStdname" width="50">mdStdname</th>
            <th field="areaLv" width="50">areaLv</th>
            <th field="mdLevel" width="50">mdLevel</th>
        </tr>
        </thead>
    </table>
    <div id="toolbar">
        <a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newUser()">添加地址</a>
        <a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">编辑地址</a>
        <a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="removeUser()">删除地址</a>
    </div>

</div>
</div>
</body>
</html>