package com.gura.project.file.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gura.project.file.dto.FileDto;

@Repository
public class FileDaoImpl implements FileDao{

	@Autowired
	private SqlSession session;
	
	@Override
	public void insert(FileDto dto) {
		session.insert("file.insert", dto);
	}

	@Override
	public void delete(int num) {
		session.delete("file.delete", num);
		
	}
	
	@Override
	public List<FileDto> getListTeam(FileDto dto) {
		
		return session.selectList("file.getListTeam", dto);
	}

	@Override
	public List<FileDto> getListGame(FileDto dto) 
	{
		return session.selectList("file.getListGame", dto);
	}

	@Override
	public List<FileDto> getListFree(FileDto dto) {
		
		return session.selectList("file.getListFree", dto);
	}

	@Override
	public FileDto getData(int num) {
		
		return session.selectOne("file.getData", num);
	}

}
