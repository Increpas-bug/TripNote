package com.bug.tripnote.model;

public class FavoriteVO {
	private int favorite_no; //관심사 번호
	private String favorite_keywored; //관심사키워드
	private String favorite_useyn; //관심사사용여부
	
	public int getFavorite_no() {
		return favorite_no;
	}
	public void setFavorite_no(int favorite_no) {
		this.favorite_no = favorite_no;
	}
	public String getFavorite_keywored() {
		return favorite_keywored;
	}
	public void setFavorite_keywored(String favorite_keywored) {
		this.favorite_keywored = favorite_keywored;
	}
	public String getFavorite_useyn() {
		return favorite_useyn;
	}
	public void setFavorite_useyn(String favorite_useyn) {
		this.favorite_useyn = favorite_useyn;
	}
	@Override
	public String toString() {
		return "Favorite [favorite_no=" + favorite_no + ", favorite_keywored=" + favorite_keywored + ", favorite_useyn="
				+ favorite_useyn + "]";
	}
	
	
}
