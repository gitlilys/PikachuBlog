package com.pikachu.domain;

import java.util.Date;

public class Comment {

	String comment_id;
	String comment_paperid;
	String comment_content;
	Date comment_time;
	
	public String getComment_id() {
		return comment_id;
	}
	public void setComment_id(String comment_id) {
		this.comment_id = comment_id;
	}
	public String getComment_paperid() {
		return comment_paperid;
	}
	public void setComment_paperid(String comment_paperid) {
		this.comment_paperid = comment_paperid;
	}
	public String getComment_content() {
		return comment_content;
	}
	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	public Date getComment_time() {
		return comment_time;
	}
	public void setComment_time(Date comment_time) {
		this.comment_time = comment_time;
	}

	
}
