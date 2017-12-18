package com.ssh.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.ssh.entity.JSONSerializer;
import com.ssh.entity.ResponseUtil;
import com.ssh.entity.Results;
import com.ssh.service.ResultsService;

public class ListResultsAction extends ActionSupport {
	private ResultsService resultsService;
	private String page;
    private String rows;
    private JSONSerializer jsonSerializer;
	public ResultsService getResultsService() {
		return resultsService;
	}
	public void setResultsService(ResultsService resultsService) {
		this.resultsService = resultsService;
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
    	String status=request.getParameter("status");
    	String ligands=request.getParameter("ligands");
    	String pdb=request.getParameter("pdb");
    	List<Results> list = resultsService.findAllResults(page,rows,status,ligands,pdb);
    	int total = resultsService.getResultsTotal(status,ligands,pdb);
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
