package com.pikachu.domain;

import java.util.Date;

public class Paper {

	String blog_id;
	String blog_user;
	String blog_title;
	String blog_content;
	String blog_comment;
	Date blog_createtime;
	int blog_enable;
	
	public String getBlog_id() {
		return blog_id;
	}
	public void setBlog_id(String blog_id) {
		this.blog_id = blog_id;
	}
	public String getBlog_user() {
		return blog_user;
	}
	public void setBlog_user(String blog_user) {
		this.blog_user = blog_user;
	}
	public String getBlog_title() {
		return blog_title;
	}
	public void setBlog_title(String blog_title) {
		this.blog_title = blog_title;
	}
	public String getBlog_content() {
		return blog_content;
	}
	public void setBlog_content(String blog_content) {
		this.blog_content = blog_content;
	}
	public String getBlog_comment() {
		return blog_comment;
	}
	public void setBlog_comment(String blog_comment) {
		this.blog_comment = blog_comment;
	}
	public Date getBlog_createtime() {
		return blog_createtime;
	}
	public void setBlog_createtime(Date blog_createtime) {
		this.blog_createtime = blog_createtime;
	}
	public int getBlog_enable() {
		return blog_enable;
	}
	public void setBlog_enable(int blog_enable) {
		this.blog_enable = blog_enable;
	}

	
	
}
