package com.bug.tripnote.model;

import java.sql.Timestamp;

public class KeepingVO {
	private int user_no; // 회원번호
	private int posting_no; // 게시글번호
	private Timestamp keeping_date; // 보관날짜

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

	public Timestamp getKeeping_date() {
		return keeping_date;
	}

	public void setKeeping_date(Timestamp keeping_date) {
		this.keeping_date = keeping_date;
	}

	@Override
	public String toString() {
		return "KeepingVO [user_no=" + user_no + ", posting_no=" + posting_no + ", keeping_date=" + keeping_date + "]";
	}

}
