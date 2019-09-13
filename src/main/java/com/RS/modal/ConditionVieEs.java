package com.RS.modal;

public class ConditionVieEs {

	public  ConditionVieEs() {
		super();
	}
	
	public int rank(VieEstudiantine vie){
		int resultat=0;
		if(vie.getTotal_Prix()==1) {
			resultat+=5;
		}
		if(vie.getTotal_Prix()==2) {
			resultat+=10;
		}
		if(vie.getTotal_Prix()>=3) {
			resultat+=12;
		}
		if(vie.getNombre_club()>=1 && vie.getNombre_club()<=4) {
			resultat+=5;
		}
		if(vie.getNombre_club()>4 && vie.getNombre_club()<=12) {
			resultat+=12;
		}
		if(vie.getNombre_club()>12 ) {
			resultat+=15;
		}
		if(vie.getAdE().equals("oui")) {
			resultat+=12;
		}
		if(vie.getAssistance_medEt().equals("oui")) {
			resultat+=13;
		}
		if(vie.getAssistance_medAnd().equals("oui")) {
			resultat+=12;
		}
		if(vie.getCeremonie().equals("oui")) {
			resultat+=10;
		}
		if(vie.getStartup().equals("oui")) {
			resultat+=14;
		}
		String [] tab=vie.getChoix();
		if(tab!=null) {
		for(int i=0;i<tab.length;i++) {
			if(tab[i]=="Internat") {
				resultat+=3;
			}
			if(tab[i]=="Mosquée") {
				resultat+=3;
			}
			if(tab[i]=="Buvette") {
				resultat+=3;
			}
			if(tab[i]=="sport") {
				resultat+=3;
			}
		}
		}
		return resultat;
	}
}
