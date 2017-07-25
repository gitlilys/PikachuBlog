package com.pikachu.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pikachu.dao.CommentDao;
import com.pikachu.domain.Comment;
import com.pikachu.domain.Paper;
import com.pikachu.service.CommentService;

@Service("CommentService")
public class CommentServiceImpl implements CommentService {
	
	@Autowired
	private CommentDao commentDao;

	@Override
	public void addComment(Comment cmt) {
		commentDao.addComment(cmt);
	}

	@Override
	public List<Comment> findCommentByPaperId(String id) {
		List<Comment> list = new ArrayList<>();
		list = commentDao.findCommentByPaperId(id);
		return list;
	}

}
