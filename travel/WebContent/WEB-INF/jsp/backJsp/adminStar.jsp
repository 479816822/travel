<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="keywords" content="jquery,ui,easy,easyui,web">
    <meta name="description" content="easyui help you build your web page easily!">
    <title>jQuery EasyUI CRUD Demo</title>
    <link rel="stylesheet" type="text/css" href="../../../pluing/easyui/es/easyui.css">
    <link rel="stylesheet" type="text/css" href="../../../pluing/easyui/es/demo.css">
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
    <script type="text/javascript" src="../../../pluing/easyui/es/jquery-1.6.js"></script>
    <script type="text/javascript" src="../../../pluing/easyui/es/min.js"></script>
    <script type="text/javascript">
        var url;
        function newUser(){
            $('#dlg').dialog('open').dialog('setTitle','New User');
            $('#fm').form('clear');
            url = 'save_user.php';
        }
        function editUser(){
            var row = $('#dg').datagrid('getSelected');
            if (row){
                $('#dlg').dialog('open').dialog('setTitle','Edit User');
                $('#fm').form('load',row);
                url = 'update_user.php?id='+row.id;
            }
        }
        function saveUser(){
            $('#fm').form('submit',{
                url: url,
                onSubmit: function(){
                    return $(this).form('validate');
                },
                success: function(result){
                    var result = eval('('+result+')');
                    if (result.success){
                        $('#dlg').dialog('close');		// close the dialog
                        $('#dg').datagrid('reload');	// reload the user data
                    } else {
                        $.messager.show({
                            title: 'Error',
                            msg: result.msg
                        });
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
<body>

<div class="" style="font-size: 20px;margin-left: 500px;margin-bottom: 5px">系统用户管理</div>

<table id="dg" title="My Users" class="easyui-datagrid" style="width:1200px;height:500px"
       url="get_users.php"
       toolbar="#toolbar" pagination="true"
       rownumbers="true" fitColumns="true" singleSelect="true">
    <thead>
    <tr>
        <th field="firstname" width="50">First Name</th>
        <th field="lastname" width="50">Last Name</th>
        <th field="phone" width="50">Phone</th>
        <th field="email" width="50">Email</th>
    </tr>
    </thead>
</table>
<div id="toolbar">
    <a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newUser()">添加用户</a>
    <a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">编辑用户</a>
    <a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="removeUser()">删除用户</a>
</div>

<div id="dlg" class="easyui-dialog" style="width:400px;height:280px;padding:10px 20px"
     closed="true" buttons="#dlg-buttons">
    <div class="ftitle">User Information</div>
    <form id="fm" method="post" novalidate>
        <div class="fitem">
            <label>First Name:</label>
            <input name="firstname" class="easyui-validatebox" required="true">
        </div>
        <div class="fitem">
            <label>Last Name:</label>
            <input name="lastname" class="easyui-validatebox" required="true">
        </div>
        <div class="fitem">
            <label>Phone:</label>
            <input name="phone">
        </div>
        <div class="fitem">
            <label>Email:</label>
            <input name="email" class="easyui-validatebox" validType="email">
        </div>
    </form>
</div>
<div id="dlg-buttons">
    <a href="#" class="easyui-linkbutton" iconCls="icon-ok" onclick="saveUser()">Save</a>
    <a href="#" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">Cancel</a>
</div>
</body>
</html>