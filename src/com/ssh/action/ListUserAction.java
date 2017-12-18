package com.ssh.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.ssh.entity.ResponseUtil;
import com.ssh.entity.JSONSerializer;
import com.alibaba.fastjson.JSONArray;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.entity.TUser;
import com.ssh.service.UserService;

import net.sf.json.JsonConfig;

import org.apache.catalina.connector.Request;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

public class ListUserAction extends ActionSupport{
	private UserService userService;
    private String page;
    private String rows;
    private JSONSerializer jsonSerializer;
    
    
	public JSONSerializer getJsonSerializer() {
		return jsonSerializer;
	}

	public void setJsonSerializer(JSONSerializer jsonSerializer) {
		this.jsonSerializer = jsonSerializer;
	}

	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}

	public String getRows() {
		return rows;
	}

	public void setRows(String rows) {
		this.rows = rows;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	@SuppressWarnings("unchecked")  
    @Override  
    public String execute() throws Exception {  
          
		/*Map request = (Map) ActionContext.getContext().get("request");  
          
        request.put("list", this.userService.findAllUsers(page,rows));ԭ�д���*/
		HttpServletRequest request =ServletActionContext.getRequest();
		String username=request.getParameter("sOrgName");
		String xialabiaodan=request.getParameter("sState");
        List<TUser> list=userService.findAllUsers(page, rows,xialabiaodan,username);
        int total=userService.getUserTotal(xialabiaodan,username);
        Map<String ,Object> jsonMap = new HashMap<String ,Object>();
        jsonMap.put("total", total);
        jsonMap.put("rows", list);
        
        try {
			/*ResponseUtil.writerToUI(jsonSerializer.serialize(jsonMap));*/
			ResponseUtil.writerToUI(jsonSerializer.serializeJson(jsonMap));
		} catch (Exception e) {
			e.printStackTrace();
		}
        
        /*List<TUser> list=userService.findAllUsers(page, rows);
        System.out.println(list);
        JsonConfig config=new JsonConfig();
        String arr = JSONArray.toJSONString(list);*/
		

        System.out.println("����Actionִ�н��");
        return SUCCESS;
        
        
    }  
}
