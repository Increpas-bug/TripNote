package com.bug.tripnote.model;

import java.util.List;

public class MemberVO {
	
	
	private String email; //회원 아이디
	private String no; // 회원 번호
	private String nickname; //회원 별명
	private String pw; // 회원 비밀번호
	private String birth; // 회원 생년월일
	private String adminyn; // 회원 관리자 여부
	
	// MemberVOList 추가
		private List<MemberVO> memberVOList;	// 게시글의 목록
	
	
	// 생성자 추가(전체 회원 조회를 위한)
		
	public MemberVO() {
			super();
			// TODO Auto-generated constructor stub
		}
	//  email getter,setter 추가
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public MemberVO(String email, String no, String nickname, String pw, String birth, String adminyn,
			List<MemberVO> memberVOList) {	
		this.email = email;
		this.no = no;
		this.nickname = nickname;
		this.pw = pw;
		this.birth = birth;
		this.adminyn = adminyn;
		this.memberVOList = memberVOList;
	}
	
	// MemberVOList getter,setter 추가
	public List<MemberVO> getMemberVOList() {
		return memberVOList;
	}


	public void setMemberVOList(List<MemberVO> memberVOList) {
		this.memberVOList = memberVOList;
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
		return "MemberVO [email=" + email + ", no=" + no + ", nickname=" + nickname + ", pw=" + pw + ", birth=" + birth
				+ ", adminyn=" + adminyn + ", memberVOList=" + memberVOList + "]";
	}
	

}
