package com.pikachu.domain;

import java.util.List;

/**
 * 分页实体类 
 *
 * @param <E>
 */
public class Pager<E> {
	private int pageSize; //每页显示多少条
	private int pageOffset; //分页的开始值
	private int totalRecord; //总共多少条记录
	private int totalPage; //总共多少页
	private List<E> datas; //放置具体数据的列表
	
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getPageOffset() {
		return pageOffset;
	}
	public void setPageOffset(int pageOffset) {
		this.pageOffset = pageOffset;
	}
	public int getTotalRecord() {
		return totalRecord;
	}
	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public List<E> getDatas() {
		return datas;
	}
	public void setDatas(List<E> datas) {
		this.datas = datas;
	}
	
	

}
