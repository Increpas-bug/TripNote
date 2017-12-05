package com.bug.tripnote.model;

import java.util.List;

public class MemberVO {
	
	private String user_no;
	private String user_email;
	private String user_nickname;
	private String user_pw;
	private String user_birth;
	private String user_adminyn;
	private String user_blogyn;
	
	// MemberVOList 추가
	private List<MemberVO> memberVOList;	// 게시글의 목록
	
	// MemberVOList getter,setter 추가
	public List<MemberVO> getMemberVOList() {
		return memberVOList;
	}

	public void setMemberVOList(List<MemberVO> memberVOList) {
		this.memberVOList = memberVOList;
	}

	public String getUser_no() {
		return user_no;
	}

	public void setUser_no(String user_no) {
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

	public String getUser_adminyn() {
		return user_adminyn;
	}

	public void setUser_adminyn(String user_adminyn) {
		this.user_adminyn = user_adminyn;
	}

	public String getUser_blogyn() {
		return user_blogyn;
	}

	public void setUser_blogyn(String user_blogyn) {
		this.user_blogyn = user_blogyn;
	}

	@Override
	public String toString() {
		return "MemberVO [user_no=" + user_no + ", user_email=" + user_email + ", user_nickname=" + user_nickname
				+ ", user_pw=" + user_pw + ", user_birth=" + user_birth + ", user_adminyn=" + user_adminyn
				+ ", user_blogyn=" + user_blogyn + ", memberVOList=" + memberVOList + "]";
	}

	

}
