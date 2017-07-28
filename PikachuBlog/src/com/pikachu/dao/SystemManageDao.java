package com.pikachu.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pikachu.domain.User;

public interface SystemManageDao {

	void addUser(User user);

	void updateUserEnable(@Param("id") String id, @Param("i") int i);

	User findUserByName(String name);

	List<User> getAllUser();

}
