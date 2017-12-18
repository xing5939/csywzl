package com.ssh.serviceImpl;

import java.util.List;

import com.ssh.dao.PdbDAO;
import com.ssh.entity.Pdb;
import com.ssh.service.PdbService;

public class PdbServiceImpl implements PdbService {
	private PdbDAO pdbDAO;

	public PdbDAO getPdbDAO() {
		return pdbDAO;
	}

	public void setPdbDAO(PdbDAO pdbDAO) {
		this.pdbDAO = pdbDAO;
	}

	@Override
	public List<Pdb> findAllPdb(String page, String rows, String shurukuang) {
		// TODO Auto-generated method stub
		return this.pdbDAO.findAllPdb(page,rows,shurukuang);
	}

	@Override
	public int getPdbTotal(String shurukuang) {
		// TODO Auto-generated method stub
		return this.pdbDAO.getPdbTotal(shurukuang);
	}
	
}
