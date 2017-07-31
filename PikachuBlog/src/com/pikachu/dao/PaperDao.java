package com.pikachu.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pikachu.domain.Paper;

public interface PaperDao {

	public void save(Paper paper);

	public List<Paper> findCaoGao(int enable);

	public Paper findPaperById(String id);

	public void deletePaperById(String id);

	public List<Paper> findPaperByUser(@Param("userId")String userId, @Param("enable")int enable);
		
}
