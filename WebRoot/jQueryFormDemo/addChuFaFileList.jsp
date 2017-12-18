<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>为处罚的事件上传后续的处罚附件</title>
<!--对jQuery库的引用-->
<script type="text/javascript" src="jQuery/jquery-1.10.2.js"></script>
<!--对jQuery.form插件的引用-->
<script type="text/javascript" src="jQueryformplugin/jquery.form.js"></script>
<!-- 显示已经存在的附件列表 -->
<script type="text/javascript">
		$(document).ready(function() {
			/* 从iframe的父类窗口中读取任务id */
			 var dailyEventId = window.parent.document.getElementById("dailyEventId").value;
		  	 /* alert("获取的投诉任务ID"+tousuTaskId); */ 

				$.post(
					"${pageContext.request.contextPath}/getDayTaskEventFiles.action",{id:dailyEventId},
					function(data,status){
						//返回的数据格式为JSON数组
//						alert("调用接口返回的状态："+status);
						var fileInfo = jQuery.parseJSON(data);
						for(var i=0;i<=fileInfo.length;i++){
							/* 获取上传文件名 */
							var file=fileInfo[i].filename;
							/* 截取文件后缀名 */
							 var fileType=file.substring(file.lastIndexOf(".")+1);
//							alert(fileInfo[i].id);
							/* $("<li><img src='${pageContext.request.contextPath}/upload/"+fileInfo[i].savefilename+"' width='50px' height='50px'><span>"+fileInfo[i].filename+"</span><a id href='http://localhost:8080/workflow/download.action?filename="+fileInfo[i].savefilename+"&&savedname="+fileInfo[i].filename+"'>下载</a></li>").appendTo("ul"); */
							 if(fileType=="docx"||fileType=="doc"){
									/* console.log("Word文档类型"); */
									$("<li><img src='${pageContext.request.contextPath}/jQueryFormDemo/img/docx.png' width='50px' height='50px'><span id='FJfilename'>"+fileInfo[i].filename+"</span><a id href='${pageContext.request.contextPath}/download.action?filename="+fileInfo[i].savefilename+"&&savedname="+fileInfo[i].filename+"'>下载</a></li>").appendTo("ul");
								}else if(fileType=="xlsx"||fileType=="xls"){
									/* console.log("Word文档类型"); */
									$("<li><img src='${pageContext.request.contextPath}/jQueryFormDemo/img/excel.png' width='50px' height='50px'><span id='FJfilename'>"+fileInfo[i].filename+"</span><a id href='${pageContext.request.contextPath}/download.action?filename="+fileInfo[i].savefilename+"&&savedname="+fileInfo[i].filename+"'>下载</a></li>").appendTo("ul");
								}else if(fileType=="jpg"||fileType=="jpeg"||fileType=="png"||fileType=="gif"||fileType=="bmp"||fileType=="tif"||fileType=="JPG"){
									/* console.log("图片类型"); */
									$("<li><img src='${pageContext.request.contextPath}/upload/"+fileInfo[i].savefilename+"' width='50px' height='50px' ><span id='FJfilename'>"+fileInfo[i].filename+"</span><a id href='${pageContext.request.contextPath}/download.action?filename="+fileInfo[i].savefilename+"&&savedname="+fileInfo[i].filename+"'>下载</a></li>").appendTo("ul");
								}else if(fileType=="mp3"||fileType=="MP3"||fileType=="wav"||fileType=="amr"){
									/* console.log("音频"); */
									$("<li><img src='${pageContext.request.contextPath}/jQueryFormDemo/img/yinpin.png' width='50px' height='50px'><span id='FJfilename'>"+fileInfo[i].filename+"</span><a id href='${pageContext.request.contextPath}/download.action?filename="+fileInfo[i].savefilename+"&&savedname="+fileInfo[i].filename+"'>下载</a></li>").appendTo("ul");
							
								}else if(fileType=="rar"||fileType=="zip"){
									/* console.log("压缩包"); */
									$("<li><img src='${pageContext.request.contextPath}/jQueryFormDemo/img/rar.png' width='50px' height='50px'><span id='FJfilename'>"+fileInfo[i].filename+"</span><a id href='${pageContext.request.contextPath}/download.action?filename="+fileInfo[i].savefilename+"&&savedname="+fileInfo[i].filename+"'>下载</a></li>").appendTo("ul");
								}else{
									/* console.log("其他未知类型！！") */
									$("<li><img src='${pageContext.request.contextPath}/jQueryFormDemo/img/other.png' width='50px' height='50px'><span id='FJfilename'>"+fileInfo[i].filename+"</span><a id href='${pageContext.request.contextPath}/download.action?filename="+fileInfo[i].savefilename+"&&savedname="+fileInfo[i].filename+"'>下载</a></li>").appendTo("ul");
								}
							
							
						}
					}
				)
			});
			
	</script>

