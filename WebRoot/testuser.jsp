<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<!doctype html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



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


<script type="text/javascript">
// String userName = request.getRemoteUser();
	$(document).ready(function() {
		headHtml("header_ccompass");
	});
</script>
<title>Ligands信息列表</title>
</head>
		<body class="easyui-layout">	
		<div id="header_ccompass"  position="fixed"> 
		</div>
<div data-options="region:'center'" style="padding:7px;">
	<!--工具栏的div-->
	<div id="tb" style="padding:10px">
		<div style="margin-bottom:25px">
			<!--<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="createTousuRecord()">新建投诉记录</a> -->
			<!-- <a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editTousuRecord()">修改投诉记录</a> -->
			<!--<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editTousuRecord()">修改投诉记录</a>-->
			<!--<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="deleteTousuRecord()">删除投诉记录</a>-->
		</div>
		<div class="zuhe_search" style="margin-left:330px;">
			<!--办结期限--起始时间: <input class="easyui-datebox"  data-options="formatter:ww4,parser:w4" id="tousus_time" missingMessage="请使用日期控件输入" style="width:110px"> -->
			<!--结束时间 :<input class="easyui-datebox" data-options="formatter:ww4,parser:w4" id="tousu_endtime" missingMessage="请使用日期控件输入" style="width:110px"> -->
			
			查询条件: <select class="easyui-combobox" id="tousu_source" panelHeight="auto"
				style="width:100px">
				<option value="" selected>所有信息</option>
				<option value="872F3934E92545CEB224BCF65CA50E70">分子量</option>
				<option value="CB29EA320488472E9B5E23D60B0FFDF8">分配系数</option>
				<option value="E204DA7D0FBF4C3A9399B8758311935E">型号</option>
				<option value="9A5D88B4084649CBA11BAAEDA49407D2">可旋转键</option>
				<option value="91240DE63BD64AF7950896681BB85607">氢键受体</option>
				<option value="AA9DAE22F4AD4006A7A399C2A0C72FDB">其它</option>

			</select> 
			<input id="SelectValue" class="easyui-textbox"/>
			<a href="#" class="easyui-linkbutton" iconCls="icon-search" onclick="doSearch()">搜索</a>
		</div>
	</div>

	
	<table class="easyui-datagrid" title="Ligands信息列表" id="dg"
		data-options="singleSelect:true,collapsible:true,url:'listUser.action',
           fitColumns:true,fit:true, pagination:true,rownumbers:true, pageSize : 10, beforePageText:'第',adterPageText:'页 共{page}页',pageList : [5, 10, 15, 20]" toolbar="#tb">
		<thead>
		     
			<tr>
				<th data-options="field:'ck',checkbox:true"></th>
				<!--显示单选框-->
				<th data-options="field:'id',width:10" align="center">ID</th>
				<th data-options="field:'name',width:10" align="center" >用户名</th>
				<th data-options="field:'password',width:10" align="center">密码</th>
<!-- 				<th data-options="field:'id',width:10" align="center">投诉记录id</th> -->
				<th data-options="field:'tousuplace',width:10" align="center">型号</th>
				<th data-options="field:'complianname',width:10" align="center">氢键供体</th>
				<th data-options="field:'sourcename',width:10" align="center">氢键受体</th>
				<th data-options="field:'typename',width:10" align="center">可旋转键</th>
				<!--<th
					data-options="field:'replytoususource',width:10,formatter:formatShow" align="center">是否回复投诉来源</th>
				<th
					data-options="field:'replytousuperson',width:10,formatter:formatShow" align="center">是否回复投诉人</th>
				<th
					data-options="field:'isreleasetask',width:10,formatter:formatShow" align="center">是否发布任务</th>-->
				<th data-options="field:'1',formatter:rowformater" , width="10" align="center">操作</th>
			</tr>
		</thead>
	</table>
</div>	
<div data-options="region:'south',border:false"  style="height:141px">	
			<div id="footer_ccompass">
			</div>
		</div>
</body>
<script type="text/JavaScript">
		function formatShow(value, row, index) {
			if (value == 1) {
				return "是";
			} else {
				return "否";
			}
		}
	</script>

