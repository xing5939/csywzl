package com.ssh.entity;

/**
 * AbstractSearchligands entity provides the base persistence definition of the
 * Searchligands entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractSearchligands implements java.io.Serializable {

	// Fields

	private String peitijiansuotiaojian;

	// Constructors

	/** default constructor */
	public AbstractSearchligands() {
	}

	/** full constructor */
	public AbstractSearchligands(String peitijiansuotiaojian) {
		this.peitijiansuotiaojian = peitijiansuotiaojian;
	}

	// Property accessors

	public String getPeitijiansuotiaojian() {
		return this.peitijiansuotiaojian;
	}

	public void setPeitijiansuotiaojian(String peitijiansuotiaojian) {
		this.peitijiansuotiaojian = peitijiansuotiaojian;
	}

}