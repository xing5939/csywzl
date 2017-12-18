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

public class queryLigandsByZincid extends ActionSupport {
	/**
	 * 用于优化查询
	 */
	private static final long serialVersionUID = 5760909120422833022L;
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
    	String zincid=request.getParameter("sOrgName");
    	/*System.out.println("zinid"+zincid);*/
		List<Ligands9> list = ligandsService.queryLigandsByZincid(page,rows,zincid);
    	int total = ligandsService.queryLigandsByZincidTotal(zincid);
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
