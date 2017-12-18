package com.ssh.service;

import java.util.List;

import com.ssh.entity.Ligands9;

public interface LigandsService {
    /*现用查询*/
	public List<Ligands9> findAllLigands(String page, String rows, String shurukuang, String xiala);

	public int getLigandsTotal(String shurukuang, String xiala) throws Exception;

	/*优化查询*/
	public List<Ligands9> queryLigandsByZincid(String page, String rows,String zincid);

	public int queryLigandsByZincidTotal(String zincid);
	

}
