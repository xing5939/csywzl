package com.ssh.serviceImpl;

import java.util.List;

import com.ssh.dao.LigandsDAO;
import com.ssh.entity.Ligands9;
import com.ssh.service.LigandsService;

public class LigandsServiceImpl implements LigandsService {
	private LigandsDAO ligandsDAO;

	public LigandsDAO getLigandsDAO() {
		return ligandsDAO;
	}

	public void setLigandsDAO(LigandsDAO ligandsDAO) {
		this.ligandsDAO = ligandsDAO;
	}

	/*双条件查询-未优化*/
	@Override
	public List<Ligands9> findAllLigands(String page, String rows, String shurukuang, String xiala) {
		// TODO Auto-generated method stub
		return this.ligandsDAO.findAllLigands(page,rows,shurukuang,xiala);
	}

	@Override
	public int getLigandsTotal(String shurukuang, String xiala) throws Exception {
		// TODO Auto-generated method stub
		return this.ligandsDAO.getLigandsTotal(shurukuang,xiala);
	}

	/*单条件查询-尝试进行优化*/
	@Override
	public List<Ligands9> queryLigandsByZincid(String page, String rows,String zincid) {
		// TODO Auto-generated method stub
		return this.ligandsDAO.queryLigandsByZincid(page,rows,zincid);
	}

	@Override
	public int queryLigandsByZincidTotal(String zincid) {
		// TODO Auto-generated method stub
		return this.ligandsDAO.queryLigandsByZincidTotal(zincid);
	}
	
	
}
