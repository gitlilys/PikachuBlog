package com.pikachu.domain;

import java.util.Date;

/**
 * 文章实体类 
 *
 */
public class Paper {

	String blog_id; //id
	String blog_user; //用户
	String blog_title; //文章标题
	String blog_content; //文章内容
	Date blog_createtime; //创建时间
	int blog_enable; //是否发布
	
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
