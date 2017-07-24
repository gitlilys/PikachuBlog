package com.pikachu.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pikachu.dao.FileUploadDao;
import com.pikachu.domain.File;
import com.pikachu.service.FileUploadService;

@Service("FileUplodService")
public class FileUploadServiceImpl implements FileUploadService {
	
	@Autowired
	FileUploadDao fileUploadDao;

	@Override
	public void saveFile(File file) {
		fileUploadDao.saveFile(file);
	}

	@Override
	public File getFileByName(String name) {
		File f = new File();
		f = fileUploadDao.getFileByName(name);
		return f;
	}

	@Override
	public File getFileByUser(String user) {
		File f = new File();
		f = fileUploadDao.getFileByUser(user);
		return f;
	}

}
