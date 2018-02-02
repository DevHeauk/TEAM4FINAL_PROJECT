package com.gura.project.users.dao;

import com.gura.project.users.dto.UsersDto;

public interface UsersDao {
	public void insert(UsersDto dto);
	public UsersDto getData(String id);
	public void update(UsersDto dto);
	public void delete(String id);
	public boolean canUseId(String id); 
	public UsersDto plusMoney(UsersDto dto);
	public void minusMoney(UsersDto dto);	
	public void minusPoint(UsersDto dto);
	public void plusPoint(UsersDto dto);	
}
