<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<jsp:include page="../../layout/script.jsp" />
</head>
</head>
<script type="text/javascript">
// String userName = request.getRemoteUser();
	$(document).ready(function() {
		headHtml("header_ccompass");
	});
</script>
<body>
<div id="header_ccompass"> 
</div>
<div class="easyui-panel" data-options="url:'${pageContext.request.contextPath}/createDayTask.action'" title="创建日常任务" style="width:auto"
	style="text-align:center;align:center;">
			<div style="padding:10px 60px 20px 60px">
		    <form id="ff" method="post" action="${pageContext.request.contextPath}/createDayTask.action">
		    	<table cellpadding="5">
		    		<tr>
		    			<td>任务名称:</td>
		    			<td><input class="easyui-textbox" type="text" name="model.taskname" data-options="required:true"></input></td>
			    		<td>任务类型:</td>
								<td><input class="easyui-combobox"
									name="model.taskTypeid"
									data-options="url:'${pageContext.request.contextPath}/listTaskType.action',
										method:'post',
										valueField:'id',
										textField:'typename',
										panelHeight:'auto'">
								</td>
						<td>任务发布者:</td>
		    			<td><input class="easyui-textbox" type="text" name="model.taskpubperson" data-options="required:true"></input></td>
								
								
		    		</tr>
		    		<tr>
		    			<td>任务执行部门:</td>
								<td id="zhifa">
									<label><input type="checkbox" name="dadui" class="check" id="zhi"/>执法大队</label>
								</td>
		    			
		    			<td id="">
							
						</td>
		    			
		    			<td id="">
									<label><input type="checkbox" name="dadui" class="check" id="gang"/>港政处</label>
						</td>
		    			
		    			<td></td>
		    			<td id="">
									<label><input type="checkbox" name="dadui" class="check" id="hang"/>航政处</label>
						</td>
		    		</tr>
		    		<tr>
		    			<td></td>
		    			<td>
		    				<div class="c" id="da_div">
		    				<!-- 将选择执行部门用，拼接起来用隐藏表单提交 -->
		    				 <input name="daduiDepart" class="easyui-textbox" type="hidden" id="daduiDepart" value=""></input>
							<input class="easyui-combobox" name="dDepart" class="da" id="dadui" data-options="
									url:'http://localhost:8080/workflow/listPersonDepart.action',
									method:'post',
									valueField:'id',
									textField:'name',
									multiple:true,
									panelHeight:'auto'
									">
							</div>
		    			</td>
		    			<td></td>
		    			<td>
		    				<div class="c" id="gang_div">
		    				<!-- 将选择执行部门用，拼接起来用隐藏表单提交 -->
		    				<input name="gangPerson" class="easyui-textbox" type="hidden" id="gangPerson" value=""></input>
							<input class="easyui-combobox" name="gPerson" class="da" id="gzc" data-options="
									url:'http://localhost:8080/workflow/listDayTaskGangZC.action',
									method:'post',
									valueField:'id',
									textField:'name',
									multiple:true,
									panelHeight:'auto'
									">
							</div>
		    			</td>
						<td></td>
		    			<td>
		    				<div class="c" id="hang_div">
		    				<!-- 将选择执行部门用，拼接起来用隐藏表单提交 -->
		    				<input name="hangPerson" class="easyui-textbox" type="hidden" id="hangPerson" value=""></input> 
							<input class="easyui-combobox" name="zhengPerson" id="hzc" class="da" data-options="
									url:'http://localhost:8080/workflow/listDayTaskHangZC.action',
									method:'post',
									valueField:'id',
									textField:'name',
									multiple:true,
									panelHeight:'auto'
									">
							</div>
		    			</td>
		    		</tr>
		    		<tr>
		    			<td>带队领导:</td>
		    			<td><input class="easyui-textbox" type="text" name="model.led" data-options="required:true"></input></td>
		    			<td>任务负责人:</td>
		    			<td>
		    				<select id="state" class="easyui-combobox" name="model.taskleader" style="width:150px;" data-options=" panelHeight:'auto'" >
								<option value="大队长">大队长</option>
								<option value="副大队长">副大队长</option>
							</select>
		    			</td>
		    			<td>任务地点:</td>
		    			
		    				<td><input class="easyui-combobox" name="model.taskSiteid"
									data-options="url:'${pageContext.request.contextPath}/listSite.action',
									method:'post',
									valueField:'id',
									textField:'placename',
									panelHeight:'250' ">
								</td> 
		    			
		    		</tr>
		    		<tr>
		    			<td style="display: block; margin-top: 0px;background: ;">任务内容:</td>
		    			
		    			<td colspan="5"><textarea name="model.taskcontent" data-options="multiline:true" style="width: 700px;height: 80px;"></textarea>
		    			
		    		</tr>
		    		<!--隐藏 附件的id字符串 -->
		    		<input name="WfFilesId" class="easyui-textbox" type="hidden" id="fid" value="ded"></input>	    		
		    	</table>
		    	<div id="fujian">
		    			<iframe id="iframeId" frameborder="0" scrolling="no" src="${pageContext.request.contextPath}/jQueryFormDemo/guest_form.jsp" align="center" width="830px" height="170px" border="0px"></iframe>
		        </div>
		    </form>
		     <div  id="button">
		    	<ul>
		    		
		    		<li>	<a  class="easyui-linkbutton" onclick="submitForm()">发布任务</a></li>
		    		<li> 	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">取消</a></li>
		    		<!-- <li> 	<a href="javascript:void(0)" class="easyui-linkbutton" onclick="a()">获取附件id</a></li> -->
		    	</ul>
		    
		    </div>
		     </div>
		      </div>

