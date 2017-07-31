package com.pikachu.service;

import java.util.List;

import com.pikachu.domain.User;

public interface AdminManagementService {

	public List<User> getAllUser();

	public void deleteUser(String id);

}
