package com.bug.tripnote.model;

import java.sql.Timestamp;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

//CREATE TABLE posting (
//posting_no NUMBER NOT NULL, /* 게시글번호 */
//posting_title VARCHAR2(50), /* 게시글제목 */
//posting_content VARCHAR2(1000), /* 게시글내용 */
//posting_date DATE DEFAULT sysdate, /* 게시글날짜 */
//posting_uploadpath VARCHAR2(50), /* 게시글업로드경로 */
//posting_hitcount NUMBER DEFAULT 0, /* 게시글누적조회수 */
//posting_weekly_hitcount NUMBER DEFAULT 0, /* 게시글주간조회수 */
//posting_likecount NUMBER DEFAULT 0, /* 게시글좋아요횟수 */
//posting_badcount NUMBER DEFAULT 0, /* 게시글신고횟수 */
//posting_location VARCHAR2(500), /* 게시글위치정보 */
//user_no NUMBER, /* 회원번호 */
//blog_no NUMBER /* 블로그번호 */
//);

public class PostingVO {
	private int posting_no; /* 게시글번호 */
	private String posting_title; /* 게시글제목 */
	private String posting_content; /* 게시글내용 */
	private Timestamp posting_date; /* 게시글날짜 */
	private String posting_uploadpath; /* 게시글업로드경로 */
	private int posting_hitcount; /* 게시글누적조회수 */
	private int posting_weekly_hitcount; /* 게시글주간조회수 */
	private int posting_likecount; /* 게시글좋아요횟수 */
	private int posting_badcount; /* 게시글신고횟수 */
	private String posting_location; /* 게시글위치정보 */
	private int user_no; /* 회원번호 */
	private int blog_no; /* 블로그번호 */

	private String tag;
	private MultipartFile mfile; // 파일업로드용 
	
	private String blog_title; /* 블로그제목 */
	private String keepingYN; /* 사용자 게시글보관여부 */
	private String likesYN; /* 사용자 좋아요여부 */
	private List<String> hashtag; /* 해시태그 리스트로 받아오기 */
	private List<CommentsVO> comments; /* 댓글 리스트로 받아오기 */
	
	// 생성자 추가(전체 포스팅 조회를 위한)
	public PostingVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	// PostingVOList 추가
	private List<PostingVO> postingVOList; // 게시글의 목록

	public PostingVO(List<PostingVO> postingVOList, int posting_no, String posting_title, String posting_content,
			Timestamp posting_date, String posting_uploadpath, int posting_hitcount, int posting_weekly_hitcount,
			int posting_likecount, int posting_badcount, String posting_location, int user_no, int blog_no) {

		this.postingVOList = postingVOList;
		this.posting_no = posting_no;
		this.posting_title = posting_title;
		this.posting_content = posting_content;
		this.posting_date = posting_date;
		this.posting_uploadpath = posting_uploadpath;
		this.posting_hitcount = posting_hitcount;
		this.posting_weekly_hitcount = posting_weekly_hitcount;
		this.posting_likecount = posting_likecount;
		this.posting_badcount = posting_badcount;
		this.posting_location = posting_location;
		this.user_no = user_no;
		this.blog_no = blog_no;

	}

	// PostingVOList getter,setter 추가
	public List<PostingVO> getPostingVOList() {
		return postingVOList;
	}

	public void setPostingVOList(List<PostingVO> postingVOList) {
		this.postingVOList = postingVOList;
	}

	public int getPosting_no() {
		return posting_no;
	}

	public void setPosting_no(int posting_no) {
		this.posting_no = posting_no;
	}

	public String getPosting_title() {
		return posting_title;
	}

	public void setPosting_title(String posting_title) {
		this.posting_title = posting_title;
	}

	public String getPosting_content() {
		return posting_content;
	}

	public void setPosting_content(String posting_content) {
		this.posting_content = posting_content;
	}

	public Timestamp getPosting_date() {
		return posting_date;
	}

	public void setPosting_date(Timestamp posting_date) {
		this.posting_date = posting_date;
	}

	public String getPosting_uploadpath() {
		return posting_uploadpath;
	}

	public void setPosting_uploadpath(String posting_uploadpath) {
		this.posting_uploadpath = posting_uploadpath;
	}

	public int getPosting_hitcount() {
		return posting_hitcount;
	}

	public void setPosting_hitcount(int posting_hitcount) {
		this.posting_hitcount = posting_hitcount;
	}

	public int getPosting_weekly_hitcount() {
		return posting_weekly_hitcount;
	}

	public void setPosting_weekly_hitcount(int posting_weekly_hitcount) {
		this.posting_weekly_hitcount = posting_weekly_hitcount;
	}

	public int getPosting_likecount() {
		return posting_likecount;
	}

	public void setPosting_likecount(int posting_likecount) {
		this.posting_likecount = posting_likecount;
	}

	public int getPosting_badcount() {
		return posting_badcount;
	}

	public void setPosting_badcount(int posting_badcount) {
		this.posting_badcount = posting_badcount;
	}

	public String getPosting_location() {
		return posting_location;
	}

	public void setPosting_location(String posting_location) {
		this.posting_location = posting_location;
	}

	public int getUser_no() {
		return user_no;
	}

	public void setUser_no(int user_no) {
		this.user_no = user_no;
	}

	public int getBlog_no() {
		return blog_no;
	}

	public void setBlog_no(int blog_no) {
		this.blog_no = blog_no;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public MultipartFile getMfile() {
		return mfile;
	}

	public void setMfile(MultipartFile mfile) {
		this.mfile = mfile;
	}

	public String getBlog_title() {
		return blog_title;
	}

	public void setBlog_title(String blog_title) {
		this.blog_title = blog_title;
	}

	public List<String> getHashtag() {
		return hashtag;
	}

	public void setHashtag(List<String> hashtag) {
		this.hashtag = hashtag;
	}

	public String getKeepingYN() {
		return keepingYN;
	}

	public void setKeepingYN(String keepingYN) {
		this.keepingYN = keepingYN;
	}

	public String getLikesYN() {
		return likesYN;
	}

	public void setLikesYN(String likesYN) {
		this.likesYN = likesYN;
	}

	public List<CommentsVO> getComments() {
		return comments;
	}

	public void setComments(List<CommentsVO> comments) {
		this.comments = comments;
	}

	@Override
	public String toString() {
		return "PostingVO [posting_no=" + posting_no + ", posting_title=" + posting_title + ", posting_content="
				+ posting_content + ", posting_date=" + posting_date + ", posting_uploadpath=" + posting_uploadpath
				+ ", posting_hitcount=" + posting_hitcount + ", posting_weekly_hitcount=" + posting_weekly_hitcount
				+ ", posting_likecount=" + posting_likecount + ", posting_badcount=" + posting_badcount
				+ ", posting_location=" + posting_location + ", user_no=" + user_no + ", blog_no=" + blog_no + ", tag="
				+ tag + ", mfile=" + mfile + ", blog_title=" + blog_title + ", keepingYN=" + keepingYN + ", likesYN="
				+ likesYN + ", hashtag=" + hashtag + ", comments=" + comments + ", postingVOList=" + postingVOList
				+ "]";
	}

}
