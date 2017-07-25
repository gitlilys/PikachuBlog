package com.pikachu.dao;

import java.util.List;

import com.pikachu.domain.Comment;

public interface CommentDao {

	void addComment(Comment cmt);

	List<Comment> findCommentByPaperId(String id);


}
