package com.pikachu.service;

import com.pikachu.domain.File;

public interface FileUploadService {
	
	public void saveFile(File file);
	
	public File getFileByName(String name);

	public File getFileByUser(String user);

}
