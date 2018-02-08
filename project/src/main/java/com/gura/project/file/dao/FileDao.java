package com.gura.project.file.dao;

import java.util.List;

import com.gura.project.file.dto.FileDto;

public interface FileDao {
	public void insert(FileDto dto);
	public void delete(int num);
	public List<FileDto> getListTeam(FileDto dto);
	public List<FileDto> getListGame(FileDto dto);
	public List<FileDto> getListFree(FileDto dto);
	public FileDto getData(int num);	
}
