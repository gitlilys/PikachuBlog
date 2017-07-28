package com.pikachu.service;

import com.pikachu.domain.User;

public interface SystemManageService {

	public void addUser(User user);

	public void updateUserEnable(String id, int i);

	public User findUserByName(String name);

}
