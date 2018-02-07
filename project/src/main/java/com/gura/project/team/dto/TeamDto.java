package com.gura.project.team.dto;

public class TeamDto {
	private String name;
	private String member;
	private int win;
	private int lose;
	private int total;
	private String ground;
	private String leader;
	private String jointeam;
	private String joinid;
	private String content;
	
	public TeamDto(){}

	public TeamDto(String name, String member, int win, int lose, int total, String ground, String leader,
			String jointeam, String joinid, String content) {
		super();
		this.name = name;
		this.member = member;
		this.win = win;
		this.lose = lose;
		this.total = total;
		this.ground = ground;
		this.leader = leader;
		this.jointeam = jointeam;
		this.joinid = joinid;
		this.content = content;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMember() {
		return member;
	}

	public void setMember(String member) {
		this.member = member;
	}

	public int getWin() {
		return win;
	}

	public void setWin(int win) {
		this.win = win;
	}

	public int getLose() {
		return lose;
	}

	public void setLose(int lose) {
		this.lose = lose;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public String getGround() {
		return ground;
	}

	public void setGround(String ground) {
		this.ground = ground;
	}

	public String getLeader() {
		return leader;
	}

	public void setLeader(String leader) {
		this.leader = leader;
	}

	public String getJointeam() {
		return jointeam;
	}

	public void setJointeam(String jointeam) {
		this.jointeam = jointeam;
	}

	public String getJoinid() {
		return joinid;
	}

	public void setJoinid(String joinid) {
		this.joinid = joinid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	
}