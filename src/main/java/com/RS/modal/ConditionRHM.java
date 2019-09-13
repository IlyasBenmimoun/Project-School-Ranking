package com.RS.modal;

public class ConditionRHM {

	public  ConditionRHM() {
		super();
	}
	public int rank(rhm hm){
		int resultat=0;
		//nbr de profs par etudiant
		int profParEtd = (hm.getNbr_PA()+hm.getNbr_PES()+hm.getNbr_PH())/hm.getNbr_etudiant();
		//superficie par etudiant
		int supParEtd = hm.getSuperficie()/hm.getNbr_etudiant();



		if(hm.getNbr_pc()<=60) {
			resultat+=8;
		}
		if(hm.getNbr_pc()>60 && hm.getNbr_pc()<=100) {
			resultat+=12;
		}
		if(hm.getNbr_pc()>100) {
			resultat+=16;
		}
	    if(hm.getTransport().equals("oui")) {
				resultat+=12;
	    }
	    if(hm.getAcces_internet().equals("oui")) {
			resultat+=12;
        }
	    if(supParEtd >=4) {
	    	resultat+=16;
	    }
	    if(supParEtd >=2 && supParEtd <4 ) {
	    	resultat+=8;
	    }
	    if(hm.getNbr_fct_tech()<50) {
	    	resultat+=8;
	    }
	    if(hm.getNbr_fct_tech()>=50 && hm.getNbr_fct_tech()<60 ) {
	    	resultat+=10;
	    }
	    if(hm.getNbr_fct_tech()>=60 && hm.getNbr_fct_tech()<70) {
	    	resultat+=13;
	    }
	    if(hm.getNbr_fct_tech()>=70) {
	    	resultat+=16;
	    }
	    if(hm.getNbr_fct_adm()>=20) {
	    	resultat+=10;
	    }
	    if(profParEtd<30) {
	    	resultat+=20;
	    }
        if(profParEtd>=30 && profParEtd<40 ) {
	    	resultat+=14;
	    }
        if(profParEtd>40) {
	    	resultat+=10;
        }
	    
		
       
        
        
        
        
		
		
	return resultat;
	}
	
}
