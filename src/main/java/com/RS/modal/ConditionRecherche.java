package com.RS.modal;

public class ConditionRecherche {

	public ConditionRecherche() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int rank(recherche Recherche) {
		int resultat = 0;

		if (Recherche.getFormation_doctorat().equals("oui")) {
			resultat += 20;

		}
		if (Recherche.getNombre_doctorant() >= 1 && Recherche.getNombre_doctorant() < 5) {
			resultat += 5;
		}
		if (Recherche.getNombre_doctorant() >= 5 && Recherche.getNombre_doctorant() < 10) {
			resultat += 10;
		}
		if (Recherche.getNombre_doctorant() >= 10) {
			resultat += 15;
		}
		if (Recherche.getNombre_Enseignants_chercheurs() >= 1 && Recherche.getNombre_Enseignants_chercheurs() < 5) {
			resultat += 5;
		}
		if (Recherche.getNombre_Enseignants_chercheurs() >= 5 && Recherche.getNombre_Enseignants_chercheurs() < 10) {
			resultat += 15;
		}
		if (Recherche.getNombre_Enseignants_chercheurs() >= 10) {
			resultat += 25;
		}
		if (Recherche.getNB_Articles_indexés() == 1) {
			resultat += 10;
		}
		if (Recherche.getNB_Articles_indexés() == 2) {
			resultat += 15;
		}
		if (Recherche.getNB_Articles_indexés() > 2) {
			resultat += 20;
		}

		if (Recherche.getPrix_gagnée() >= 1 && Recherche.getPrix_gagnée() <= 3) {
			resultat += 10;
		}
		if (Recherche.getNB_Articles_indexés() > 3) {
			resultat += 20;
		}
		return resultat;

	}
}