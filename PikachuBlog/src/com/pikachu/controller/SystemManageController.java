package com.pikachu.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pikachu.Utils.BaseUtils;
import com.pikachu.Utils.MailUtils;
import com.pikachu.domain.User;
import com.pikachu.service.SystemManageService;

@Controller
public class SystemManageController {

	@Autowired
	private SystemManageService systemManageService;

	@RequestMapping(value="/blog/regester")
	public String regester(HttpServletRequest request, HttpServletResponse response){
		User user = new User();
		String username = request.getParameter("name");
		String password = request.getParameter("password") + "{" + username + "}";
		user.setUser_id(BaseUtils.getUUID());
		user.setUser_name(username);
		user.setUser_password(BaseUtils.enCode(password));
		user.setUser_role(1);
		user.setUser_enable(0);
		systemManageService.addUser(user);
		String url = "http://127.0.0.1:8080/PikachuBlog";
		MailUtils.sendMail(url, username);

		return "redirect:/JSP/user/userRegester.jsp";
	}
	
	
	
	/*@RequestMapping(value="/blog/login") 
	public String login(HttpServletRequest request) {
		String kaptcha = (String)request.getSession()  
			    .getAttribute(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);
		String encode = request.getParameter("encode");
		if(kaptcha.equals(encode))
			return "redirect:/JSP/user/userSuccessLogin.jsp";
		return null;
	}*/

}
