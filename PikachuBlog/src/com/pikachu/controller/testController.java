package com.pikachu.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pikachu.domain.Test;
import com.pikachu.service.TestService;
import com.pikachu.serviceImpl.TestServiceImpl;


/**
 * 
 * @author 
 *
 */
@Controller
public class testController {

	@Autowired
	private TestService testService;
	
	/**
	 * 测试框架
	 * @param test
	 * @param request
	 * @return
	 */
	@RequestMapping(value="")
	public String regester(Test test,HttpServletRequest request){
			test.setName(request.getParameter("name"));
			test.setPassword(request.getParameter("password"));
			testService.insert(test);
			return "redirect:/success.jsp";
	}
	
}