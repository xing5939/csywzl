package com.ssh.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.entity.JSONSerializer;
import com.ssh.entity.Ligands9;
import com.ssh.entity.ResponseUtil;
import com.ssh.service.LigandsService;

public class ListLigandsAction extends ActionSupport {
	private LigandsService ligandsService;
	private String page;
    private String rows;
    private JSONSerializer jsonSerializer;
	public LigandsService getLigandsService() {
		return ligandsService;
	}
	public void setLigandsService(LigandsService ligandsService) {
		this.ligandsService = ligandsService;
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
	public JSONSerializer getJsonSerializer() {
		return jsonSerializer;
	}
	public void setJsonSerializer(JSONSerializer jsonSerializer) {
		this.jsonSerializer = jsonSerializer;
	}
	//ligands查询显示
    public String execute() throws Exception{
    	HttpServletRequest request =ServletActionContext.getRequest();
    	String shurukuang=request.getParameter("sOrgName");
    	String xiala=request.getParameter("sState");
    	List<Ligands9> list = ligandsService.findAllLigands(page,rows,shurukuang,xiala);
    	int total = ligandsService.getLigandsTotal(shurukuang,xiala);
    	Map<String ,Object> jsonMap = new HashMap<String ,Object>();
    	jsonMap.put("total", total);
        jsonMap.put("rows", list);
        try {
			ResponseUtil.writerToUI(jsonSerializer.serializeJson(jsonMap));
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return SUCCESS;
    }
}
