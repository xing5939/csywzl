package com.ssh.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Protein entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "protein", catalog = "sshtest")
public class Protein implements java.io.Serializable {

	// Fields

	private Integer id;
	private String proteinname;

	// Constructors

	/** default constructor */
	public Protein() {
	}

	/** full constructor */
	public Protein(String proteinname) {
		this.proteinname = proteinname;
	}

	// Property accessors
	@Id
	@GeneratedValue
	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "proteinname", length = 30)
	public String getProteinname() {
		return this.proteinname;
	}

	public void setProteinname(String proteinname) {
		this.proteinname = proteinname;
	}

}