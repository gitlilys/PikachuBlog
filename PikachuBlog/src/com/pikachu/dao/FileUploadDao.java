package com.pikachu.dao;

import com.pikachu.domain.File;

public interface FileUploadDao {

	public void saveFile(File file);

	public File getFileByName(String name);

	public File getFileByUser(String user);

}
