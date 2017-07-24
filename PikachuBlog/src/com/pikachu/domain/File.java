package com.pikachu.domain;

import java.util.Date;

public class File {
	String file_id;
	String file_user;
	String file_name;
	String file_url;
	String file_type;
	Date file_createtime;
	int file_enable;
	
	public String getFile_id() {
		return file_id;
	}
	public void setFile_id(String file_id) {
		this.file_id = file_id;
	}
	public String getFile_user() {
		return file_user;
	}
	public void setFile_user(String file_user) {
		this.file_user = file_user;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

	public String getFile_url() {
		return file_url;
	}
	public void setFile_url(String file_url) {
		this.file_url = file_url;
	}
	public String getFile_type() {
		return file_type;
	}
	public void setFile_type(String file_type) {
		this.file_type = file_type;
	}
	public Date getFile_createtime() {
		return file_createtime;
	}
	public void setFile_createtime(Date file_createtime) {
		this.file_createtime = file_createtime;
	}
	public int getFile_enable() {
		return file_enable;
	}
	public void setFile_enable(int file_enable) {
		this.file_enable = file_enable;
	}

	
}
