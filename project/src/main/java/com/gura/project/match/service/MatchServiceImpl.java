package com.gura.project.match.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.gura.project.match.dao.MatchDao;
import com.gura.project.match.dto.MatchDto;

@Service
public class MatchServiceImpl implements MatchService {
	
	@Autowired MatchDao matchdao;
	
	@Override
	public void applicationsMatch(HttpServletRequest request,MatchDto dto) {
		String id=(String) request.getSession().getAttribute("id");
		String awayTeam=matchdao.getawayteam(id);
		String homeTeam=request.getParameter("name");
		dto.setAwayTeam(awayTeam);
		dto.setHomeTeam(homeTeam);
		System.out.println(dto.getAwayTeam());
		System.out.println(dto.getGround());
		System.out.println(dto.getHomeTeam());
		System.out.println(dto.getMatchDate());
		matchdao.matchInsert(dto);
		
	}

	@Override
	public ModelAndView refuseMatch(HttpServletRequest request) {
		
		return null;
	}

	@Override
	public ModelAndView MatchInfo(HttpServletRequest request) {
	
		return null;
	}

	@Override
	public void insertwinning(HttpServletRequest request) {
		
	}

	@Override
	public void successMatching(HttpServletRequest request) {
		String awayTeam = request.getParameter("awayTeam");
		matchdao.successupdate(awayTeam);
		System.out.println(awayTeam);

		
	}

}
