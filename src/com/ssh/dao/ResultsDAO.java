package com.ssh.dao;

import java.util.List;

import com.ssh.entity.Results;

public interface ResultsDAO {

	public List<Results> findAllResults(String page, String rows, String status, String ligands, String pdb);

	public int getResultsTotal(String status, String ligands, String pdb);

}
