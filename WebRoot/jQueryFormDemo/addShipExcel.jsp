<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>上传船舶信息的Excel表</title>
<!--对jQuery库的引用-->
<script type="text/javascript" src="jQuery/jquery-1.10.2.js"></script>
<jsp:include page="../layout/script.jsp" />
<!--对jQuery.form插件的引用-->
<script type="text/javascript" src="jQueryformplugin/jquery.form.js"></script>
<!-- 上传附件的功能 -->
<script type="text/javascript">
// String userName = request.getRemoteUser();
	$(document).ready(function() {
		headHtml("header_ccompass");
	});
</script>
<script type="text/javascript">

  $(document).ready(function(e) {
	  //为表单添加Ajax的效果
	 /*
     $('#myform').ajaxForm(function() { 
                alert("谢谢您提交的留言！"); 
            }); 
    */
	
    var options = { 
//      target:        '#guest_info',//要显示返回内容的div元素的id号
        beforeSubmit:  showRequest,  //提交之前的回调函数
        success:       showResponse  //提交之后的回调函数

        //其他的可用的选项
        //url:       url         //覆盖了form的action属性
        //type:      type        //'get'或者是'post',覆盖form的method属性
        //dataType:  null        //'xml', 'script', or 'json' (依据服务器返回类型进行设置) 
        //clearForm: true        //在成功提交后清除所有的表单域内容
        //resetForm: true        //在成功提交后重置所有的表单域内容
         // $.ajax也能在这里进行设置，比如：
        //timeout:   3000 
    }; 
     //为表单关联Ajax提交方法
    $('#myform').ajaxForm(options); 		
});
//表单提交之前触发的事件
function showRequest(formData, jqForm, options) { 
	if(jQuery("input[type='file']").val()==""){
	    //未选择文件
	    alert("还没有选择文件");
	    return false;
	}else{
	    var queryString = $.param(formData); 
	    return true;
	}

/* alert(12121); */
	//添加图片名到
//	$("#imgname").value=imgname;
	//formData是一个数组，在这里使用$.param将其转换为一个字符串用于显示。
	//可以在这里对这个数组进行验证以判断传入服务器端的数据的准确性

    //显示查询字符串的内容
     /* alert('表单提交的数据如下: \n\n' + queryString); */ 
     //如果要避免表单被提交，可以在这里返回false
    
} 
 //表单提交之后触发的事件
function showResponse(responseText, statusText, xhr, $form)  {
 }
 
</script>
<script type="text/javascript">
/* $(document).ready(function(){
	$("#LoadBtn").click(function(){
		if(jQuery("input[type='file']").val()==""){
		    //未选择文件
		    alert("还没有选择文件");
		}else{
			
		}
	});
}); */
</script>

</head>
<style type="text/css">
body,td,th {
	font-size: 9pt;
}
</style>
</head>
<style type="text/css">
	#guest_info{
		background: fuchsia;
		height: 30px;
		width: 40px;
	}
	#guest_info img{
		max-height: 100%;
		max-width: 100%;
	}
</style>

<body>
 <div id="header_ccompass"> 
