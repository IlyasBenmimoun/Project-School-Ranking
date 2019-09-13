package com.RS.modal;

import javax.validation.constraints.NotBlank;

public class rhm {
	@NotBlank
	private int nbr_PA;
	@NotBlank
	private int nbr_PES;
	@NotBlank
	private int nbr_PH;
	@NotBlank
	private int nbr_etudiant;
	@NotBlank
	private int nbr_pc;
	@NotBlank
	private int nbr_fct_adm;
	@NotBlank
	private int nbr_fct_tech;
	@NotBlank
	private int superficie;
	@NotBlank
	private String acces_internet;
	@NotBlank
	private String transport;

	public rhm() {
		super();
	}

	public int getNbr_PA() {
		return nbr_PA;
	}

	public void setNbr_PA(int nbr_PA) {
		this.nbr_PA = nbr_PA;
	}

	public int getNbr_PES() {
		return nbr_PES;
	}

	public void setNbr_PES(int nbr_PES) {
		this.nbr_PES = nbr_PES;
	}

	public int getNbr_PH() {
		return nbr_PH;
	}

	public void setNbr_PH(int nbr_PH) {
		this.nbr_PH = nbr_PH;
	}

	public int getNbr_etudiant() {
		return nbr_etudiant;
	}

	public void setNbr_etudiant(int nbr_etudiant) {
		this.nbr_etudiant = nbr_etudiant;
	}

	public int getNbr_pc() {
		return nbr_pc;
	}

	public void setNbr_pc(int nbr_pc) {
		this.nbr_pc = nbr_pc;
	}

	public int getNbr_fct_adm() {
		return nbr_fct_adm;
	}

	public void setNbr_fct_adm(int nbr_fct_adm) {
		this.nbr_fct_adm = nbr_fct_adm;
	}

	public int getNbr_fct_tech() {
		return nbr_fct_tech;
	}

	public void setNbr_fct_tech(int nbr_fct_tech) {
		this.nbr_fct_tech = nbr_fct_tech;
	}

	public int getSuperficie() {
		return superficie;
	}

	public void setSuperficie(int superficie) {
		this.superficie = superficie;
	}

	public String getAcces_internet() {
		return acces_internet;
	}

	public void setAcces_internet(String acces_internet) {
		this.acces_internet = acces_internet;
	}

	public String getTransport() {
		return transport;
	}

	public void setTransport(String transport) {
		this.transport = transport;
	}

}
