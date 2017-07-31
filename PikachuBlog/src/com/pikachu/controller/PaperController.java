package com.pikachu.controller;


import java.util.ArrayList;
import java.util.Date;
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

	/**
	 * 保存文章
	 * @param request
	 * @return
	 */
	@RequestMapping(value="/blog/savePaper")
	public String savePaper(HttpServletRequest request, @RequestParam("name") String name) {
		Paper paper = new Paper();
		String content = request.getParameter("myeditor");
		String title = request.getParameter("title");
		paper.setBlog_id(BaseUtils.getUUID());
		paper.setBlog_user(name);
		paper.setBlog_title(title);
		paper.setBlog_content(content);
		paper.setBlog_createtime(new Date());
		if(request.getParameter("submit").equals("保存")) {
			paper.setBlog_enable(0);
		} else {
			paper.setBlog_enable(1);
		}

		paperService.savePaper(paper);
		return "redirect:/JSP/user/wenzhangGuanli.jsp";
	}
	
	/**
	 * 查询所有文章
	 * @param request
	 * @param enable
	 * @param type
	 * @return
	 */
	@RequestMapping(value="/blog/findCaoGaoPaper")
	public String findCaoGaoPaper(HttpServletRequest request, @RequestParam(value="type") int type) {
		List<Paper> list = new ArrayList<>();
		
		list = paperService.findCaoGao(1);
		
		System.out.println("list    :" + list);
		for(Paper p : list) {
			System.out.println("*************************************");
			System.out.println(p.getBlog_id());
			System.out.println("*************************************");
		}
	
		request.getSession().setAttribute("list", list);
		
		if(type == 1)
			return "redirect:/successlog.jsp";
		return "redirect:/index.jsp";
	}
	
	/**
	 * 根据文章id查找文章
	 * @param request
	 * @param id
	 * @param type
	 * @return
	 */
	@RequestMapping(value="blog/findPaperById")
	public String findPaperById(HttpServletRequest request, @RequestParam(value="id") String id, @RequestParam(value="type") int type) {
		
		Paper list = paperService.findPaperById(id);
		
//		request.getSession().setAttribute("paperId", id);
		request.getSession().setAttribute("content", list);
		
		if(type == 0)
			return "redirect:/JSP/user/chakanwenzhang.jsp";
		return "redirect:/JSP/pinglun.jsp";
	}
	
	@RequestMapping(value="blog/findPaperByUser")
	public String findPaperByUser(HttpServletRequest request, @RequestParam(value="userId") String userId, @RequestParam(value="enable") int enable) {
		List<Paper> list = new ArrayList<>();
		list = paperService.findPaperByUser(userId, enable);
		
		request.getSession().setAttribute("listUser", list);

		if(enable == 0)
			return "redirect:/JSP/user/caogaoList.jsp";
		else
			return "redirect:/JSP/user/wenzhangGuanliList.jsp";
	}

	
	/**
	 * 删除文章
	 * @param request
	 * @param id
	 * @return
	 */
	@RequestMapping(value="blog/deletePaperById")
	public String deletePaperById(HttpServletRequest request, @RequestParam(value="id") String id, @RequestParam(value="type") int type) {
		paperService.deletePaperById(id);
		
		if(type == 1)
			return "redirect:/JSP/user/wenzhangGuanli.jsp";
		else
			return "redirect:/JSP/user/caogao.jsp";
	}

}
