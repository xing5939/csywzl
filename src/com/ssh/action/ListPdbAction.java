package com.ssh.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.entity.JSONSerializer;
import com.ssh.entity.Pdb;
import com.ssh.entity.ResponseUtil;
import com.ssh.service.PdbService;

public class ListPdbAction extends ActionSupport {
	private PdbService pdbService;
	private String page;
    private String rows;
    private JSONSerializer jsonSerializer;
    
    
	public PdbService getPdbService() {
		return pdbService;
	}
	public void setPdbService(PdbService pdbService) {
		this.pdbService = pdbService;
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
    
	public String execute() throws Exception{
    	HttpServletRequest request =ServletActionContext.getRequest();
    	String shurukuang=request.getParameter("sOrgName");
    	System.out.println("action输入框的数值"+shurukuang);
    	List<Pdb> list = pdbService.findAllPdb(page,rows,shurukuang);
    	int total = pdbService.getPdbTotal(shurukuang);
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
