package com.bug.tripnote.model;

public class CommentsVO {
	private int comment_no; // 댓글번호
	private String comment_content; // 댓글내용
	private int posting_no; // 게시글번호
	private int user_no; // 회원번호
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
	
	@Override
	public String toString() {
		return "CommentsVO [comment_no=" + comment_no + ", comment_content=" + comment_content + ", posting_no="
				+ posting_no + ", user_no=" + user_no + "]";
	}

	

}
