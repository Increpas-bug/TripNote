package com.bug.tripnote.model;

public class UsersVO {
	private int user_no; //회원번호
	private String user_email; //회원이메일
	private String user_nickname; //회원닉네임
	private String user_pw; //회원비밀번호
	private String user_birth; //회원생년월일
	private String adminyn; //회원관리자여부(관리자:Y, 일반회원:N)
	
	//------------------------------------------
	
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_nickname() {
		return user_nickname;
	}
	public void setUser_nickname(String user_nickname) {
		this.user_nickname = user_nickname;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_birth() {
		return user_birth;
	}
	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
	}
	public String getAdminyn() {
		return adminyn;
	}
	public void setAdminyn(String adminyn) {
		this.adminyn = adminyn;
	}
	
	//------------------------------------------
	
	@Override
	public String toString() {
		return "UsersVO [user_no=" + user_no + ", user_email=" + user_email + ", user_nickname=" + user_nickname
				+ ", user_pw=" + user_pw + ", user_birth=" + user_birth + ", adminyn=" + adminyn + "]";
	}
}
