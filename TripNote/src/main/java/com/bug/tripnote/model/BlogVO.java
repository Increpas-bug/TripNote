package com.bug.tripnote.model;

import org.springframework.web.multipart.MultipartFile;

/**
 * 
 * @author 이진수
 *
 */

public class BlogVO {
	private int blog_no; //블로그번호
	private int user_no; //회원번호
	private String blog_title; //블로그제목
	private String blog_detail; //블로그설명
	private String blog_profile_photo; //블로그프로필사진
	private String blog_title_photo; //블로그대문사진
	private String blog_font; //블로그글꼴
	private String blog_backgroundcolor; //블로그배경색
	private String blog_titlecolor; //블로그제목색
	private MultipartFile mfile;
	
	//----------------------------------------------
	public int getBlog_no() {
		return blog_no;
	}
	public void setBlog_no(int blog_no) {
		this.blog_no = blog_no;
	}
	public int getUser_no() {
		return user_no;
	}
	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}
	public String getBlog_title() {
		return blog_title;
	}
	public void setBlog_title(String blog_title) {
		this.blog_title = blog_title;
	}
	public String getBlog_detail() {
		return blog_detail;
	}
	public void setBlog_detail(String blog_detail) {
		this.blog_detail = blog_detail;
	}
	public String getBlog_profile_photo() {
		return blog_profile_photo;
	}
	public void setBlog_profile_photo(String blog_profile_photo) {
		this.blog_profile_photo = blog_profile_photo;
	}
	public String getBlog_title_photo() {
		return blog_title_photo;
	}
	public void setBlog_title_photo(String blog_title_photo) {
		this.blog_title_photo = blog_title_photo;
	}
	public String getBlog_font() {
		return blog_font;
	}
	public void setBlog_font(String blog_font) {
		this.blog_font = blog_font;
	}
	public String getBlog_backgroundcolor() {
		return blog_backgroundcolor;
	}
	public void setBlog_backgroundcolor(String blog_backgroundcolor) {
		this.blog_backgroundcolor = blog_backgroundcolor;
	}
	public String getBlog_titlecolor() {
		return blog_titlecolor;
	}
	public void setBlog_titlecolor(String blog_titlecolor) {
		this.blog_titlecolor = blog_titlecolor;
	}
	public MultipartFile getMfile() {
		return mfile;
	}
	public void setMfile(MultipartFile mfile) {
		this.mfile = mfile;
	}
	@Override
	public String toString() {
		return "BlogVO [blog_no=" + blog_no + ", user_no=" + user_no + ", blog_title=" + blog_title + ", blog_detail="
				+ blog_detail + ", blog_profile_photo=" + blog_profile_photo + ", blog_title_photo=" + blog_title_photo
				+ ", blog_font=" + blog_font + ", blog_backgroundcolor=" + blog_backgroundcolor + ", blog_titlecolor="
				+ blog_titlecolor + ", mfile=" + mfile + "]";
	}
	
}
