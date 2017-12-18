package com.ssh.entity;

/**
 * AbstractLigands9 entity provides the base persistence definition of the
 * Ligands9 entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractLigands9 implements java.io.Serializable {

	// Fields

	private Integer id;
	private String zinc;
	private String mol2name;
	private String mol2path;
	private Integer mol2size;
	private String mol2content;
	private String protomerTranche;
	private String protomers;
	private String filetype;
	private String isdelete;
	private String molecularweight;
	private String partitioncoefficient;
	private String reactivity;
	private String purchasability;
	private String modeltype;
	private String charge;
	private String generatedon;
	private Integer donors;
	private Integer acceptors;
	private String psa;
	private Integer rotatablebonds;
	private String smiles;
	private String inChI;
	private String inChIkey;
	private String db2name;
	private String db2path;
	private Integer db2size;
	private String db2content;
	private String dbName;
	private String dbPath;
	private Integer dbSize;
	private String dbContent;
	private String solvatioName;
	private String solvationPath;
	private Integer solvationSize;
	private String solvationContent;

	// Constructors

	/** default constructor */
	public AbstractLigands9() {
	}

	/** full constructor */
	public AbstractLigands9(String zinc, String mol2name, String mol2path,
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
		this.zinc = zinc;
		this.mol2name = mol2name;
		this.mol2path = mol2path;
		this.mol2size = mol2size;
		this.mol2content = mol2content;
		this.protomerTranche = protomerTranche;
		this.protomers = protomers;
		this.filetype = filetype;
		this.isdelete = isdelete;
		this.molecularweight = molecularweight;
		this.partitioncoefficient = partitioncoefficient;
		this.reactivity = reactivity;
		this.purchasability = purchasability;
		this.modeltype = modeltype;
		this.charge = charge;
		this.generatedon = generatedon;
		this.donors = donors;
		this.acceptors = acceptors;
		this.psa = psa;
		this.rotatablebonds = rotatablebonds;
		this.smiles = smiles;
		this.inChI = inChI;
		this.inChIkey = inChIkey;
		this.db2name = db2name;
		this.db2path = db2path;
		this.db2size = db2size;
		this.db2content = db2content;
		this.dbName = dbName;
		this.dbPath = dbPath;
		this.dbSize = dbSize;
		this.dbContent = dbContent;
		this.solvatioName = solvatioName;
		this.solvationPath = solvationPath;
		this.solvationSize = solvationSize;
		this.solvationContent = solvationContent;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getZinc() {
		return this.zinc;
	}

	public void setZinc(String zinc) {
		this.zinc = zinc;
	}

	public String getMol2name() {
		return this.mol2name;
	}

	public void setMol2name(String mol2name) {
		this.mol2name = mol2name;
	}

	public String getMol2path() {
		return this.mol2path;
	}

	public void setMol2path(String mol2path) {
		this.mol2path = mol2path;
	}

	public Integer getMol2size() {
		return this.mol2size;
	}

	public void setMol2size(Integer mol2size) {
		this.mol2size = mol2size;
	}

	public String getMol2content() {
		return this.mol2content;
	}

	public void setMol2content(String mol2content) {
		this.mol2content = mol2content;
	}

	public String getProtomerTranche() {
		return this.protomerTranche;
	}

	public void setProtomerTranche(String protomerTranche) {
		this.protomerTranche = protomerTranche;
	}

	public String getProtomers() {
		return this.protomers;
	}

	public void setProtomers(String protomers) {
		this.protomers = protomers;
	}

	public String getFiletype() {
		return this.filetype;
	}

	public void setFiletype(String filetype) {
		this.filetype = filetype;
	}

	public String getIsdelete() {
		return this.isdelete;
	}

	public void setIsdelete(String isdelete) {
		this.isdelete = isdelete;
	}

	public String getMolecularweight() {
		return this.molecularweight;
	}

	public void setMolecularweight(String molecularweight) {
		this.molecularweight = molecularweight;
	}

	public String getPartitioncoefficient() {
		return this.partitioncoefficient;
	}

	public void setPartitioncoefficient(String partitioncoefficient) {
		this.partitioncoefficient = partitioncoefficient;
	}

	public String getReactivity() {
		return this.reactivity;
	}

	public void setReactivity(String reactivity) {
		this.reactivity = reactivity;
	}

	public String getPurchasability() {
		return this.purchasability;
	}

	public void setPurchasability(String purchasability) {
		this.purchasability = purchasability;
	}

	public String getModeltype() {
		return this.modeltype;
	}

	public void setModeltype(String modeltype) {
		this.modeltype = modeltype;
	}

	public String getCharge() {
		return this.charge;
	}

	public void setCharge(String charge) {
		this.charge = charge;
	}

	public String getGeneratedon() {
		return this.generatedon;
	}

	public void setGeneratedon(String generatedon) {
		this.generatedon = generatedon;
	}

	public Integer getDonors() {
		return this.donors;
	}

	public void setDonors(Integer donors) {
		this.donors = donors;
	}

	public Integer getAcceptors() {
		return this.acceptors;
	}

	public void setAcceptors(Integer acceptors) {
		this.acceptors = acceptors;
	}

	public String getPsa() {
		return this.psa;
	}

	public void setPsa(String psa) {
		this.psa = psa;
	}

	public Integer getRotatablebonds() {
		return this.rotatablebonds;
	}

	public void setRotatablebonds(Integer rotatablebonds) {
		this.rotatablebonds = rotatablebonds;
	}

	public String getSmiles() {
		return this.smiles;
	}

	public void setSmiles(String smiles) {
		this.smiles = smiles;
	}

	public String getInChI() {
		return this.inChI;
	}

	public void setInChI(String inChI) {
		this.inChI = inChI;
	}

	public String getInChIkey() {
		return this.inChIkey;
	}

	public void setInChIkey(String inChIkey) {
		this.inChIkey = inChIkey;
	}

	public String getDb2name() {
		return this.db2name;
	}

	public void setDb2name(String db2name) {
		this.db2name = db2name;
	}

	public String getDb2path() {
		return this.db2path;
	}

	public void setDb2path(String db2path) {
		this.db2path = db2path;
	}

	public Integer getDb2size() {
		return this.db2size;
	}

	public void setDb2size(Integer db2size) {
		this.db2size = db2size;
	}

	public String getDb2content() {
		return this.db2content;
	}

	public void setDb2content(String db2content) {
		this.db2content = db2content;
	}

	public String getDbName() {
		return this.dbName;
	}

	public void setDbName(String dbName) {
		this.dbName = dbName;
	}

	public String getDbPath() {
		return this.dbPath;
	}

	public void setDbPath(String dbPath) {
		this.dbPath = dbPath;
	}

	public Integer getDbSize() {
		return this.dbSize;
	}

	public void setDbSize(Integer dbSize) {
		this.dbSize = dbSize;
	}

	public String getDbContent() {
		return this.dbContent;
	}

	public void setDbContent(String dbContent) {
		this.dbContent = dbContent;
	}

	public String getSolvatioName() {
		return this.solvatioName;
	}

	public void setSolvatioName(String solvatioName) {
		this.solvatioName = solvatioName;
	}

	public String getSolvationPath() {
		return this.solvationPath;
	}

	public void setSolvationPath(String solvationPath) {
		this.solvationPath = solvationPath;
	}

	public Integer getSolvationSize() {
		return this.solvationSize;
	}

	public void setSolvationSize(Integer solvationSize) {
		this.solvationSize = solvationSize;
	}

	public String getSolvationContent() {
		return this.solvationContent;
	}

	public void setSolvationContent(String solvationContent) {
		this.solvationContent = solvationContent;
	}

}