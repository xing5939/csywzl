package com.ssh.dao;

import java.util.List;

import com.ssh.entity.Ligands9;

public interface LigandsDAO {
   /* 正常使用，符合条件*/
	public List<Ligands9> findAllLigands(String page, String rows, String shurukuang, String xiala);

	public int getLigandsTotal(String shurukuang, String xiala);

	/*优化，单条件*/
	public List<Ligands9> queryLigandsByZincid(String page, String rows,String zincid);

	public int queryLigandsByZincidTotal(String zincid);
	
	

}
