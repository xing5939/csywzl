<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LigandsInfo</title>
	
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
<body class="easyui-layout">
	
	<div data-options="region:'center'" style="padding:7px;">
	
	<!--工具栏的div-->
	<div id="tb" style="padding:10px">
		<div style="margin-bottom:5px">
		<!-- <a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="testpage()">测试拿到页数相关</a> -->
		</div>
		<div class="zuhe_search" style="margin-left:1137px;">
			
			
	 <!-- reactivity: <select class="easyui-combobox" id="sState" panelHeight="auto" style="width:100px">
				
				<option value="">空</option>
				<option value="Anodyne">Anodyne</option>
				<option value="Mild">Mild</option>
				

			</select>  -->
			
			
			zincName:<input class="easyui-textbox" id="sOrgName" style="width:100px" >
			<a href="#" class="easyui-linkbutton" iconCls="icon-search" onclick="singleSearch()">搜索</a>
		</div>
	</div>
	
	<table class="easyui-datagrid" title="LigandsInfo"  id="dg" style="width:700px;height:250px" data-options="singleSelect:true,collapsible:true,url:'queryLigandsByZincid.action',method:'get',
	fitColumns:true,fit:true, pagination:true,rownumbers:true, pageSize : 10, beforePageText:'第',adterPageText:'页 共{page}页',pageList : [5, 10, 15, 20]"
            toolbar="#tb">
		<thead>
			<tr>
			    <th data-options="field:'ck',checkbox:true"></th>
				<th data-options="field:'zinc',width:80" align="center">zinc</th>
				<th data-options="field:'molecularweight',width:50" align="center">molecularweight</th>
				<th data-options="field:'partitioncoefficient',width:50,align:'center'">partitioncoefficient</th>
				<th data-options="field:'reactivity',width:50,align:'center'">reactivity</th>
				<th data-options="field:'purchasability',width:50,align:'center'">purchasability</th>
				<th data-options="field:'modeltype',width:50,align:'center'">modeltype</th>
				<th data-options="field:'generatedon',width:50,align:'center'">generatedon</th>
				<th colspan="2" data-options="field:'1',formatter:rowformater", width="10" align="center">操作</th>
			</tr>
		</thead>
	</table>
    </div>
	
</body>

<script type="text/JavaScript">


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

/* 因为显示List列表是分页显示，这个查询是一个单独的查询，不是从分页结果中的查询 */	 
 function singleSearch()
 {  
    $('#dg').datagrid('load', {
		sOrgName: $("#sOrgName").val(),
		/* sState: $("#sState").combobox('getValue') */
		/* queryLigandsByZincid.action?zincid=${dg.sOrgName} */
	}); 
 }
 
 function testpage(){
    var grid = $('#datagrid');  
    var options = grid.datagrid('getPager').data("pagination").options;  
    var curr = options.pageNumber;  
    var total = options.total;  
    var max = Math.ceil(total/options.pageSize); 
    alert(curr);
 }
	 
</script>

</html>