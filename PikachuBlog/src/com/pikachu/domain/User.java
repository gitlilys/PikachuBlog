package com.pikachu.domain;

import java.util.Date;

/**
 * 用户实体类 
 *
 */
public class User {

	String user_id; //用户id
	String user_name; //用户名
	String user_password; //用户密码
	int user_role; //用户角色
	Date user_cretetime; //创建时间
	int user_enable; //是否生效
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public int getUser_role() {
		return user_role;
	}
	public void setUser_role(int user_role) {
		this.user_role = user_role;
	}
	public Date getUser_cretetime() {
		return user_cretetime;
	}
	public void setUser_cretetime(Date user_cretetime) {
		this.user_cretetime = user_cretetime;
	}
	public int getUser_enable() {
		return user_enable;
	}
	public void setUser_enable(int user_enable) {
		this.user_enable = user_enable;
	}

	
}
