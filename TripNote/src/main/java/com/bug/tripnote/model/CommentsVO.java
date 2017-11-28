package com.bug.tripnote.model;

public class CommentsVO {
	private int comment_no; // 댓글번호
	private String comment_content; // 댓글내용
	private PostingVO pvo; // 게시글번호
	private UsersVO uvo; // 회원번호
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

	public PostingVO getPvo() {
		return pvo;
	}

	public void setPvo(PostingVO pvo) {
		this.pvo = pvo;
	}

	public UsersVO getUvo() {
		return uvo;
	}

	public void setUvo(UsersVO uvo) {
		this.uvo = uvo;
	}

	// ----------------------------------
	@Override
	public String toString() {
		return "CommentsVO [comment_no=" + comment_no
				+ ", comment_content=" + comment_content
				+ ", pvo=" + pvo.getPosting_no()
				+ ", uvo=" + uvo.getUser_no() + "]";
	}

}
