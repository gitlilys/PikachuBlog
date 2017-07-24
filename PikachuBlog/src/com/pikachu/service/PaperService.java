package com.pikachu.service;

import java.util.List;

import com.pikachu.domain.Paper;

public interface PaperService {

	public void savePaper(Paper paper);

	public List<Paper> findCaoGao();

	public String findPaperById(String id);

}
