package com.bug.tripnote.model;

public class KeepingVO {
	private int user_no; //회원번호
	private int posting_no; //게시글번호
	
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	public int getPosting_no() {
		return posting_no;
	}
	public void setPosting_no(int posting_no) {
		this.posting_no = posting_no;
	}
	
	@Override
	public String toString() {
		return "Keeping [user_no=" + user_no + ", posting_no=" + posting_no + "]";
	}
	
	
}
