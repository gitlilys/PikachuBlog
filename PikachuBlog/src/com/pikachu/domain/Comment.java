package com.pikachu.domain;

import java.util.Date;

/**
 *	评论实体类 
 *
 */
public class Comment {

	String comment_id; //id
	String comment_paperid; //文章id
	String comment_user; //评论人
	String comment_content; //评论内容
	Date comment_time; //创建时间
	
	public String getComment_id() {
		return comment_id;
	}
	public void setComment_id(String comment_id) {
		this.comment_id = comment_id;
	}
	public String getComment_user() {
		return comment_user;
	}
	public void setComment_user(String comment_user) {
		this.comment_user = comment_user;
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
