package com.pikachu.dao;

import org.apache.ibatis.annotations.Param;

import com.pikachu.domain.User;

public interface SystemManageDao {

	void addUser(User user);

	void updateUserEnable(@Param("id") String id, @Param("i") int i);

}
