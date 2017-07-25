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
	
	@RequestMapping(value="/blog/addComment") 
	public String addComment(HttpServletRequest request, @RequestParam(value="id") String id) {
		String comment = request.getParameter("cmt");
		Comment cmt = new Comment();
		cmt.setComment_id(BaseUtils.getUUID());
		cmt.setComment_paperid(id);
		cmt.setComment_content(comment);
		commentService.addComment(cmt);
		List<Comment> list = new ArrayList<>();
		list = commentService.findCommentByPaperId(id);
		
		request.getSession().setAttribute("commentList", list);
		
		return "redirect:/JSP/pinglunList.jsp";
	}

	@RequestMapping(value="/blog/findCommentByPaperId") 
	public void findCommentByPaperId(@RequestParam(value="id") String id) {
		List<Comment> list = new ArrayList<>();
		list = commentService.findCommentByPaperId(id);
	}
	
}
