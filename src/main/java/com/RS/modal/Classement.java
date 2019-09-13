package com.RS.modal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;

@Entity
@EntityListeners(AuditingEntityListener.class)
@Table(name = "classement")

public class Classement {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@ManyToOne
	@JoinColumn(name = "iduser", referencedColumnName = "id")
	private User iduser;

	@Column(name = "nomEtablissement")
	private String nomEtablissement;
	@Column(name = "ville")
	private String ville;
	@Column(name = "formation")
	private int formation;
	@Column(name = "vieEtudiate")
	private int vieEtudiante;
	@Column(name = "rhm")
	private int rhm;
	@Column(name = "recherche")
	private int recherche;
	@Column(name = "scoretotal")
	private int scoretotal;
	@Column(name = "description")
	private String description;

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getScoretotal() {
		return scoretotal;
	}

	public void setScoretotal(int scoretotal) {
		this.scoretotal = scoretotal;
	}

	public Classement(String nomEtablissement, String ville, int formation, int vieEtudiante, int rhm, int recherche,
			int scoretotal, String description) {
		super();
		this.nomEtablissement = nomEtablissement;
		this.ville = ville;
		this.formation = formation;
		this.vieEtudiante = vieEtudiante;
		this.rhm = rhm;
		this.recherche = recherche;
		this.scoretotal = scoretotal;
		this.description = description;
	}

	public Classement() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public User getIduser() {
		return iduser;
	}

	public void setIduser(User iduser) {
		this.iduser = iduser;
	}

	public String getNomEtablissement() {
		return nomEtablissement;
	}

	public void setNomEtablissement(String nomEtablissement) {
		this.nomEtablissement = nomEtablissement;
	}

	public String getVille() {
		return ville;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}

	public int getFormation() {
		return formation;
	}

	public void setFormation(int formation) {
		this.formation = formation;
	}

	public int getVieEtudiante() {
		return vieEtudiante;
	}

	public void setVieEtudiante(int vieEtudiante) {
		this.vieEtudiante = vieEtudiante;
	}

	public int getRhm() {
		return rhm;
	}

	public void setRhm(int rhm) {
		this.rhm = rhm;
	}

	public int getRecherche() {
		return recherche;
	}

	public void setRecherche(int recherche) {
		this.recherche = recherche;
	}
}
