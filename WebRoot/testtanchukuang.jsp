<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ResultsInfo</title>
	
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
<body>
	<h2>Nested Panel</h2>
	<p>The panel can be placed inside containers and can contain other components.</p>
	<div style="margin:20px 0 10px 0;"></div>
	<div class="easyui-panel" title="Nested Panel" style="width:700px;height:200px;padding:10px;">
		<div class="easyui-layout" data-options="fit:true">
			<div data-options="region:'west',split:true" style="width:100px;padding:10px">
				Left Content
			</div>
			<div data-options="region:'east'" style="width:100px;padding:10px">
				Right Content
			</div>
			<div data-options="region:'center'" style="padding:10px">
				Right Content
			</div>
		</div>
	</div>
</body>

<script type="text/JavaScript">

</script>

</html>

