package com.bug.tripnote.model;

public class HashtagVO {

	private String posting_no;
	private String tag;

	public String getPosting_no() {
		return posting_no;
	}

	public void setPosting_no(String posting_no) {
		this.posting_no = posting_no;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	@Override
	public String toString() {
		return "HashtagVO [posting_no=" + posting_no + ", tag=" + tag + "]";
	}

}
