package com.pikachu.serviceImpl;

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
	public List<Paper> findCaoGao() {
		List<Paper> list;
		list = paperDao.findCaoGao();
		return list;
	}

	@Override
	public String findPaperById(String id) {
		String content = paperDao.findPaperById(id);
		return content;
	}
	
}