<!-- 上传附件的功能 -->
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

	//添加图片名到
//	$("#imgname").value=imgname;
	//formData是一个数组，在这里使用$.param将其转换为一个字符串用于显示。
	//可以在这里对这个数组进行验证以判断传入服务器端的数据的准确性
    var queryString = $.param(formData); 
    //显示查询字符串的内容
     /* alert('表单提交的数据如下: \n\n' + queryString); */ 
     //如果要避免表单被提交，可以在这里返回false
    return true; 
} 
 //表单提交之后触发的事件
function showResponse(responseText, statusText, xhr, $form)  {
		/* 获取提交附件input的文件信息 */
		 var imgname= $("#img").val();
			//不同的浏览器提交的文件路径格式不一样，有的会带上路径，所以需要截取
			var imgfilename=imgname.substring(imgname.lastIndexOf("\\")+1);
		/* alert("文件名字："+imgname); */
		/* 获取文件的后缀 */
		 var fileType=imgfilename.substring(imgfilename.lastIndexOf(".")+1);
	/* alert("文件名字："+imgname); */
	//	将返回的标准JSON字符串转化为JavaScript对象
	var fileInfo = jQuery.parseJSON(responseText);
	var id=fileInfo.files_id;
	/* alert('状态: ' + statusText + '\n\n上传flag: \n' + fileInfo.flag +
        '\n\n在div元素中已经显示了这部分内容'); */
	/* alert("http://localhost:8080/workflow/upload/"+fileInfo.filename); */
	if(fileInfo.flag='true'){
		
		/* $("<li><img src='${pageContext.request.contextPath}/upload/"+fileInfo[i].savefilename+"' width='50px' height='50px'><span>"+fileInfo[i].filename+"</span><a id href='http://localhost:8080/workflow/download.action?filename="+fileInfo[i].savefilename+"&&savedname="+fileInfo[i].filename+"'>下载</a></li>").appendTo("ul"); */
		if(fileType=="docx"||fileType=="doc"){
			console.log("Doc文档类型");
			$("<li id='"+id+"'><img src='${pageContext.request.contextPath}/jQueryFormDemo/img/docx.png' width='50px' height='50px'><span>"+imgfilename+"</span><button type='button' onclick='deleteFiles(\""+id+"\")' >删除</button></li>").appendTo("ul");
			/* 将附件的id写入到隐藏input中，传到父iframe，跟随form一块提交 */
			var c = document.getElementById("fileId").value+","+id;
			document.getElementById("fileId").value=c;
		}else if(fileType=="xlsx"||fileType=="xls"){
			console.log("Xls文档类型");
			$("<li id='"+id+"'><img src='${pageContext.request.contextPath}/jQueryFormDemo/img/excel.png' width='50px' height='50px'><span>"+imgfilename+"</span><button type='button' onclick='deleteFiles(\""+id+"\")' >删除</button></li>").appendTo("ul");
			/* 将附件的id写入到隐藏input中，传到父iframe，跟随form一块提交 */
			var c = document.getElementById("fileId").value+","+id;
			document.getElementById("fileId").value=c;
		}
		else if(fileType=="jpg"||fileType=="jpeg"||fileType=="png"||fileType=="gif"||fileType=="bmp"||fileType=="tif"||fileType=="JPG"){
			console.log("图片类型");
			$("<li id='"+id+"'><img src='${pageContext.request.contextPath}/upload/"+fileInfo.filename+"' width='50px' height='50px'><span>"+imgfilename+"</span><button type='button' onclick='deleteFiles(\""+id+"\")' >删除</button></li>").appendTo("ul");
			var c = document.getElementById("fileId").value+","+id;
			document.getElementById("fileId").value=c;
		}else if(fileType=="mp3"||fileType=="MP3"||fileType=="wav"||fileType=="amr"){
			console.log("音频");
			$("<li id='"+id+"'><img src='${pageContext.request.contextPath}/jQueryFormDemo/img/yinpin.png' width='50px' height='50px'><span>"+imgfilename+"</span><button type='button' onclick='deleteFiles(\""+id+"\")' >删除</button></li>").appendTo("ul");
			var c = document.getElementById("fileId").value+","+id;
			document.getElementById("fileId").value=c;
		}else if(fileType=="rar"||fileType=="zip"){
			console.log("压缩包");
			$("<li id='"+id+"'><img src='${pageContext.request.contextPath}/jQueryFormDemo/img/rar.png' width='50px' height='50px'><span>"+imgfilename+"</span><button type='button' onclick='deleteFiles(\""+id+"\")' >删除</button></li>").appendTo("ul");
			var c = document.getElementById("fileId").value+","+id;
			document.getElementById("fileId").value=c;
		}
	}else{
// 		alert("你输入的图片类型不支持");
	}
	
} 
 //根据id值删除指定的图片

	 function deleteFiles(id){
		 /* alert(id); */
		 $.ajax({
			 type:"post",
			 url:"http://localhost:8080/workflow/deleteWfFiles.action",
			 data:{id:id},
			 datatype:"json",
			 success:function(d){
// 				 alert(d+":"+id);
				 document.getElementById(id).style.background="red";
				 x=document.getElementById(id);
				 x.innerHTML="";
			 }
		 });
		 
	 }

	 
 	
