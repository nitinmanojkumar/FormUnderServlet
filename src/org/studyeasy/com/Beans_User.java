package org.studyeasy.com;

public class Beans_User {

	private String firstNM;
	private String lastNM;
	public Beans_User() {
		System.out.println("Inside constructor");
		firstNM="John";
		lastNM="Wick";
	}
	public String getFirstNM() {
		return firstNM;
	}
	public void setFirstNM(String firstNM) {
		this.firstNM = firstNM;
	}
	public String getLastNM() {
		return lastNM;
	}
	public void setLastNM(String lastNM) {
		this.lastNM = lastNM;
	}
	
	
	
}
