package com.pikachu.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pikachu.dao.PaperDao;
import com.pikachu.domain.Paper;
import com.pikachu.service.PaperService;

@Service("PaperService")
public class PaperServiceImpl implements PaperService {

	@Autowired
	private PaperDao paperDao;

	public void savePaper(Paper paper) {
		paperDao.save(paper);
	}

	@Override
	public List<Paper> findCaoGao(int enable) {
		List<Paper> list;
		list = paperDao.findCaoGao(enable);
		return list;
	}

	@Override
	public Paper findPaperById(String id) {
		Paper content = paperDao.findPaperById(id);
		return content;
	}

	@Override
	public void deletePaperById(String id) {
		paperDao.deletePaperById(id);
	}
	
}
