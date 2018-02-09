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
import com.gura.project.team.dto.TeamDto;
import com.gura.project.users.dto.UsersDto;

@Service
public class MatchServiceImpl implements MatchService {
	
	@Autowired MatchDao matchdao;
	
	@Override
	public void applicationsMatch(HttpServletRequest request,MatchDto dto) {
		String id=(String)request.getSession().getAttribute("id");
		//매칭을 신청한 팀이름 얻어오기
		String awayTeam=matchdao.getawayteam(id);
		//홈팀 이름 얻어오기
		String homeTeam=request.getParameter("name");
		//Dto에 홈팀과 신청한 팀이름 담기. 
		dto.setAwayTeam(awayTeam);
		dto.setHomeTeam(homeTeam);
		
		System.out.println(dto.getAwayTeam());
		System.out.println(dto.getGround());
		System.out.println(dto.getHomeTeam());
		System.out.println(dto.getMatchDate());
		
		matchdao.matchInsert(dto);
		
	}

	@Override
	public void refuseMatch(HttpServletRequest request) {
		String awayTeam = request.getParameter("awayteam");
		String homeTeam = request.getParameter("hometeam");
		MatchDto dto = new MatchDto();
		dto.setAwayTeam(awayTeam);
		dto.setHomeTeam(homeTeam);
		System.out.println(awayTeam);
		matchdao.deleteMatch(dto);
		
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

		String awayTeam = request.getParameter("awayteam");
		String homeTeam = request.getParameter("hometeam");
		MatchDto dto = new MatchDto();
		dto.setAwayTeam(awayTeam);
		dto.setHomeTeam(homeTeam);
		
		matchdao.successMatch(dto);

		
	}

	@Override
	public ModelAndView matchlist() {
		ModelAndView mView=new ModelAndView();
		List<MatchDto> matchlist=matchdao.getlist(); 
		List<TeamDto> homedtolist = new ArrayList<>();
		List<TeamDto> awaydtolist = new ArrayList<>();
		TeamDto homedto = new TeamDto();
		TeamDto awaydto = new TeamDto();
		
		for(MatchDto tmp:matchlist){
			homedto = matchdao.gethometeamwinlosetotal(tmp);
			awaydto = matchdao.getawayteamwinlosetotal(tmp);
			homedtolist.add(homedto);
			awaydtolist.add(awaydto);
		}
		
		mView.addObject("homedtolist", homedtolist);
		mView.addObject("awaydtolist", awaydtolist);

		return mView;
	}

	@Override
	public ModelAndView matchdetail(HttpServletRequest request) {
		ModelAndView mView=new ModelAndView();
		MatchDto dto=new MatchDto();
		
		dto.setNum(request.getParameter("num"));
		dto=matchdao.getData(dto);
		mView.addObject("matchdto",dto);
		List<UsersDto> hometeammember=matchdao.gethomemember(dto);
		List<UsersDto> awayteammember=matchdao.getawaymember(dto);
		TeamDto hometeamwinlosetotal=matchdao.gethometeamwinlosetotal(dto);
		TeamDto awayteamwinlosetotal=matchdao.getawayteamwinlosetotal(dto);
		mView.addObject("hometeammember", hometeammember);
		mView.addObject("awayteammember", awayteammember);
		mView.addObject("hometeamdto", hometeamwinlosetotal);
		mView.addObject("awayteamdto", awayteamwinlosetotal);
		
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
		if(dto.getHomePoint()>dto.getAwayPoint()){
			matchdao.HWwinpointupdate(dto);
			matchdao.HWlosepointupdate(dto);
		}else if(dto.getHomePoint()<dto.getAwayPoint()){
			matchdao.AWwinpointupdate(dto);
			matchdao.AWlosepointupdate(dto);
		}
	}
	
}
