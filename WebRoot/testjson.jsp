<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户列表测试样例</title>
	
<link rel="stylesheet" type="text/css" href="jquery-easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="jquery-easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="/query-easyui/demo/demo.css">
<script type="text/javascript" src="scripts/jquery.min.js" ></script>
<script type="text/javascript" src="scripts/print.js" ></script>
<script type="text/javascript" src="jquery-easyui/jquery.easyui.min.js"></script>

<script type="text/javascript" src="scripts/datebox.js"></script>
<script type="text/javascript" src="jquery-easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="js/checkForm.js" ></script>
<script type="text/javascript" src="js/jquery.ztree.core.js" ></script>
</head>
<body class="easyui-layout">
	
	<div data-options="region:'center'" style="padding:7px;">
	
	<!--工具栏的div-->
	<div id="tb" style="padding:10px">
		<div style="margin-bottom:5px">
		<!--<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="createTousuRecord()">新建投诉记录</a> -->
		</div>
		<div class="zuhe_search" style="margin-left:1137px;">
			
			
	 name: <select class="easyui-combobox" id="sState" panelHeight="auto" style="width:100px">
				<!-- <option value="name"></option>
				<option value="" selected>默认全部password</option>
				<option value="872F3934E92545CEB224BCF65CA50E70">分子量</option>
				<option value="CB29EA320488472E9B5E23D60B0FFDF8">分配系数</option>
				<option value="E204DA7D0FBF4C3A9399B8758311935E">型号</option>
				<option value="9A5D88B4084649CBA11BAAEDA49407D2">可旋转键</option>
				<option value="91240DE63BD64AF7950896681BB85607">氢键受体</option>
				<option value="AA9DAE22F4AD4006A7A399C2A0C72FDB">其它</option> -->
				<option value="">空</option>
				<option value="test1">test1</option>
				<option value="test2">test2</option>

			</select> 
			
			<!-- 查询条件：<input class="easyui-combobox" id="sState" style="width:100px" id="sState"
									data-options="url:'XiaLaUserAction.action',
									method:'post',
									valueField:'id',
									textField:'value',
									panelHeight:'auto' "> -->
			password:<input class="easyui-textbox" id="sOrgName" style="width:100px" >
			<!-- <input id="SelectValue" class="easyui-textbox"/> -->
			<a href="#" class="easyui-linkbutton" iconCls="icon-search" onclick="doSearch()">搜索</a>
		</div>
	</div>
	
	<table class="easyui-datagrid" title="用户列表测试样例"  id="dg" style="width:700px;height:250px" data-options="singleSelect:true,collapsible:true,url:'listUser.action',method:'get',
	fitColumns:true,fit:true, pagination:true,rownumbers:true, pageSize : 10, beforePageText:'第',adterPageText:'页 共{page}页',pageList : [5, 10, 15, 20]"
            toolbar="#tb">
		<thead>
			<tr>
			    <th data-options="field:'ck',checkbox:true"></th>
				<th data-options="field:'id',width:80" align="center">ID</th>
				<th data-options="field:'name',width:100" align="center">Name</th>
				<th data-options="field:'password',width:80,align:'center'">Password</th>
			</tr>
		</thead>
	</table>
    </div>
	
</body>

<script type="text/JavaScript">
function doSearch() {
	//获取时间选择框的值
	$('#dg').datagrid('load', {
		sOrgName: $("#sOrgName").val(),
		sState: $("#sState").combobox('getValue')
	});
	
	/* alert("1"); */
	/* $('#shipcode').val("");//赋空值 
	$('#companyname').combobox('setValue','');//赋空值 
	$('#starttime').datebox('setValue','');//赋空值 
	$('#endtime').datebox('setValue',''); //赋空值 
	 */
}
</script>

</html>
