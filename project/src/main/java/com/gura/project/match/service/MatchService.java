package com.gura.project.match.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.gura.project.match.dto.MatchDto;
import com.gura.project.team.dto.TeamDto;

public interface MatchService {
	public void applicationsMatch(HttpServletRequest request, MatchDto dto);
	public ModelAndView refuseMatch(HttpServletRequest request);
	public ModelAndView MatchInfo(HttpServletRequest request);
	public void insertwinning(HttpServletRequest request);
	public void successMatching(HttpServletRequest request);
}