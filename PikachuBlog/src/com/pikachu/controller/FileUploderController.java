package com.pikachu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pikachu.service.FileUploadService;

@Controller
public class FileUploderController {

	@Autowired
	FileUploadService fileUploadService;
	
	@RequestMapping(value="blog/upload")
	public void uploadFile() {
		
	}

	@RequestMapping(value="blog/download")
	public void downloadFile() {
		
	}
}
