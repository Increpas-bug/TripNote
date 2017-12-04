package com.bug.tripnote.model;

import java.util.List;

///* 블랙리스트 */
//CREATE TABLE blacklist (
//	user_email VARCHAR2(50), /* 회원이메일 */
//	ban_reason VARCHAR2(500), /* 강제탈퇴사유 */
//	ban_date DATE DEFAULT sysdate /* 강제탈퇴날짜 */
//);
//
//COMMENT ON TABLE blacklist IS '블랙리스트';
//
//COMMENT ON COLUMN blacklist.user_email IS '회원이메일';
//
//COMMENT ON COLUMN blacklist.ban_reason IS '강제탈퇴사유';
//
//COMMENT ON COLUMN blacklist.ban_date IS '강제탈퇴날짜';

public class BlacklistVO {
	
	private String user_email; /* 회원이메일 */
	private String ban_reason; /* 강제탈퇴사유 */
	private String ban_date; /* 강제탈퇴날짜 */
	
	
	// 생성자 추가(블랙리스트 회원 조회를 위한)
	
	public BlacklistVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	// BlacklistVOList 추가
	private List<BlacklistVO> blacklistVOList;
	

	

	public BlacklistVO(String user_email, String ban_reason, String ban_date, List<BlacklistVO> blacklistVOList) {		
		this.user_email = user_email;
		this.ban_reason = ban_reason;
		this.ban_date = ban_date;
		this.blacklistVOList = blacklistVOList;
	}
	
	// BlacklistVOList getter,setter 추가
	public List<BlacklistVO> getBlacklistVOList() {
		return blacklistVOList;
	}

	public void setBlacklistVOList(List<BlacklistVO> blacklistVOList) {
		this.blacklistVOList = blacklistVOList;
	}	
	
	
	
	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getBan_reason() {
		return ban_reason;
	}
	public void setBan_reason(String ban_reason) {
		this.ban_reason = ban_reason;
	}
	public String getBan_date() {
		return ban_date;
	}
	public void setBan_date(String ban_date) {
		this.ban_date = ban_date;
	}	
	@Override
	public String toString() {
		return "BlacklistVO [user_email=" + user_email + ", ban_reason=" + ban_reason + ", ban_date=" + ban_date + "]";
	}
	
	
	
}
