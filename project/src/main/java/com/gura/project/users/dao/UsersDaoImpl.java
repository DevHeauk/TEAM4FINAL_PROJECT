package com.gura.project.users.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gura.project.users.dto.UsersDto;


@Repository
public class UsersDaoImpl implements UsersDao{

	@Autowired
	private SqlSession session;
	
	@Override
	public void insert(UsersDto dto) {
		session.insert("users.insert", dto);
	}

	@Override
	public UsersDto getData(String id) {
		
		return session.selectOne("users.getData", id);
	}

	@Override
	public void update(UsersDto dto) {
		session.update("users.update", dto);
		
	}

	@Override
	public void delete(String id) {
		session.delete("users.delete", id);
		
	}

	@Override
	public boolean canUseId(String id) {
		String result = session.selectOne("users.isExistId", id);
		
		if(result==null){
			return true;
		}else{
			return false;
		}
	}

	@Override
	public UsersDto plusMoney(UsersDto dto) {
		session.update("users.plusMoney", dto);
		UsersDto resultDto=session.selectOne("users.plusMoneyResult", dto);
		return resultDto;
		
	}

	@Override
	public void minusMoney(UsersDto dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void minusPoint(UsersDto dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void plusPoint(UsersDto dto) {
		// TODO Auto-generated method stub
		
	}

}
