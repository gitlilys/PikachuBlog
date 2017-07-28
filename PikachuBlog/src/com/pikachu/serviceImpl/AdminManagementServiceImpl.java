package com.pikachu.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pikachu.dao.SystemManageDao;
import com.pikachu.domain.User;
import com.pikachu.service.AdminManagementService;

@Service("AdminManagementService")
public class AdminManagementServiceImpl implements AdminManagementService {
	
	@Autowired
	SystemManageDao systemManageDao;

	@Override
	public List<User> getAllUser() {
		List<User> list = new ArrayList<>();
		list = systemManageDao.getAllUser();
		return null;
	}

}
