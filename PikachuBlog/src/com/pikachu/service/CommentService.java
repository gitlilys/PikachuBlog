package com.pikachu.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.pikachu.dao.CommentDao;
import com.pikachu.domain.Comment;
import com.pikachu.domain.Paper;

public interface CommentService {

	public void addComment(Comment cmt);

	public List<Comment> findCommentByPaperId(String id);

}
