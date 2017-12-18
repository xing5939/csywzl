package com.ssh.entity;

/**
 * AbstractPdb entity provides the base persistence definition of the Pdb
 * entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractPdb implements java.io.Serializable {

	// Fields

	private Integer id;
	private String pdbid;
	private String classfication;
	private String deposited;
	private String released;
	private String depositionauthor;
	private String organism;
	private String expressionSystem;
	private String wwPdbvalidation;
	private String biologicalAssembly;
	private String asymmetricUnit;
	private String pdbFolderpath;
	private String pdbFoldername;
	private String pdbFoldersize;
	private String pdbpath;
	private String pdbsize;
	private String pdbcontent;
	private String inname;
	private String inpath;
	private String insize;
	private String chainId;
	private String incontent;
	private String insertBegin;
	private String seqBegin;
	private String seqEnd;
	private String insertEnd;
	private String dbseqBegin;
	private String dbseqEnd;
	private String pdbSource;

	// Constructors

	/** default constructor */
	public AbstractPdb() {
	}

	/** full constructor */
	public AbstractPdb(String pdbid, String classfication, String deposited,
			String released, String depositionauthor, String organism,
			String expressionSystem, String wwPdbvalidation,
			String biologicalAssembly, String asymmetricUnit,
			String pdbFolderpath, String pdbFoldername, String pdbFoldersize,
			String pdbpath, String pdbsize, String pdbcontent, String inname,
			String inpath, String insize, String chainId, String incontent,
			String insertBegin, String seqBegin, String seqEnd,
			String insertEnd, String dbseqBegin, String dbseqEnd,
			String pdbSource) {
		this.pdbid = pdbid;
		this.classfication = classfication;
		this.deposited = deposited;
		this.released = released;
		this.depositionauthor = depositionauthor;
		this.organism = organism;
		this.expressionSystem = expressionSystem;
		this.wwPdbvalidation = wwPdbvalidation;
		this.biologicalAssembly = biologicalAssembly;
		this.asymmetricUnit = asymmetricUnit;
		this.pdbFolderpath = pdbFolderpath;
		this.pdbFoldername = pdbFoldername;
		this.pdbFoldersize = pdbFoldersize;
		this.pdbpath = pdbpath;
		this.pdbsize = pdbsize;
		this.pdbcontent = pdbcontent;
		this.inname = inname;
		this.inpath = inpath;
		this.insize = insize;
		this.chainId = chainId;
		this.incontent = incontent;
		this.insertBegin = insertBegin;
		this.seqBegin = seqBegin;
		this.seqEnd = seqEnd;
		this.insertEnd = insertEnd;
		this.dbseqBegin = dbseqBegin;
		this.dbseqEnd = dbseqEnd;
		this.pdbSource = pdbSource;
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

	public String getClassfication() {
		return this.classfication;
	}

	public void setClassfication(String classfication) {
		this.classfication = classfication;
	}

	public String getDeposited() {
		return this.deposited;
	}

	public void setDeposited(String deposited) {
		this.deposited = deposited;
	}

	public String getReleased() {
		return this.released;
	}

	public void setReleased(String released) {
		this.released = released;
	}

	public String getDepositionauthor() {
		return this.depositionauthor;
	}

	public void setDepositionauthor(String depositionauthor) {
		this.depositionauthor = depositionauthor;
	}

	public String getOrganism() {
		return this.organism;
	}

	public void setOrganism(String organism) {
		this.organism = organism;
	}

	public String getExpressionSystem() {
		return this.expressionSystem;
	}

	public void setExpressionSystem(String expressionSystem) {
		this.expressionSystem = expressionSystem;
	}

	public String getWwPdbvalidation() {
		return this.wwPdbvalidation;
	}

	public void setWwPdbvalidation(String wwPdbvalidation) {
		this.wwPdbvalidation = wwPdbvalidation;
	}

	public String getBiologicalAssembly() {
		return this.biologicalAssembly;
	}

	public void setBiologicalAssembly(String biologicalAssembly) {
		this.biologicalAssembly = biologicalAssembly;
	}

	public String getAsymmetricUnit() {
		return this.asymmetricUnit;
	}

	public void setAsymmetricUnit(String asymmetricUnit) {
		this.asymmetricUnit = asymmetricUnit;
	}

	public String getPdbFolderpath() {
		return this.pdbFolderpath;
	}

	public void setPdbFolderpath(String pdbFolderpath) {
		this.pdbFolderpath = pdbFolderpath;
	}

	public String getPdbFoldername() {
		return this.pdbFoldername;
	}

	public void setPdbFoldername(String pdbFoldername) {
		this.pdbFoldername = pdbFoldername;
	}

	public String getPdbFoldersize() {
		return this.pdbFoldersize;
	}

	public void setPdbFoldersize(String pdbFoldersize) {
		this.pdbFoldersize = pdbFoldersize;
	}

	public String getPdbpath() {
		return this.pdbpath;
	}

	public void setPdbpath(String pdbpath) {
		this.pdbpath = pdbpath;
	}

	public String getPdbsize() {
		return this.pdbsize;
	}

	public void setPdbsize(String pdbsize) {
		this.pdbsize = pdbsize;
	}

	public String getPdbcontent() {
		return this.pdbcontent;
	}

	public void setPdbcontent(String pdbcontent) {
		this.pdbcontent = pdbcontent;
	}

	public String getInname() {
		return this.inname;
	}

	public void setInname(String inname) {
		this.inname = inname;
	}

	public String getInpath() {
		return this.inpath;
	}

	public void setInpath(String inpath) {
		this.inpath = inpath;
	}

	public String getInsize() {
		return this.insize;
	}

	public void setInsize(String insize) {
		this.insize = insize;
	}

	public String getChainId() {
		return this.chainId;
	}

	public void setChainId(String chainId) {
		this.chainId = chainId;
	}

	public String getIncontent() {
		return this.incontent;
	}

	public void setIncontent(String incontent) {
		this.incontent = incontent;
	}

	public String getInsertBegin() {
		return this.insertBegin;
	}

	public void setInsertBegin(String insertBegin) {
		this.insertBegin = insertBegin;
	}

	public String getSeqBegin() {
		return this.seqBegin;
	}

	public void setSeqBegin(String seqBegin) {
		this.seqBegin = seqBegin;
	}

	public String getSeqEnd() {
		return this.seqEnd;
	}

	public void setSeqEnd(String seqEnd) {
		this.seqEnd = seqEnd;
	}

	public String getInsertEnd() {
		return this.insertEnd;
	}

	public void setInsertEnd(String insertEnd) {
		this.insertEnd = insertEnd;
	}

	public String getDbseqBegin() {
		return this.dbseqBegin;
	}

	public void setDbseqBegin(String dbseqBegin) {
		this.dbseqBegin = dbseqBegin;
	}

	public String getDbseqEnd() {
		return this.dbseqEnd;
	}

	public void setDbseqEnd(String dbseqEnd) {
		this.dbseqEnd = dbseqEnd;
	}

	public String getPdbSource() {
		return this.pdbSource;
	}

	public void setPdbSource(String pdbSource) {
		this.pdbSource = pdbSource;
	}

}