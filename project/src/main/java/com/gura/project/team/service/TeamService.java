package com.gura.project.team.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.gura.project.team.dto.TeamDto;

public interface TeamService {
	public void insert(TeamDto dto);
	public ModelAndView detail(HttpServletRequest request);
	public ModelAndView list(HttpServletRequest request);
	public ModelAndView joinconfirm(HttpServletRequest request);
	public ModelAndView join(HttpServletRequest request);
}
