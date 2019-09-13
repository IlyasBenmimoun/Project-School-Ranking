package com.RS.modal;

import javax.validation.constraints.NotBlank;

public class VieEstudiantine {

	@NotBlank
	private int total_Prix;
	@NotBlank
	private int nombre_club;
	@NotBlank
	private String AdE;
	@NotBlank
	private String Assistance_medEt;
	@NotBlank
	private String Startup;
	@NotBlank
	private String ceremonie;
	@NotBlank
	private String[] choix;
	@NotBlank
	private String Assistance_medAnd;

	public VieEstudiantine() {
		super();
	}

	public int getTotal_Prix() {
		return total_Prix;
	}

	public void setTotal_Prix(int total_Prix) {
		this.total_Prix = total_Prix;
	}

	public int getNombre_club() {
		return nombre_club;
	}

	public void setNombre_club(int nombre_club) {
		this.nombre_club = nombre_club;
	}

	public String getAdE() {
		return AdE;
	}

	public void setAdE(String adE) {
		AdE = adE;
	}

	public String getAssistance_medEt() {
		return Assistance_medEt;
	}

	public void setAssistance_medEt(String assistance_medEt) {
		Assistance_medEt = assistance_medEt;
	}

	public String getStartup() {
		return Startup;
	}

	public void setStartup(String startup) {
		Startup = startup;
	}

	public String getCeremonie() {
		return ceremonie;
	}

	public void setCeremonie(String ceremonie) {
		this.ceremonie = ceremonie;
	}

	public String[] getChoix() {
		return choix;
	}

	public void setChoix(String[] choix) {
		this.choix = choix;
	}

	public String getAssistance_medAnd() {
		return Assistance_medAnd;
	}

	public void setAssistance_medAnd(String assistance_medAnd) {
		Assistance_medAnd = assistance_medAnd;
	}

}
