package com.bug.tripnote.model;

import java.sql.Timestamp;

public class LikesVO {

	private int user_no;
	private int posting_no;
	private Timestamp likes_date;

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

	public Timestamp getLikes_date() {
		return likes_date;
	}

	public void setLikes_date(Timestamp likes_date) {
		this.likes_date = likes_date;
	}

	@Override
	public String toString() {
		return "LikesVO [user_no=" + user_no + ", posting_no=" + posting_no + ", likes_date=" + likes_date + "]";
	}

}
