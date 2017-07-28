package com.pikachu.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pikachu.domain.User;
import com.pikachu.service.AdminManagementService;
import com.pikachu.service.SystemManageService;

@Controller
public class AdminManagementController {
	
	@Autowired
	private AdminManagementService adminManagementService;

	/**
	 * 获得所有用户
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/blog/adminGetUser") 
	public String adminGetUser(HttpServletRequest request) {
		List<User> list = new ArrayList<>();
		list = adminManagementService.getAllUser();
		request.getSession().setAttribute("list", list);
		
		return "redirect:/JSP/admin/adminGuanli.jsp";
	}
}
