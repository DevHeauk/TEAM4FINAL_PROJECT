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
		List<MatchDto> list=matchdao.getlist(); 
		mView.addObject("list", list);
		
		
		return mView;
	}

	@Override
	public ModelAndView matchdetail(HttpServletRequest request) {
		ModelAndView mView=new ModelAndView();
		MatchDto dto=new MatchDto();
		int wincount=0;
		int losecount=0;
		
		
		dto.setNum(request.getParameter("num"));
		dto.setHomeTeam(request.getParameter("homeTeam"));
		dto.setAwayTeam(request.getParameter("awayTeam"));
		
		//상대전적
		List<MatchDto> pointlist=matchdao.gethomePoint(dto);
		for (MatchDto tmp : pointlist) {
			if(tmp.getHomePoint() !=tmp.getAwayPoint()){
				if(tmp.getHomePoint()>tmp.getAwayPoint()){
					wincount++;
				}else if(tmp.getAwayPoint()>tmp.getHomePoint()){
					losecount++;
				}
			}
			
		}
		
		List<MatchDto> pointlist2=matchdao.getawayPoin(dto);
		for (MatchDto tmp : pointlist2) {
				if(tmp.getHomePoint() !=tmp.getAwayPoint()){
					if(tmp.getAwayPoint()>tmp.getHomePoint()){
						wincount++;
					}else if(tmp.getHomePoint()>tmp.getAwayPoint()){
						losecount++;
					}
				}
			
		}
		dto.setWincount(wincount);
		dto.setLosecount(losecount);
		dto.setTotalcount(wincount+losecount);
		
		
		
		dto=matchdao.getData(dto);
		mView.addObject("matchdto",dto);
		
		
		return mView;
	}

	@Override
	public void pointinsert(HttpServletRequest request, MatchDto dto) {
		String num=request.getParameter("num");
		dto.setNum(num);
		matchdao.insertPoint(dto);
	}
	
}
