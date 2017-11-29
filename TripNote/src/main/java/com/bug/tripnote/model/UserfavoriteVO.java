package com.bug.tripnote.model;

public class UserfavoriteVO {
	private int user_no; //회원번호
	private int favorite_no; //관심사번호
	
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	public int getFavorite_no() {
		return favorite_no;
	}
	public void setFavorite_no(int favorite_no) {
		this.favorite_no = favorite_no;
	}
	
	@Override
	public String toString() {
		return "Userfavorite [user_no=" + user_no + ", favorite_no=" + favorite_no + "]";
	}
	
	
}