</script>

<!-- 美化后的js -->
<script type="text/javascript">
oFReader = new FileReader(), rFilter = /^(?:image\/bmp|image\/cis\-cod|image\/gif|image\/ief|image\/jpeg|image\/jpeg|image\/jpeg|image\/pipeg|image\/png|image\/svg\+xml|image\/tiff|image\/x\-cmu\-raster|image\/x\-cmx|image\/x\-icon|image\/x\-portable\-anymap|image\/x\-portable\-bitmap|image\/x\-portable\-graymap|image\/x\-portable\-pixmap|image\/x\-rgb|image\/x\-xbitmap|image\/x\-xpixmap|image\/x\-xwindowdump)$/i;

oFReader.onload = function (oFREvent) {
  document.getElementById("uploadPreview").src = oFREvent.target.result;
};

function loadImageFile() {
  if (document.getElementById("img").files.length === 0) { return; }
  var oFile = document.getElementById("img").files[0];
  if (!rFilter.test(oFile.type)) { 
// 	  alert("You must select a valid image file!"); 
	  return; }
  oFReader.readAsDataURL(oFile);
}
	$(document).ready(function(){
  $("#uploadPreview").mouseenter(function(){
  	var src=$("#uploadPreview")[0].src;
/* 	alert(src); */
  	$("#hideimages").attr('src',src); 
  	$("#hideimages").show();
  });
  $("#uploadPreview").mouseleave(function(){
  	$("#hideimages").hide();
  	opacity:0.5;
  });
});
</script>


<script type="text/javascript">

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
 <input id="fileId" type="hidden" value="id">

<div id="UplodForm">
<!--标准的HTML表单定义-->
<!--<form action="guest_server.php" method="post" name="myform" id="myform">-->
	<form action="${pageContext.request.contextPath}/fileUpload.action"
	  name="myform" id="myform" method="post" enctype="multipart/form-data">
		<table>
      <tbody>
        <tr>
          <td><div id="imgView"><img id="uploadPreview" style="width: 70px; height: 70px;"   /></div></td>
          
          <a href="javascript:void(0);" class="btn_addPic"><span><em>+</em>添加附件</span>
          <input type="file" name="upload" id="img"  onchange="loadImageFile();" tabindex="3"  size="3" name="myPhoto" class="filePrew"></a>
          
          </td>
        </tr>
      </tbody>
    </table>
    <p><div id="LoadBtn"><input id="Btn" type="submit"  value="确认上传" /></div></p>
		
	
	<!-- <input type="submit" id="submit" value="上传"> -->
	
	
	
</form>
<!--显示从服务器返回的附件信息-->
<div id="hideimg"><img id="hideimages" src="../ckeditor/plugins/image/images/noimage.png" /></div>
	<ul>
		<li id="firstid">
		<img src="../img/menu-all.png" width="50px" height="50px"/>
		<span>已上传图</span>
		</li>
	</ul>
	
</div>
<style type="text/css">
	#UplodForm{
	padding:5px;
	 background: wheat;
		width: 800px;
		height: 120px;
	}
	#guest_info{
		 background: wheat;
		width: 300px;
		height: 70px;
	}
	
	 ul li {
		display: block;
		list-style-type: none;
		 background: darkturquoise;
		float: left;
		padding: 5px;
		 margin-top:-5px;
		margin-left: 10px;
		border-radius: 5px;
		
	}
	#firstid{
		margin-left: 70px;
	}
	li span{
		display: block;
		background:brown;
		font-size: 12px;
		color: white;
		width: 50px;
		height: 20px;
		align-content: center;
		padding: 1px;
		border-radius: 2px;
		
		overflow: hidden;
		
		
	}
	
	#hideimages{
		/* width: 130px; */
		height:130px;
		position: absolute;
		left: 130px;
		margin-top: -50px;
		display:none; 
		
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
#imgView{
	margin-left: 10px;
 margin-top: px;
	height: 70px;
	width: 70px;
	align-content: center;
	border: dotted 1px;
}
#LoadBtn{
	margin-left: 130px;
	 
	margin-top:-125px;
	
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
}
	
</style>
</body>
</html>
