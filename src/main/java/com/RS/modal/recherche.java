package com.RS.modal;

import javax.validation.constraints.NotBlank;

public class recherche {
	@NotBlank
	private String Formation_doctorat;
	@NotBlank
	private int Nombre_doctorant;
	@NotBlank
	private int Nombre_Enseignants_chercheurs;
	@NotBlank
	private int NB_Articles_indexés;
	@NotBlank
	private int Prix_gagnée;

	public recherche() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getFormation_doctorat() {
		return Formation_doctorat;
	}

	public void setFormation_doctorat(String formation_doctorat) {
		Formation_doctorat = formation_doctorat;
	}

	public int getNombre_doctorant() {
		return Nombre_doctorant;
	}

	public void setNombre_doctorant(int nombre_doctorant) {
		Nombre_doctorant = nombre_doctorant;
	}

	public int getNombre_Enseignants_chercheurs() {
		return Nombre_Enseignants_chercheurs;
	}

	public void setNombre_Enseignants_chercheurs(int nombre_Enseignants_chercheurs) {
		Nombre_Enseignants_chercheurs = nombre_Enseignants_chercheurs;
	}

	public int getNB_Articles_indexés() {
		return NB_Articles_indexés;
	}

	public void setNB_Articles_indexés(int nB_Articles_indexés) {
		NB_Articles_indexés = nB_Articles_indexés;
	}

	public int getPrix_gagnée() {
		return Prix_gagnée;
	}

	public void setPrix_gagnée(int prix_gagnée) {
		Prix_gagnée = prix_gagnée;
	}

}
