package com.bug.tripnote.model;

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