<script type="text/javascript">
	//点击创建投诉记录按钮事件
	function createTousuRecord() {
		/* var row = $('#dg').datagrid('getSelected'); 
		var recordid=row.id; 留给创建投诉任务用*/
		window.location.href = "${pageContext.request.contextPath}/page/complain/shuruTouSu.jsp";

	}	
	
	function editTousuRecord(){
		var row = $('#dg').datagrid('getSelected'); 
		if (row){
        	window.location.href ="${pageContext.request.contextPath}/tousuRecord-detail.action?id="+row.id;
        }else{
    			$.messager.alert("操作提示", "请选择需要修改的数据行！","error"); 
    			return;
        }

	}
	
	function deleteTousuRecord(){
		var row = $('#dg').datagrid('getSelected'); 
			
		
		if (row){
			//判断该投诉记录是否已经发布任务
			if(row.isreleasetask==1){
				$.messager.alert("操作提示", "该投诉记录已经发布投诉任务，不可删除！","error"); 
			}else{
				 $.messager.confirm("操作提示", "您确定要删除该记录吗？", function (data) {
			            if (data) {
			            	/* window.location.href ="${pageContext.request.contextPath}/deleteTousuRecord.action?id="+row.id; */
			            	$.ajax({
			            		type:"post",
			            		url:"${pageContext.request.contextPath}/deleteTousuRecord.action",
			            		data:{id:row.id},
			            		datatype:"json",
			            		success:function(d){
				            		/* console.log("返回结果："+d);//d就是返回的数据 */
				            		$('#dg').datagrid('reload');	// reload the user data
			            		}
			            		});

			            	
			            }
			            else {
			                /* alert("取消"); */
			            }
				 });
			}
			
        }else{
        	$.messager.alert("操作提示", "请选择需要删除的数据行！","error");  
    			return;
        }
	}
	
	
	
</script>

<!--给【详情】增加链接-->
<script type="text/javascript">
	function rowformater(value, row, index) {
		return '<a href="#" onclick="getDetailLink(' + index + ')" >详情</a>';
		/* 这里的id参数有问题 */
	}
	/* 点击详情按钮之后的 */
	function getDetailLink(index) {
		var row = $('#dg').datagrid('getData').rows[index];
// 		alert(row.id);
		window.location.href = "${pageContext.request.contextPath}/ListTousuRecordById.action?id="+row.id;
	}
	
	// 点击搜索之后的
	function doSearch() {
		// 获取下啦菜单数据值
		/* alert($('#ceshi').textbox('getValue')); */
		//获取时间选择框的值
		$('#dg').datagrid('load', {
			//将tousu_subject
			tousu_source : $("#tousu_source").combobox('getValue'),
			 tousu_time : $('#tousus_time').datebox('getValue'),
			tousu_endtime : $('#tousu_endtime').datebox('getValue') 
		});
	}
</script>
<!-- 增加提醒的色块 -->


<script type="text/javascript">
//	计算的ceshi
function count(){  
    var rows = $('#dg').datagrid('getRows');  
    var total = 0;  
    for (var i = 0; i < rows.length; i++) {  
//      total += rows[i]['id'];
		total=rows[i]['id']-30;
		var isRen=rows[i]['replytoususource'];
		alert(isRen);
		
    }  
   
   }
	 	
//	 	计算日期,根据自定义条件增加相应的色块
		$('#dg').datagrid({   
		    	rowStyler: function(index,row){
		    	var rows = $('#dg').datagrid('getRows');
			for (var i = 0; i < rows.length; i++) {  
				total=rows[i]['id']-30;
				var date=rows[i]['finishitime'];
				var a=getDays(date);
//				  alert("计算："+a);
				rows[i]['t']=a;
		    } 
			if(row.replytoususource==0||row.replytousuperson==0||row.replytousuperson==null||row.replytoususource==null){
				/*  if (row.t>13&&row.t<26){
				        return 'background-color:#00BFFF;color:#fff;font-weight:bold;';
				        } */
				     if (row.t==0||row.t>0&&row.t<=5){
				        return 'background-color:yellow;color:#000;font-weight:bold;';
				        }
				     if(row.t<=0){
				     	return 'background-color:red;color:#fff;font-weight:bold;';
				     }
				
			}
		   
			}
		    
		});
		
		
//		计算日期的函数
 function getDays(strDateStart){
 	var day = new Date();  
    var year = day.getFullYear();// 获取年份  
    var month = day.getMonth()+1;// 获取月份，值在0--11之间  
    var days = day.getDate();// 获取每个月的第几天 
    	var datetime=year+"-"+month+"-"+days;
 	
 	
   var strSeparator = "-"; //日期分隔符
   var oDate1;
   var oDate2;
   var iDays;
   oDate1= strDateStart.split(strSeparator);
   oDate2= datetime.split(strSeparator);
   var strDateS = new Date(oDate1[0], oDate1[1]-1, oDate1[2]);
   var strDateE = new Date(oDate2[0], oDate2[1]-1, oDate2[2]);
   iDays = parseInt((strDateS - strDateE ) / 1000 / 60 / 60 /24);
   //把相差的毫秒数转换为天数
   return iDays ;
   
}
	</script>		


<style type="text/css">
.zuhe_search {
	float: right;
	display: block;
	margin-top: -30px;
}
 #footer_ccompass{
	position:fixed; 
	height: 25px;
} 
</style>
</html>

