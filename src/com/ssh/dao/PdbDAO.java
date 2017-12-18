package com.ssh.dao;

import java.util.List;

import com.ssh.entity.Pdb;

public interface PdbDAO {

	public List<Pdb> findAllPdb(String page, String rows, String shurukuang);

	public int getPdbTotal(String shurukuang);

}
