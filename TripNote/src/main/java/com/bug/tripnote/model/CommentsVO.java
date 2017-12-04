package com.bug.tripnote.model;

import java.sql.Timestamp;

public class CommentsVO {
	private int comment_no; // 댓글번호
	private String comment_content; // 댓글내용
	private Timestamp comment_date; // 댓글날짜
	private int posting_no; // 게시글번호
	private int user_no; // 회원번호
	private String user_nickname; // 회원닉네임
	// ----------------------------------

	public int getComment_no() {
		return comment_no;
	}

	public void setComment_no(int comment_no) {
		this.comment_no = comment_no;
	}

	public String getComment_content() {
		return comment_content;	
	}

	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}

	public Timestamp getComment_date() {
		return comment_date;
	}

	public void setComment_date(Timestamp comment_date) {
		this.comment_date = comment_date;
	}

	public int getPosting_no() {
		return posting_no;
	}

	public void setPosting_no(int posting_no) {
		this.posting_no = posting_no;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public String getUser_nickname() {
		return user_nickname;
	}

	public void setUser_nickname(String user_nickname) {
		this.user_nickname = user_nickname;
	}

	@Override
	public String toString() {
		return "CommentsVO [comment_no=" + comment_no + ", comment_content=" + comment_content + ", comment_date="
				+ comment_date + ", posting_no=" + posting_no + ", user_no=" + user_no + ", user_nickname="
				+ user_nickname + "]";
	}

}
