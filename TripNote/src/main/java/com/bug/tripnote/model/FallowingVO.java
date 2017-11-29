package com.bug.tripnote.model;

public class FallowingVO {
	private int user_no; //회원번호
	private String following_user_no; //팔로잉회원번호
	
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	public String getFollowing_user_no() {
		return following_user_no;
	}
	public void setFollowing_user_no(String following_user_no) {
		this.following_user_no = following_user_no;
	}
	
	@Override
	public String toString() {
		return "Fallowing [user_no=" + user_no + ", following_user_no=" + following_user_no + "]";
	}
	
	
}
