//扩展easyui表单的验证  
$.extend($.fn.validatebox.defaults.rules, {  
    //验证汉子  
    CHS: {  
        validator: function (value) {  
            return /^[\u0391-\uFFE5]+$/.test(value);  
        },  
        message: '只能输入汉字'  
    },  

    //验证只能输入汉字、英文、数字  
    content: {  
        validator: function (value) {  
            return /[0-9a-zA-Z\u4e00-\u9fa5]+$/.test(value);  
        },  
        message: '只能输入汉字、数字、字母'  
    },  
    //可以为空，或者只能输入数字，且最多输入12位
    number: {  
        validator: function (value) {
        	if(value.length==0){
        		return true;
        	}else if(0<value.length&&value.length<=12){
        		return /^[0-9]+$/.test(value);
        	}else{
    			$.fn.validatebox.defaults.rules.account.message = '最多输入12位数字.';  
    			return false;  
    		}
              
        },  
        message: '只能输入数字且不超过12位.'  
    },  
   


    //验证只能输入汉字、英文、数字  
    content: {  
        validator: function (value) {  
            return /[0-9a-zA-Z\u4e00-\u9fa5]+$/.test(value);  
        },  
        message: '只能输入汉字、数字、字母'  
    },  

    //移动手机号码验证 ,可以为空，或者是指定的格式 
    mobile: {//value值为文本框中的值  
        validator: function (value) {
        		if(value.length==0){
        			return true;  
        		}else if(/^1[3|4|5|6|8|7|9]\d{9}$/.test(value)){
        			return true;
        		}else{
        			$.fn.validatebox.defaults.rules.account.message = '输入手机号码格式不准确.';  
        			return false;  
        		}
         
            
        } ,message: '输入手机号码格式不准确.' 
    }, 
    //联系方式 ,可以为空，或者是指定的格式 
    chat: {//value值为文本框中的值  
        validator: function (value) {
        		 if(/^[\u0391-\uFFE5]+$/.test(value)){
        			return false;
        		}else{
        			if(0<value.length&&value.length<4){
        				return false;
        			}else{
        				if(30<value.length){
        				return false;
        			}else{
        				return true;
        			}
        		}
        	}
       } ,message: '输入正确码格式.' 
    }, 
    //国内邮编验证  
    zipcode: {  
        validator: function (value) {  
            var reg = /^[1-9]\d{5}$/;  
            return reg.test(value);  
        },  
        message: '邮编必须是非0开始的6位数字.'  
    },  
    //用户账号验证(只能包括 _ 数字 字母)   
    account: {//param的值为[]中值  
        validator: function (value, param) {  
            if (value.length < param[0] || value.length > param[1]) {  
                $.fn.validatebox.defaults.rules.account.message = '用户名长度必须在' + param[0] + '至' + param[1] + '范围';  
                return false;  
            } else {  
                if (!/^[\w]+$/.test(value)) {  
                    $.fn.validatebox.defaults.rules.account.message = '用户名只能数字、字母、下划线组成.';  
                    return false;  
                } else {  
                    return true;  
                }  
            }  
        }, message: ''  
    }  
})