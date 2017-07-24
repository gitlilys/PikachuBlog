package com.pikachu.dao;

import java.util.List;

import com.pikachu.domain.Paper;

public interface PaperDao {

	public void save(Paper paper);

	public List<Paper> findCaoGao();

	public String findPaperById(String id);
		
}
