package com.pikachu.serviceImpl;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pikachu.dao.TestDao;
import com.pikachu.domain.Test;
import com.pikachu.service.TestService;

@Service("TestService")
public class TestServiceImpl implements TestService {

	@Autowired
	private TestDao testDao;
	
	public void insert(Test test) {
		testDao.insert(test);
	}

}
