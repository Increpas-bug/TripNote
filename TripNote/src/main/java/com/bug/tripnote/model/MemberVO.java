package com.bug.tripnote.model;

public class MemberVO {
	
	private String id; //회원 아이디
	private String no; // 회원 번호
	private String nickname; //회원 별명
	private String pw; // 회원 비밀번호
	private String birth; // 회원 생년월일
	private String adminyn; // 회원 관리자 여부
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getAdminyn() {
		return adminyn;
	}
	public void setAdminyn(String adminyn) {
		this.adminyn = adminyn;
	}
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", no=" + no + ", nickname=" + nickname + ", pw=" + pw + ", birth=" + birth
				+ ", adminyn=" + adminyn + "]";
	}
	

}
