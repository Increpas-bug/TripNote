package com.bug.tripnote.model;

public class FavoritedetailVO {
	private int favorite_no; //관심사번호
	private String favorite_detail; //관심사키워드세분류
	
	public int getFavorite_no() {
		return favorite_no;
	}
	public void setFavorite_no(int favorite_no) {
		this.favorite_no = favorite_no;
	}
	public String getFavorite_detail() {
		return favorite_detail;
	}
	public void setFavorite_detail(String favorite_detail) {
		this.favorite_detail = favorite_detail;
	}
	
	@Override
	public String toString() {
		return "Favoritedetail [favorite_no=" + favorite_no + ", favorite_detail=" + favorite_detail + "]";
	}
	
	
}
