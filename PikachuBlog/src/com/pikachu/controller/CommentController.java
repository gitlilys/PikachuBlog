package com.pikachu.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.pikachu.Utils.BaseUtils;
import com.pikachu.domain.Comment;
import com.pikachu.domain.Paper;
import com.pikachu.service.CommentService;

@Controller
public class CommentController {

	@Autowired
	private CommentService commentService;
	
	/**
	 * 新增评论
	 * @param request
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/blog/addComment") 
	public String addComment(HttpServletRequest request, @RequestParam(value="id") String id) {
		String comment = request.getParameter("cmt");
		Comment cmt = new Comment();
		cmt.setComment_id(BaseUtils.getUUID());
		cmt.setComment_paperid(id);
		cmt.setComment_user("user");
		cmt.setComment_content(comment);
		commentService.addComment(cmt);
		List<Comment> list = new ArrayList<>();
		list = commentService.findCommentByPaperId(id);
		
		request.getSession().setAttribute("commentList", list);
		
		return "redirect:/JSP/pinglunList.jsp";
	}

	/**
	 * 得到文章的所有评论  
	 * @param id
	 */
	@RequestMapping(value="/blog/findCommentByPaperId") 
	public String findCommentByPaperId(HttpServletRequest request, @RequestParam(value="id") String id) {
		List<Comment> list = new ArrayList<>();
		list = commentService.findCommentByPaperId(id);
		request.getSession().setAttribute("commentList", list);
		return "redirect:/JSP/pinglunwenzhang.jsp";
	}
	
}
