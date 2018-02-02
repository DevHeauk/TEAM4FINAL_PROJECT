package com.gura.project.users.dto;

public class UsersDto {
	private int num; // 입력
	private String name; // 입력
	private String addr01; // 입력
	private String addr02; // 입력
	private String addr03; // 입력
	private String team; // null
	private String id; // 입력
	private String pwd; // 입력
	private String email;
	private String career; // 입력
	private int money; // 0
	private int point; // 0
	private String b_position; // 입력
	private String regdate;
	private String responsibility;
	
	public UsersDto(){}

	public UsersDto(int num, String name, String addr01, String addr02, String addr03, String team, String id,
			String pwd, String email, String career, int money, int point, String b_position, String regdate,
			String responsibility) {
		super();
		this.num = num;
		this.name = name;
		this.addr01 = addr01;
		this.addr02 = addr02;
		this.addr03 = addr03;
		this.team = team;
		this.id = id;
		this.pwd = pwd;
		this.email = email;
		this.career = career;
		this.money = money;
		this.point = point;
		this.b_position = b_position;
		this.regdate = regdate;
		this.responsibility = responsibility;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddr01() {
		return addr01;
	}

	public void setAddr01(String addr01) {
		this.addr01 = addr01;
	}

	public String getAddr02() {
		return addr02;
	}

	public void setAddr02(String addr02) {
		this.addr02 = addr02;
	}

	public String getAddr03() {
		return addr03;
	}

	public void setAddr03(String addr03) {
		this.addr03 = addr03;
	}

	public String getTeam() {
		return team;
	}

	public void setTeam(String team) {
		this.team = team;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCareer() {
		return career;
	}

	public void setCareer(String career) {
		this.career = career;
	}

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		this.money = money;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
	}

	public String getB_position() {
		return b_position;
	}

	public void setB_position(String b_position) {
		this.b_position = b_position;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getResponsibility() {
		return responsibility;
	}

	public void setResponsibility(String responsibility) {
		this.responsibility = responsibility;
	}

	
}
