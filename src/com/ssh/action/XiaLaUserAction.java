package com.ssh.action;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.ssh.entity.JSONSerializer;
import com.ssh.entity.Searchligands;
import com.ssh.entity.TUser;
import com.ssh.entity.ResponseUtil;
import com.opensymphony.xwork2.ActionSupport;
import com.ssh.service.XiaLaUserService;

public class XiaLaUserAction extends ActionSupport {
	private XiaLaUserService xiaLaUserService;
	private JSONSerializer jsonSerializer;
	public XiaLaUserService getXiaLaUserService() {
		return xiaLaUserService;
	}
	public void setXiaLaUserService(XiaLaUserService xiaLaUserService) {
		this.xiaLaUserService = xiaLaUserService;
	}
	public JSONSerializer getJsonSerializer() {
		return jsonSerializer;
	}
	public void setJsonSerializer(JSONSerializer jsonSerializer) {
		this.jsonSerializer = jsonSerializer;
	}
	public String execute() throws Exception{
		List<Searchligands>  userList = xiaLaUserService.listUser();
		HttpServletResponse response= ServletActionContext.getResponse();
		response.setHeader("Access-Control-Allow-Origin","*");
		response.setHeader("Access-Control-Allow-Methods","POST,GET,OPTIONS,DELETE");
		try {
			ResponseUtil.writerToUI(jsonSerializer.serialize(userList));
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		return SUCCESS;
	}
}
