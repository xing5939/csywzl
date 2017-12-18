package com.ssh.entity;

/**
 * AbstractResults entity provides the base persistence definition of the
 * Results entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractResults implements java.io.Serializable {

	// Fields

	private Integer id;
	private String pdbid;
	private String ligands;
	private String mmgbsa;
	private String dockingscore;
	private String xpgscore;
	private String classification;
	private String released;
	private String author;
	private String organization;
	private String dockname;
	private String dockpath;
	private Double docksize;
	private String algorithm1;
	private String algorithm2;
	private String ngl;
	private String ledockscore;
	private String ledockvdw;
	private String ledockelec;
	private String ledockhbond;
	private String glidescore;
	private String glidemm;
	private String glidegb;
	private String glidesa;
	private String author2;
	private String status;
	private String numAtoms;
	private String leLedock;
	private String clash;

	// Constructors

	/** default constructor */
	public AbstractResults() {
	}

	/** full constructor */
	public AbstractResults(String pdbid, String ligands, String mmgbsa,
			String dockingscore, String xpgscore, String classification,
			String released, String author, String organization,
			String dockname, String dockpath, Double docksize,
			String algorithm1, String algorithm2, String ngl,
			String ledockscore, String ledockvdw, String ledockelec,
			String ledockhbond, String glidescore, String glidemm,
			String glidegb, String glidesa, String author2, String status,
			String numAtoms, String leLedock, String clash) {
		this.pdbid = pdbid;
		this.ligands = ligands;
		this.mmgbsa = mmgbsa;
		this.dockingscore = dockingscore;
		this.xpgscore = xpgscore;
		this.classification = classification;
		this.released = released;
		this.author = author;
		this.organization = organization;
		this.dockname = dockname;
		this.dockpath = dockpath;
		this.docksize = docksize;
		this.algorithm1 = algorithm1;
		this.algorithm2 = algorithm2;
		this.ngl = ngl;
		this.ledockscore = ledockscore;
		this.ledockvdw = ledockvdw;
		this.ledockelec = ledockelec;
		this.ledockhbond = ledockhbond;
		this.glidescore = glidescore;
		this.glidemm = glidemm;
		this.glidegb = glidegb;
		this.glidesa = glidesa;
		this.author2 = author2;
		this.status = status;
		this.numAtoms = numAtoms;
		this.leLedock = leLedock;
		this.clash = clash;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getPdbid() {
		return this.pdbid;
	}

	public void setPdbid(String pdbid) {
		this.pdbid = pdbid;
	}

	public String getLigands() {
		return this.ligands;
	}

	public void setLigands(String ligands) {
		this.ligands = ligands;
	}

	public String getMmgbsa() {
		return this.mmgbsa;
	}

	public void setMmgbsa(String mmgbsa) {
		this.mmgbsa = mmgbsa;
	}

	public String getDockingscore() {
		return this.dockingscore;
	}

	public void setDockingscore(String dockingscore) {
		this.dockingscore = dockingscore;
	}

	public String getXpgscore() {
		return this.xpgscore;
	}

	public void setXpgscore(String xpgscore) {
		this.xpgscore = xpgscore;
	}

	public String getClassification() {
		return this.classification;
	}

	public void setClassification(String classification) {
		this.classification = classification;
	}

	public String getReleased() {
		return this.released;
	}

	public void setReleased(String released) {
		this.released = released;
	}

	public String getAuthor() {
		return this.author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getOrganization() {
		return this.organization;
	}

	public void setOrganization(String organization) {
		this.organization = organization;
	}

	public String getDockname() {
		return this.dockname;
	}

	public void setDockname(String dockname) {
		this.dockname = dockname;
	}

	public String getDockpath() {
		return this.dockpath;
	}

	public void setDockpath(String dockpath) {
		this.dockpath = dockpath;
	}

	public Double getDocksize() {
		return this.docksize;
	}

	public void setDocksize(Double docksize) {
		this.docksize = docksize;
	}

	public String getAlgorithm1() {
		return this.algorithm1;
	}

	public void setAlgorithm1(String algorithm1) {
		this.algorithm1 = algorithm1;
	}

	public String getAlgorithm2() {
		return this.algorithm2;
	}

	public void setAlgorithm2(String algorithm2) {
		this.algorithm2 = algorithm2;
	}

	public String getNgl() {
		return this.ngl;
	}

	public void setNgl(String ngl) {
		this.ngl = ngl;
	}

	public String getLedockscore() {
		return this.ledockscore;
	}

	public void setLedockscore(String ledockscore) {
		this.ledockscore = ledockscore;
	}

	public String getLedockvdw() {
		return this.ledockvdw;
	}

	public void setLedockvdw(String ledockvdw) {
		this.ledockvdw = ledockvdw;
	}

	public String getLedockelec() {
		return this.ledockelec;
	}

	public void setLedockelec(String ledockelec) {
		this.ledockelec = ledockelec;
	}

	public String getLedockhbond() {
		return this.ledockhbond;
	}

	public void setLedockhbond(String ledockhbond) {
		this.ledockhbond = ledockhbond;
	}

	public String getGlidescore() {
		return this.glidescore;
	}

	public void setGlidescore(String glidescore) {
		this.glidescore = glidescore;
	}

	public String getGlidemm() {
		return this.glidemm;
	}

	public void setGlidemm(String glidemm) {
		this.glidemm = glidemm;
	}

	public String getGlidegb() {
		return this.glidegb;
	}

	public void setGlidegb(String glidegb) {
		this.glidegb = glidegb;
	}

	public String getGlidesa() {
		return this.glidesa;
	}

	public void setGlidesa(String glidesa) {
		this.glidesa = glidesa;
	}

	public String getAuthor2() {
		return this.author2;
	}

	public void setAuthor2(String author2) {
		this.author2 = author2;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getNumAtoms() {
		return this.numAtoms;
	}

	public void setNumAtoms(String numAtoms) {
		this.numAtoms = numAtoms;
	}

	public String getLeLedock() {
		return this.leLedock;
	}

	public void setLeLedock(String leLedock) {
		this.leLedock = leLedock;
	}

	public String getClash() {
		return this.clash;
	}

	public void setClash(String clash) {
		this.clash = clash;
	}

}