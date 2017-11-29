package com.bug.tripnote.model;

public class BadVO {
	private int posting_no; //게시글번호
	private String posting_badreason; //게시글신고사유
	
	public int getPosting_no() {
		return posting_no;
	}
	public void setPosting_no(int posting_no) {
		this.posting_no = posting_no;
	}
	public String getPosting_badreason() {
		return posting_badreason;
	}
	public void setPosting_badreason(String posting_badreason) {
		this.posting_badreason = posting_badreason;
	}
	
	@Override
	public String toString() {
		return "Bad [posting_no=" + posting_no + ", posting_badreason=" + posting_badreason + "]";
	}
	
	
}
