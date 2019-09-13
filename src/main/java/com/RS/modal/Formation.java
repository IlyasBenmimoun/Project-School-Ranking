package com.RS.modal;
import javax.validation.constraints.NotBlank;

public class Formation {
	 @NotBlank
	    private String str_acceuil;
	    @NotBlank
	    private String modifi_fliere;
	    @NotBlank
	    private String evaluation_inst;
	    @NotBlank
	    private String rapport;
	    @NotBlank
	    private String str_stage;
	    @NotBlank
	    private  String[] com_etudiant;
	    @NotBlank
	    private String certification;
	    @NotBlank
	    private String budget_para;
	    @NotBlank
	    private String convon_etr;
	    @NotBlank
	    private String bourse;
	    @NotBlank
	    private String contact_lau;
	    @NotBlank
	    private String suivie_ett;
	    @NotBlank
	    private String atelier;
	    @NotBlank
	    private String workshop;
	    @NotBlank
	    private String Conf;

	    private int somme;


	    public Formation(){
	        super();
	    }

	    public String getStr_acceuil() {
	        return str_acceuil;
	    }

	    public void setStr_acceuil(String str_acceuil) {
	        this.str_acceuil = str_acceuil;
	    }

	    public String getModifi_fliere() {
	        return modifi_fliere;
	    }

	    public void setModifi_fliere(String modifi_fliere) {
	        this.modifi_fliere = modifi_fliere;
	    }

	    public String getEvaluation_inst() {
	        return evaluation_inst;
	    }

	    public void setEvaluation_inst(String evaluation_inst) {
	        this.evaluation_inst = evaluation_inst;
	    }

	    public String getRapport() {
	        return rapport;
	    }

	    public void setRapport(String rapport) {
	        this.rapport = rapport;
	    }

	    public String getStr_stage() {
	        return str_stage;
	    }

	    public void setStr_stage(String str_stage) {
	        this.str_stage = str_stage;
	    }

	    public String[] getCom_etudiant() {
	        return com_etudiant;
	    }

	    public void setCom_etudiant(String[] com_etudiant) {
	        this.com_etudiant = com_etudiant;
	    }

	    public String getCertification() {
	        return certification;
	    }

	    public void setCertification(String certification) {
	        this.certification = certification;
	    }

	    public String getBudget_para() {
	        return budget_para;
	    }

	    public void setBudget_para(String budget_para) {
	        this.budget_para = budget_para;
	    }

	    public String getConvon_etr() {
	        return convon_etr;
	    }

	    public void setConvon_etr(String convon_etr) {
	        this.convon_etr = convon_etr;
	    }

	    public String getBourse() {
	        return bourse;
	    }

	    public void setBourse(String bourse) {
	        this.bourse = bourse;
	    }

	    public String getContact_lau() {
	        return contact_lau;
	    }

	    public void setContact_lau(String contact_lau) {
	        this.contact_lau = contact_lau;
	    }

	    public String getSuivie_ett() {
	        return suivie_ett;
	    }

	    public void setSuivie_ett(String suivie_ett) {
	        this.suivie_ett = suivie_ett;
	    }

	    public String getAtelier() {
	        return atelier;
	    }

	    public void setAtelier(String atelier) {
	        this.atelier = atelier;
	    }

	    public String getWorkshop() {
	        return workshop;
	    }

	    public void setWorkshop(String workshop) {
	        this.workshop = workshop;
	    }

	    public String getConf() {
	        return Conf;
	    }

	    public void setConf(String conf) {
	        Conf = conf;
	    }

	    public int getSomme() {
	        return somme;
	    }

	    public void setSomme(int somme) {
	        this.somme = somme;
	    }
}
