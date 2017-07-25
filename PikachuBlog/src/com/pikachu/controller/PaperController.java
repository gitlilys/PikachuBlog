package com.pikachu.controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.pikachu.Utils.BaseUtils;
import com.pikachu.domain.Paper;
import com.pikachu.service.PaperService;

@Controller
public class PaperController {
	
	@Autowired
	private PaperService paperService;

	@RequestMapping(value="/blog/savePaper")
	public String savePaper(HttpServletRequest request) {
		Paper paper = new Paper();
		String content = request.getParameter("myeditor");
		String title = request.getParameter("title");
		paper.setBlog_id(BaseUtils.getUUID());
		paper.setBlog_user("ha");
		paper.setBlog_title(title);
		paper.setBlog_content(content);

		paperService.savePaper(paper);
		return "redirect:/JSP/user/wenzhangGuanli.jsp";
	}
	
	//查询草稿文章
	@RequestMapping(value="/blog/findCaoGaoPaper")
	public String findCaoGaoPaper(HttpServletRequest request) {
		List<Paper> list = new ArrayList<>();
		
		list = paperService.findCaoGao();
		
		System.out.println("list    :" + list);
		for(Paper p : list) {
			System.out.println("*************************************");
			System.out.println(p.getBlog_id());
			System.out.println("*************************************");
		}
	
		request.getSession().setAttribute("list", list);
		
		return "redirect:/JSP/user/caogaoList.jsp";
	}
	
	//根据Id查找文章
	@RequestMapping(value="blog/findPaperById")
	public String findPaperById(HttpServletRequest request, @RequestParam(value="id") String id) {
		
		String content = paperService.findPaperById(id);
		
		request.getSession().setAttribute("content", content);
		
		System.out.println("content :" + content);
		
		return "redirect:/JSP/user/chakanWenzhang.jsp";
	}

}
