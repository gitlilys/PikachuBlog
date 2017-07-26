package com.pikachu.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pikachu.dao.SystemManageDao;
import com.pikachu.domain.User;
import com.pikachu.service.SystemManageService;

@Service("SystemManageService")
public class SystemManageServiceImpl implements SystemManageService {

	@Autowired
	private SystemManageDao systemMangeDao;
	
	@Override
	public void addUser(User user) {
		systemMangeDao.addUser(user);
	}

	@Override
	public void updateUserEnable(String id, int i) {
		systemMangeDao.updateUserEnable(id, i);
	}

}
