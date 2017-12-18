package com.ssh.service;

import java.util.List;

import com.ssh.entity.Results;

public interface ResultsService {

	public List<Results> findAllResults(String page, String rows, String status, String ligands, String pdb);

	public int getResultsTotal(String status, String ligands, String pdb);
	

}
