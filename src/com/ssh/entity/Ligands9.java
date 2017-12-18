package com.ssh.entity;

/**
 * Ligands9 entity. @author MyEclipse Persistence Tools
 */
public class Ligands9 extends AbstractLigands9 implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Ligands9() {
	}

	/** full constructor */
	public Ligands9(String zinc, String mol2name, String mol2path,
			Integer mol2size, String mol2content, String protomerTranche,
			String protomers, String filetype, String isdelete,
			String molecularweight, String partitioncoefficient,
			String reactivity, String purchasability, String modeltype,
			String charge, String generatedon, Integer donors,
			Integer acceptors, String psa, Integer rotatablebonds,
			String smiles, String inChI, String inChIkey, String db2name,
			String db2path, Integer db2size, String db2content, String dbName,
			String dbPath, Integer dbSize, String dbContent,
			String solvatioName, String solvationPath, Integer solvationSize,
			String solvationContent) {
		super(zinc, mol2name, mol2path, mol2size, mol2content, protomerTranche,
				protomers, filetype, isdelete, molecularweight,
				partitioncoefficient, reactivity, purchasability, modeltype,
				charge, generatedon, donors, acceptors, psa, rotatablebonds,
				smiles, inChI, inChIkey, db2name, db2path, db2size, db2content,
				dbName, dbPath, dbSize, dbContent, solvatioName, solvationPath,
				solvationSize, solvationContent);
	}

}
