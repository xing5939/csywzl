package com.ssh.serviceImpl;

import java.util.List;

import com.ssh.dao.ResultsDAO;
import com.ssh.entity.Results;
import com.ssh.service.ResultsService;

public class ResultsServiceImpl implements ResultsService {
	private ResultsDAO resultsDAO;

	public ResultsDAO getResultsDAO() {
		return resultsDAO;
	}

	public void setResultsDAO(ResultsDAO resultsDAO) {
		this.resultsDAO = resultsDAO;
	}

	@Override
	public List<Results> findAllResults(String page, String rows,String status, String ligands, String pdb) {
		// TODO Auto-generated method stub
		return this.resultsDAO.findAllResults(page,rows,status,ligands,pdb);
	}

	@Override
	public int getResultsTotal(String status, String ligands, String pdb){
		// TODO Auto-generated method stub
		return this.resultsDAO.getResultsTotal(status,ligands,pdb);
	}
	
	
}
