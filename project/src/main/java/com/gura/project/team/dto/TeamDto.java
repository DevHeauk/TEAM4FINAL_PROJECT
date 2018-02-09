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
	private String successMatching;
	//페이징 처리 고려 
	private int startRowNum;
	private int endRowNum;
	//이전글 다음글의 글번호
	private int prevNum;
	private int nextNum;
	
	public TeamDto(){}

	public TeamDto(String name, String member, int win, int lose, int total, String ground, String leader,
			String jointeam, String joinid, String content, String successMatching, int startRowNum, int endRowNum,
			int prevNum, int nextNum) {
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
		this.successMatching = successMatching;
		this.startRowNum = startRowNum;
		this.endRowNum = endRowNum;
		this.prevNum = prevNum;
		this.nextNum = nextNum;
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

	public String getSuccessMatching() {
		return successMatching;
	}

	public void setSuccessMatching(String successMatching) {
		this.successMatching = successMatching;
	}

	public int getStartRowNum() {
		return startRowNum;
	}

	public void setStartRowNum(int startRowNum) {
		this.startRowNum = startRowNum;
	}

	public int getEndRowNum() {
		return endRowNum;
	}

	public void setEndRowNum(int endRowNum) {
		this.endRowNum = endRowNum;
	}

	public int getPrevNum() {
		return prevNum;
	}

	public void setPrevNum(int prevNum) {
		this.prevNum = prevNum;
	}

	public int getNextNum() {
		return nextNum;
	}

	public void setNextNum(int nextNum) {
		this.nextNum = nextNum;
	}
	
	
}