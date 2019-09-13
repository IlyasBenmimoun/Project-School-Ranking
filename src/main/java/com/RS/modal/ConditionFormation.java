package com.RS.modal;

public class ConditionFormation {
	public ConditionFormation(){
        super();
    }

    

    
    public int rank(Formation fmt){
    	int i=0;
    	
        if(fmt.getStr_acceuil().equals("oui")){
            i += 7;
        }
        if(fmt.getModifi_fliere().equals("oui")){
            i +=8;
        }
        if(fmt.getEvaluation_inst().equals("oui") && fmt.getRapport().equals("oui")){
            i +=9;
        }
        if(fmt.getStr_stage().equals("oui")){
            i +=10;
        }
        if(fmt.getCertification().equals("oui")){
            i +=6;
        }
        if(fmt.getBudget_para().equals("oui")){
            i +=5;
        }
        if(fmt.getConvon_etr().equals("oui")){
            i +=6;
        }
        if(fmt.getBourse().equals("oui")){
            i +=6;
        }
        if(fmt.getContact_lau().equals("oui")){
            i +=5;
        }
        if(fmt.getSuivie_ett().equals("Oui")){
            i +=6;
        }
        if(fmt.getAtelier().equals("oui")){
            i +=3;
        }
        if(fmt.getWorkshop().equals("oui")){
            i +=3;
        }
        if(fmt.getConf().equals("oui")){
            i +=3;
        }else{ i = i + 0;}
        String[] test = fmt.getCom_etudiant();
        for(int j=0; j<test.length ; j++){
            if(test[j].equals("Affiches")){
                i = i + 2;
            }
            if(test[j].equals("Email")){
                i = i + 2;
            }
            if(test[j].equals("site")){
                i = i + 4;
            }
            if(test[j].equals("ENT")){
                i = i + 5;
            }
            if(test[j].equals("rese")){
                i = i + 3;
            }
            else {i=i+0;}
           

        }
		return i;


        
    }

   



}
