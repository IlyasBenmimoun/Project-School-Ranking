package com.RS.modal;

import javax.validation.constraints.NotBlank;

public class info {
	@NotBlank
	private String nom;
	@NotBlank
	private String ville;
	@NotBlank
	private String description;

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getVille() {
		return ville;
	}

	public void setVille(String ville) {
		this.ville = ville;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public info() {
		super();
		// TODO Auto-generated constructor stub
	}

}
