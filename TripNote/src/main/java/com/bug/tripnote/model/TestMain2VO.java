package com.bug.tripnote.model;



public class TestMain2VO {
	
	private String postNum;
	private String title;
	private String content;
	private String imageUrl;
	
	public TestMain2VO(String postNum, String title, String content, String imageUrl) {
		super();
		this.postNum = postNum;
		this.title = title;
		this.content = content;
		this.imageUrl = imageUrl;
	}
	public String getPostNum() {
		return postNum;
	}
	public void setPostNum(String postNum) {
		this.postNum = postNum;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	
	
}
