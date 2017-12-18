package com.ssh.entity;

/**
 * Pdb entity. @author MyEclipse Persistence Tools
 */
public class Pdb extends AbstractPdb implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Pdb() {
	}

	/** full constructor */
	public Pdb(String pdbid, String classfication, String deposited,
			String released, String depositionauthor, String organism,
			String expressionSystem, String wwPdbvalidation,
			String biologicalAssembly, String asymmetricUnit,
			String pdbFolderpath, String pdbFoldername, String pdbFoldersize,
			String pdbpath, String pdbsize, String pdbcontent, String inname,
			String inpath, String insize, String chainId, String incontent,
			String insertBegin, String seqBegin, String seqEnd,
			String insertEnd, String dbseqBegin, String dbseqEnd,
			String pdbSource) {
		super(pdbid, classfication, deposited, released, depositionauthor,
				organism, expressionSystem, wwPdbvalidation,
				biologicalAssembly, asymmetricUnit, pdbFolderpath,
				pdbFoldername, pdbFoldersize, pdbpath, pdbsize, pdbcontent,
				inname, inpath, insize, chainId, incontent, insertBegin,
				seqBegin, seqEnd, insertEnd, dbseqBegin, dbseqEnd, pdbSource);
	}

}
