package com.gura.project.users.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;

import com.gura.project.users.dto.UsersDto;

public interface UsersService {
	public ModelAndView singup(UsersDto dto);
	public boolean canUseId(String id);
	public ModelAndView login(UsersDto dto, 
			HttpServletRequest request);
	public void update(UsersDto dto);
	public ModelAndView delete(HttpSession session);
	public ModelAndView detail(String id);
	public UsersDto plusMoney(int inputId, HttpServletRequest request);
}
