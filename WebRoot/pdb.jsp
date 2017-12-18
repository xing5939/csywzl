<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PdbInfo</title>
	
<link rel="stylesheet" type="text/css" href="jquery-easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="jquery-easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="jquery-easyui/demo/demo.css">
<script type="text/javascript" src="scripts/jquery.min.js" ></script>
<script type="text/javascript" src="scripts/print.js" ></script>
<script type="text/javascript" src="jquery-easyui/jquery.easyui.min.js"></script>

<script type="text/javascript" src="scripts/datebox.js"></script>
<script type="text/javascript" src="jquery-easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="js/checkForm.js" ></script>
<script type="text/javascript" src="js/jquery.ztree.core.js" ></script>
</head>
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
<body class="easyui-layout">
	
	<div data-options="region:'center'" style="padding:7px;">
	
	<!--工具栏的div-->
	<div id="tb" style="padding:10px">
		<div style="margin-bottom:5px">
		<!--<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="createTousuRecord()">新建投诉记录</a> -->
		</div>
		<div class="zuhe_search" style="margin-left:1200px;">
			pdbid:<input class="easyui-textbox" id="sOrgName" style="width:100px" >
			<a href="#" class="easyui-linkbutton" iconCls="icon-search" onclick="doSearch()">搜索</a>
		</div>
	</div>
	
	<table class="easyui-datagrid" title="PdbInfo"  id="dg" style="width:700px;height:250px" data-options="singleSelect:true,collapsible:true,url:'ListPdbAction',method:'get',
	fitColumns:true,fit:true, pagination:true,rownumbers:true, pageSize : 10, beforePageText:'第',adterPageText:'页 共{page}页',pageList : [5, 10, 15, 20]"
            toolbar="#tb">
		<thead>
			<tr>
			    <th data-options="field:'ck',checkbox:true"></th>
				<th data-options="field:'pdbid',width:80" align="center">pdbid</th>
				<th data-options="field:'classfication',width:50" align="center">classfication</th>
				<th data-options="field:'deposited',width:50,align:'center'">deposited</th>
				<th data-options="field:'released',width:50,align:'center'">released</th>
				<th data-options="field:'depositionauthor',width:50,align:'center'">Deposition author(s)</th>
				<th data-options="field:'organism',width:50,align:'center'">organism</th>
				<th colspan="2" data-options="field:'1',formatter:rowformater", width="10" align="center">操作</th>
			</tr>
		</thead>
	</table>
    </div>
	
	 <!-- 弹出详细信息开始 -->
	<div id="dlg" class="easyui-dialog" style="width:420px;height:320px;padding:10px 20px"
			closed="true" buttons="#dlg-buttons">
			<div class="demo-info">
				<div class="demo-tip icon-tip"></div>
				<div>请一定先勾选需要查看的数据行之后，再查看该详情！</div>
			</div>
		<div class="ftitle"></div>
		<form id="fm" method="post">
			<div class="fitem">
				<label>pdbid:</label>
				<input class="easyui-textbox" data-options="field:'pdbid',width:180 " id="pdbid" readonly="readonly" required="true">
			</div>
			<div class="fitem">
				<label>classfication:</label>
				<input data-options="field:'classfication',width:180" id="classfication" readonly="readonly" required="true">
			</div>
			<div class="fitem">
				<label>deposited:</label>
				<input data-options="field:'deposited',width:180" id="deposited" readonly="readonly" required="true">
			</div>
			<div class="fitem">
				<label>released:</label>
				<input data-options="field:'released',width:180" id="released" readonly="readonly" required="true">
			</div>
			<div class="fitem">
				<label>depositionauthor:</label>
				<input data-options="field:'depositionauthor',width:180" id="depositionauthor" readonly="readonly" required="true">
			</div>
			<div class="fitem">
				<label>organism:</label>
				<input data-options="field:'organism',width:180" id="organism" readonly="readonly" required="true">
			</div>
		</form>
	</div>
	<div id="dlg-buttons">
		<a  class="easyui-linkbutton" iconCls="icon-ok" onclick="javascript:$('#dlg').dialog('close')">确定</a>
		<!-- <a  class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')">取消</a> -->
	</div>
	<!-- 弹出详细信息结束 -->
	
</body>

<script type="text/JavaScript">
function doSearch() {
	//获取时间选择框的值
	$('#dg').datagrid('load', {
		sOrgName: $("#sOrgName").val()
		
	});
	
	/* alert("1"); */
	/* $('#shipcode').val("");//赋空值 
	$('#companyname').combobox('setValue','');//赋空值 
	$('#starttime').datebox('setValue','');//赋空值 
	$('#endtime').datebox('setValue',''); //赋空值 
	 */
}
 
 /* 点击详情 */
 function rowformater(value,row,index)
 {
	return '<a href="#" onclick="getDetailLink('+index+')" >详情</a>';
}
 /* 点击详情 */
 function getDetailLink(index){
	   	var row = $('#dg').datagrid('getData').rows[index];
	   	/* 以后改的时候加上window.location.href="${pageContext.request.contextPath}/listDayTaskByTaskId.action?id="+row.id; */
	 } 

 /* rowformater显示详情 */
 function rowformater(value,row,index)
 {  
	return '<a href="#" onclick="showDetails(' + index + ')" >详情</a>';
	
 }
 /* 显示详情  */
 function showDetails(index)
 {  
 
    var row = $('#dg').datagrid('getSelected');//适用于单选
    if(row==null){
              $.messager.alert("操作提示", "请您先勾选需要查看的数据行！","info");//必须先选取数据行，不能直接点击详情。否则会有缓存影响数据读取 *
    }else     {
              $('#dlg').dialog('open').dialog('setTitle','显示详细信息');//这意味着需要写一个dlg
              $("#pdbid").val(row.pdbid);   //这里能取到不显示的那些数据吗？
              $("#classfication").val(row.classfication);
              $("#deposited").val(row.deposited);
              $("#released").val(row.released);
              $("#depositionauthor").val(row.depositionauthor);
              $("#organism").val(row.organism);
              $('#fm').form('load',row); //刷新表单。这里刷新表单会不会导致数据丢失？
              }
 }
	 
</script>

</html>