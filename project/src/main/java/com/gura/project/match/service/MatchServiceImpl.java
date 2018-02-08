package com.gura.project.match.service;

import static org.hamcrest.CoreMatchers.nullValue;

import java.util.ArrayList;
import java.util.List;

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

		
	}

	@Override
	public ModelAndView matchlist() {
		ModelAndView mView=new ModelAndView();
		List<MatchDto> matchlist=matchdao.getlist(); 
		mView.addObject("matchlist", matchlist);
		
		
		return mView;
	}

	@Override
	public ModelAndView matchdetail(HttpServletRequest request) {
		ModelAndView mView=new ModelAndView();
		MatchDto dto=new MatchDto();
		
		dto.setNum(request.getParameter("num"));
		
		
		
		dto=matchdao.getData(dto);
		mView.addObject("matchdto",dto);
		
		
		return mView;
	}
	
	//matchdto 에받어올때 team 명  point 가져와야함
	@Override
	public void pointinsert(HttpServletRequest request, MatchDto dto) {
		String num=request.getParameter("num");
		System.out.println(num);
		dto.setNum(num);
		System.out.println(dto.getNum());
		matchdao.insertPoint(dto);
		System.out.println(dto.getAwayTeam());
		System.out.println(dto.getHomeTeam());
		if(dto.getHomePoint()>dto.getAwayPoint()){
			matchdao.HWwinpointupdate(dto);
			matchdao.HWlosepointupdate(dto);
		}else if(dto.getHomePoint()<dto.getAwayPoint()){
			matchdao.AWwinpointupdate(dto);
			matchdao.AWlosepointupdate(dto);
		}
	}
	
}
