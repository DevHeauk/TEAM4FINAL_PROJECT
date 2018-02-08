package com.gura.project.match.dto;

public class MatchDto {
	
	private String num;
	private String homeTeam;
	private String awayTeam;
	private int homePoint;
	private int awayPoint;
	private String matchDate;
	private String ground;
	private int wincount;
	private int losecount;
	private int totalcount;
	public MatchDto(){}
	public MatchDto(String name, String num, String homeTeam, String awayTeam, int homePoint, int awayPoint,
			String matchDate, String ground, int wincount, int losecount, int totalcount) {
		super();
		this.num = num;
		this.homeTeam = homeTeam;
		this.awayTeam = awayTeam;
		this.homePoint = homePoint;
		this.awayPoint = awayPoint;
		this.matchDate = matchDate;
		this.ground = ground;
		this.wincount = wincount;
		this.losecount = losecount;
		this.totalcount = totalcount;
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
	public int getWincount() {
		return wincount;
	}
	public void setWincount(int wincount) {
		this.wincount = wincount;
	}
	public int getLosecount() {
		return losecount;
	}
	public void setLosecount(int losecount) {
		this.losecount = losecount;
	}
	public int getTotalcount() {
		return totalcount;
	}
	public void setTotalcount(int totalcount) {
		this.totalcount = totalcount;
	}
	
	
	
	
}