</div>
<div style="height:560px;width:auto;padding:10px;">
			<div class="easyui-draggable" data-options="handle:'title'" style="width:100%;height:450px;background:#fafafa;border:1px solid #ccc;margin-top:10px">
				<div id="title" style="padding:5px;background:#ccc;color:#fff">导入船舶Excel</div>
					<div class="demo-info">
					<div class="demo-tip icon-tip"></div>
								<div ><h2>使用Excel导入船舶信息步骤：</h2></div>
								<div id="guocheng">
										<ol>
											<li>点击链接，获取用于导入船舶信息的Excel模板。<a id="Excel" href="${pageContext.request.contextPath}/ExportExcel_ship.action" class="easyui-linkbutton" data-options="iconCls:'icon-save'">下载Excel模板表</a></li>
											<li>填写Excel表格的规则：</li>
											<ul><li>(1).参照第一行示例数据填写，此行实例数据不可删除或者修改，从第二行开始填写真实的数据。</li>
													<li>(2).日期要按示例指定格式填写,例如：2016-11-06。</li>
													<li>(3).公司名称一定要准确，若查询不到此公司，则此行数据插入失败。</li>
													<li>(4).指定的数据项不能空缺。</li>
													
											</ul>
											<li>选择好需要导入的Excel后点击确认导入按钮。</li>
										</ol>
								</div>
					</div>
					
					<div id="exportExcel"><a href="${pageContext.request.contextPath}/ExportExcel_ship.action"><img src="${pageContext.request.contextPath}/jQueryFormDemo/img/excel.png" height="35px"/><span>下载Excel模板表</span></a></div>
				
					<div id="UplodForm">
						<form action="${pageContext.request.contextPath}/readExcel_ship.action"
						  name="myform" id="myform" method="post" enctype="multipart/form-data">
						<table>
					      <tbody>
					        <tr>
					        	<td></td>
					          <a href="javascript:void(0);" class="btn_addPic"><span><em>+</em>选择要导入的Excel</span>
					          <input type="file" name="upload" id="img"  onchange="loadImageFile()" tabindex="3"  size="3" name="myPhoto" class="filePrew"></a>
					          
					          </td>
					        </tr>
					      </tbody>
					    </table>
					    <p><div id="LoadBtn"><input id="Btn" type="submit" value="确认导入" /></div></p>
					</form>
				</div>
	</div>
			
		
	</div>
	<div id="footer_ccompass">
		<p class="right_ccompass"><a href="#">联系我们</a><span>&nbsp;</span><a class="a_link" href="#">关于我们</a><span>&nbsp;</span><a class="a_link" href="#">隐私权保护</a><span>&nbsp;</span></p>
		<p class="center_ccompass" ><a class="a_link" href="/" target="_blank" title="">IPC备案</a></p>        
		<div class="cl">&nbsp;</div>
	</div>
<style type="text/css">
	#UplodForm{
		border:3px;
		padding:10px;
		 background: wheat;
		width: 350px;
		height: 70px;
		float:left;
		margin-left:100px;
		margin-top:30px;
	}
	
a{text-decoration:none;}
.btn_addPic{
display: inline-block;
position: relative;
height: 39px;
overflow: hidden;
padding: 0 15px;
border: 0px solid #EBEBEB;
border-radius: 4px;
background: none repeat scroll 0 0 #F3F3F3;
color: #999999;
font: 14px/39px 'MicroSoft Yahei','Simhei';
cursor: pointer;
text-align: center;
}
.btn_addPic em {
	border-radius: 5px;
background:url(../img/add.ico);
background-repeat: no-repeat;
display: inline-block;
width: 18px;
height: 18px;
overflow: hidden;
margin: 10px 5px 10px 0;
line-height: 20em;
vertical-align: middle;
}
/*鼠标悬浮时图标变换*/
.btn_addPic:hover em{
	background:url(../img/add3.ico);
	background-repeat: no-repeat;
/*background-position:-19px 0;*/
}
.filePrew {
display: block;
position: absolute;
top: 0;
left: 0;
width: 140px;
height: 39px;
cursor: pointer;
opacity: 0;
filter:alpha(opacity:0.5 );
}
#myform{
	margin-top:13px;
}
#LoadBtn{
	margin-left: 210px;
	margin-top:-38px;
	
}
#Btn{
	padding: 4px;
	width: 80px;
	height: 30px;
	font-size: 15px;
	border: 1px;
	color: black;
	border-radius: 10px;
}
#Btn:hover{
	color: black;
	background:#E6E6FA;
	
}
	
</style>
<style type="text/css">
#exportExcel{
	margin-top:30px;
	background:wheat;
	display:block;
	height:70px;
	width:150px;
	border:5px;
	float:left;
	padding:10px;
	margin-left:60px;
}
#exportExcel img{
	/* display:block; */
	margin-left:60px;
}
#exportExcel span{
	background:wheat;
	display:block;
	height:35px;
	line-height: 35px;/*字体垂直居中*/
	text-align:center ;/*字体水平居中*/
	
}
#guocheng{
	/*background:red;*/
	margin-left:50px;
	font-size: 23px;
}
ol li{
	font-size: 16px;
}


</style>
</body>
</html>
