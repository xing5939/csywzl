package com.ssh.entity;

/**
 * Results entity. @author MyEclipse Persistence Tools
 */
public class Results extends AbstractResults implements java.io.Serializable {

	// Constructors

	/** default constructor */
	public Results() {
	}

	/** full constructor */
	public Results(String pdbid, String ligands, String mmgbsa,
			String dockingscore, String xpgscore, String classification,
			String released, String author, String organization,
			String dockname, String dockpath, Double docksize,
			String algorithm1, String algorithm2, String ngl,
			String ledockscore, String ledockvdw, String ledockelec,
			String ledockhbond, String glidescore, String glidemm,
			String glidegb, String glidesa, String author2, String status,
			String numAtoms, String leLedock, String clash) {
		super(pdbid, ligands, mmgbsa, dockingscore, xpgscore, classification,
				released, author, organization, dockname, dockpath, docksize,
				algorithm1, algorithm2, ngl, ledockscore, ledockvdw,
				ledockelec, ledockhbond, glidescore, glidemm, glidegb, glidesa,
				author2, status, numAtoms, leLedock, clash);
	}

}
