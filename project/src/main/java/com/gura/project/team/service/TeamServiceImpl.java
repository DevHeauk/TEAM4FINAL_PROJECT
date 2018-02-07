package com.gura.project.team.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.gura.project.match.dto.MatchDto;
import com.gura.project.team.dao.TeamDao;
import com.gura.project.team.dto.TeamDto;
import com.gura.project.users.dto.UsersDto;

@Service
public class TeamServiceImpl implements TeamService{
	
	@Autowired
	public TeamDao teamdao;
	
	
	@Override
	public void insert(TeamDto dto) {
		teamdao.insert(dto);
		teamdao.leader_upadte(dto);
		
		
	}

	@Override
	public ModelAndView detail(HttpServletRequest request) {
		MatchDto matchdto=new MatchDto();
		//team detail 정보를얻어온다
		//HomeTeam 이름.
		String name=request.getParameter("name");
		
		
		matchdto.setHomeTeam(name);
		//HomeTeam의 데이타를 얻어온다.
		TeamDto dto=new TeamDto();
		dto.setName(name);
		TeamDto resultDto=teamdao.getData(dto);
		//HomeTeam의 멤버리스트를 얻어온다. 
		List<UsersDto> memberlist=teamdao.teamMemberList(dto);
		//팀가입 신청목록 가져온다. (joinlist에서 얻어온다.)
		List<TeamDto> list=teamdao.joining_data(dto);
		//HomeTeam에 가입신청한 사람들의 정보를 List로 얻어온다. 
		List<UsersDto> joininfo=teamdao.joininfo(list);
		
		List<MatchDto> matchdtoList=teamdao.awayteam(matchdto);
			
		ModelAndView mView=new ModelAndView();
		mView.addObject("dto", resultDto);
		mView.addObject("joininfo", joininfo);
		mView.addObject("memberlist", memberlist);
		mView.addObject("matchdtoList", matchdtoList);
		
		return mView;
	}

	@Override
	public ModelAndView list(HttpServletRequest request) {
		ModelAndView mView=new ModelAndView();
		List<TeamDto> list=teamdao.teamList();
		mView.addObject("list", list);
		return mView;
	}

	@Override
	public ModelAndView joinconfirm(HttpServletRequest request) {
		TeamDto dto=new TeamDto();
		String joinid=(String)request.getSession().getAttribute("id");
		String jointeam=request.getParameter("name");
		dto.setJointeam(jointeam);
		dto.setJoinid(joinid);

		ModelAndView mView=new ModelAndView();
		teamdao.joining(dto);
		return mView;
	}

	@Override
	public ModelAndView join(HttpServletRequest request) {
		
		TeamDto dto=new TeamDto();
		String joinid=(String) request.getParameter("joinid");
		String jointeam=(String) request.getParameter("name");
		dto.setJoinid(joinid);
		dto.setJointeam(jointeam);
		teamdao.joinupdate(dto);
		teamdao.joindelete(dto);
		
		return new ModelAndView();
		
	}

	

}
