package com.gura.project.match.dto;

public class MatchDto {
	private String homeTeam;
	private String awayTeam;
	private int homePoint;
	private int awayPoint;
	private String matchDate;
	private String ground;
	
	public MatchDto(){}
	
	public MatchDto(String homeTeam, String awayTeam, int homePoint, int awayPoint, String matchDate, String ground) {
		super();
		this.homeTeam = homeTeam;
		this.awayTeam = awayTeam;
		this.homePoint = homePoint;
		this.awayPoint = awayPoint;
		this.matchDate = matchDate;
		this.ground = ground;
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
	
}
