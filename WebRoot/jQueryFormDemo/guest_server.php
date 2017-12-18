<?php
	$record = array(                              //从提交的表单中获取数据
		'name'	 =>$_POST ['ipt_name'],
		'subject'=>$_POST ['ipt_subject'],
		'content'=>$_POST ['txt_memo']
	);
	//返回表单数据
	echo '姓名:'.$record['name'].'<br/>留言标题:'.$record['subject'].'<br/>留言内容:'.$record['content'].'<br/>';
?>