</div>
<div id="footer_ccompass">
</div>
	
	
	<style type="text/css">
		#fujian{
		
		/*height: 120px;*/
		overflow: hidden;
		border: 0px;
		
			
		}
		/*#fujian ul{
		list-style-type: none;

		}
		#fujian li{
			float: left;
		}*/
		input{
			width: 150px;
			height: 20px;
		}
		#ff{
			margin-left:200px;
		}
		#button{
			/*background: firebrick;*/
			float: right;
			margin-right: 250px;
			margin-top: 50px;
		}
		#button ul{
			list-style-type: none;

		}
		/* .da_div , .hang_div, .gang_div{
			opacity:0px;
		} */
		#button ul li{
			float: left;
			padding: 10px;
		}
		#iframeId{
			border-radius: 5px;
		}
		.check{
		
		padding:0px;
		height:30px;
		width:20px;
		}
		td{
			padding-top:5px;
			width:100px;
			background:whitesmoke;
		}
	</style>
<!-- 点击发布任务相关的js、 -->	
	<script>
		function submitForm(){
			var Fid=document.getElementById("iframeId").contentWindow.document.getElementById("fileId").value;
			var dadui = $("#dadui").combobox('getValues');
			document.getElementById("daduiDepart").value=dadui;
			var gzc = $("#gzc").combobox('getValues');
			/* alert("港政处"+gzc);  */
			document.getElementById("gangPerson").value=gzc;
			/* alert(121); */
			var hzc = $("#hzc").combobox('getValues');
			/* alert("航政处"+hzc); */
			document.getElementById("hangPerson").value=hzc;
			document.getElementById("fid").value=Fid;
			$('#ff').form('submit');
			
		  	window.location.href="${pageContext.request.contextPath}/page/daytask/AllDailyTaskList.jsp"; 
		}
		function clearForm(){
			$('#ff').form('clear');
		}
	</script>
<script type="text/javascript">
 function myformatter(date){
 var y = date.getFullYear();
var m = date.getMonth()+1;
var d = date.getDate();
 return y+'-'+(m<10?('0'+m):m)+'-'+(d<10?('0'+d):d);
 }
 function myparser(s){
 if (!s) return new Date();
 var ss = (s.split('-'));
 var y = parseInt(ss[0],10);
 var m = parseInt(ss[1],10);
 var d = parseInt(ss[2],10);
if (!isNaN(y) && !isNaN(m) && !isNaN(d)){
 return new Date(y,m-1,d);
}else{
 return new Date();
 }
 }
 </script>
 <!-- 选择执行部门的js -->
 <script>
 /* 由于js的加载出现问题，暂时注解掉下面的 */
	 		$(document).ready(function() {
				
				$(".c").css("opacity", "0.2");
				$('#dadui').combobox('disable');
				$('#gzc').combobox('disable');
				$('#hzc').combobox('disable');
				$("#zhi").click(function() {
					if($(this).is(':checked')) {
//						选中状态
						$("#da_div").css("opacity", "1");
						$('#dadui').combobox('enable');
						
						
					} else {
//						未选中状态
						$("#da_div").css("opacity", "0.2");
						$('#dadui').combobox('setValues',"");
						$('#dadui').combobox('disable');
					}

				});
				$("#gang").click(function() {
					if($(this).is(':checked')) {
//						选中状态
						$("#gang_div").css("opacity", "1");
						$('#gzc').combobox('enable');
						
					} else {
//						未选中状态
						$("#gang_div").css("opacity", "0.2");
						$('#gzc').combobox('setValues',"");
						$('#gzc').combobox('disable');
					}
				});
					$("#hang").click(function() {
						if($(this).is(':checked')) {
//							选中状态
							$("#hang_div").css("opacity", "1");
							$('#hzc').combobox('enable');
							
							
						} else {
//							未选中状态
							$("#hang_div").css("opacity", "0.2");
							$('#hzc').combobox('setValues',"");
							$('#hzc').combobox('disable');
						}

					});

				});

		</script>
 <style type="text/css">
 	table td{
 		/*margin-left: 500px;*/
 		padding-left:10px;
 	}
 	
 </style>
</body>
	

</html>

