package com.ssh.service;

import java.util.List;

import com.ssh.entity.Pdb;

public interface PdbService {

	public List<Pdb> findAllPdb(String page, String rows, String shurukuang);

	public int getPdbTotal(String shurukuang);

}
