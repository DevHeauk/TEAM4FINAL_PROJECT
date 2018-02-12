package com.gura.project.match.dto;

public class MatchDto {
	
	private String num;
	private String homeTeam;
	private String awayTeam;
	private int homePoint;
	private int awayPoint;
	public String  successMatching;
	private String matchDate;
	private String ground;
	private String saveFileName_H;
	private String saveFileName_A;

	
	public MatchDto(){}


	public MatchDto(String num, String homeTeam, String awayTeam, int homePoint, int awayPoint, String successMatching,
			String matchDate, String ground, String saveFileName_H, String saveFileName_A) {
		super();
		this.num = num;
		this.homeTeam = homeTeam;
		this.awayTeam = awayTeam;
		this.homePoint = homePoint;
		this.awayPoint = awayPoint;
		this.successMatching = successMatching;
		this.matchDate = matchDate;
		this.ground = ground;
		this.saveFileName_H = saveFileName_H;
		this.saveFileName_A = saveFileName_A;
	}


	public String getNum() {
		return num;
	}


	public void setNum(String num) {
		this.num = num;
	}


	public String getHomeTeam() {
		return homeTeam;
	}


	public void setHomeTeam(String homeTeam) {
		this.homeTeam = homeTeam;
	}


	public String getAwayTeam() {
		return awayTeam;
	}


	public void setAwayTeam(String awayTeam) {
		this.awayTeam = awayTeam;
	}


	public int getHomePoint() {
		return homePoint;
	}


	public void setHomePoint(int homePoint) {
		this.homePoint = homePoint;
	}


	public int getAwayPoint() {
		return awayPoint;
	}


	public void setAwayPoint(int awayPoint) {
		this.awayPoint = awayPoint;
	}


	public String getSuccessMatching() {
		return successMatching;
	}


	public void setSuccessMatching(String successMatching) {
		this.successMatching = successMatching;
	}


	public String getMatchDate() {
		return matchDate;
	}


	public void setMatchDate(String matchDate) {
		this.matchDate = matchDate;
	}


	public String getGround() {
		return ground;
	}


	public void setGround(String ground) {
		this.ground = ground;
	}


	public String getSaveFileName_H() {
		return saveFileName_H;
	}


	public void setSaveFileName_H(String saveFileName_H) {
		this.saveFileName_H = saveFileName_H;
	}


	public String getSaveFileName_A() {
		return saveFileName_A;
	}


	public void setSaveFileName_A(String saveFileName_A) {
		this.saveFileName_A = saveFileName_A;
	}
	
	
}
