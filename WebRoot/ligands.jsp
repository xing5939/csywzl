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
		<div class="zuhe_search" style="margin-left:1000px;">
			
			
	 reactivity: <select class="easyui-combobox" id="sState" panelHeight="auto" style="width:100px">
				
				<option value="">空</option>
				<option value="Anodyne">Anodyne</option>
				<option value="Mild">Mild</option>
				

			</select> 
			
			
			zincName:<input class="easyui-textbox" id="sOrgName" style="width:100px" >
			<a href="#" class="easyui-linkbutton" iconCls="icon-search" onclick="doSearch()">搜索</a>
		</div>
	</div>
	
	<table class="easyui-datagrid" title="LigandsInfo"  id="dg" style="width:700px;height:250px" data-options="singleSelect:true,collapsible:true,url:'ListLigandsAction',method:'get',
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
				<label>zinc:</label>
				<input class="easyui-textbox" data-options="field:'zinc',width:180 " id="zinc" readonly="readonly" required="true">
			</div>
			<div class="fitem">
				<label>mol2name:</label>
				<input data-options="field:'mol2name',width:180" id="mol2name" readonly="readonly" required="true">
			</div>
			<div class="fitem">
				<label>protomerTranche:</label>
				<input data-options="field:'protomerTranche',width:180" id="protomerTranche" readonly="readonly" required="true">
			</div>
			<div class="fitem">
				<label>protomers:</label>
				<input data-options="field:'protomers',width:180" id="protomers" readonly="readonly" required="true">
			</div>
			<div class="fitem">
				<label>molecularweight:</label>
				<input data-options="field:'molecularweight',width:180" id="molecularweight" readonly="readonly" required="true">
			</div>
			<div class="fitem">
				<label>partitioncoefficient:</label>
				<input data-options="field:'partitioncoefficient',width:180" id="partitioncoefficient" readonly="readonly" required="true">
			</div>
			<div class="fitem">
				<label>reactivity:</label>
				<input data-options="field:'reactivity',width:180" id="reactivity" readonly="readonly" required="true">
			</div>
			<div class="fitem">
				<label>purchasability:</label>
				<input data-options="field:'purchasability',width:180" id="purchasability" readonly="readonly" required="true">
			</div>
			<div class="fitem">
				<label>modeltype:</label>
				<input data-options="field:'modeltype',width:180" id="modeltype" readonly="readonly" required="true">
			</div>
			<div class="fitem">
				<label>generatedon:</label>
				<input data-options="field:'generatedon',width:180" id="generatedon" readonly="readonly" required="true">
			</div>
			<div class="fitem">
				<label>psa:</label>
				<input data-options="field:'psa',width:180" id="psa" readonly="readonly" required="true">
			</div>
			<div class="fitem">
				<label>smiles:</label>
				<input data-options="field:'smiles',width:180" id="smiles" readonly="readonly" required="true">
			</div>
			<div class="fitem">
				<label>inChI:</label>
				<input data-options="field:'inChI',width:180" id="inChI" readonly="readonly" required="true">
			</div>
			<div class="fitem">
				<label>inChIkey:</label>
				<input data-options="field:'inChIkey',width:180" id="inChIkey" readonly="readonly" required="true">
			</div>
			<div class="fitem">
				<label>db2name:</label>
				<input data-options="field:'db2name',width:180" id="db2name" readonly="readonly" required="true">
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
              $("#zinc").val(row.zinc);   //这里能取到不显示的那些数据吗？
              $("#mol2name").val(row.mol2name);
              $("#protomerTranche").val(row.protomerTranche);
              $("#protomers").val(row.protomers);
              $("#molecularweight").val(row.molecularweight);
              $("#partitioncoefficient").val(row.partitioncoefficient);
              $("#reactivity").val(row.reactivity);
              $("#purchasability").val(row.purchasability);
              $("#modeltype").val(row.modeltype);
              $("#generatedon").val(row.generatedon);
              $("#psa").val(row.psa);
              $("#smiles").val(row.smiles);
              $("#inChI").val(row.inChI);
              $("#inChIkey").val(row.inChIkey);
              $("#db2name").val(row.db2name);
              $('#fm').form('load',row); //刷新表单。这里刷新表单会不会导致数据丢失？
              }
 }
	 
</script>

</html>