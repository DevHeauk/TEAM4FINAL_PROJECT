package com.gura.project.match.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.ModelAndView;

import com.gura.project.match.dto.MatchDto;
import com.gura.project.team.dto.TeamDto;

@Repository
public class MatchDaoImpl implements MatchDao{
	
	@Autowired SqlSession session;
	
	@Override
	public MatchDto pointInsert(MatchDto dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void matchInsert(MatchDto dto) {
		session.insert("match.Matchinsert", dto);
		
	}

	@Override
	public void insertHome(MatchDto dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteMatch(MatchDto dto) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public MatchDto getData(MatchDto dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MatchDto insertWinningPoint(TeamDto dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getawayteam(String id) {
		
		return session.selectOne("match.getawayteam",id);
	}

	@Override
	public void successupdate(String awayTeam) {
		session.update("match.successmatch", awayTeam);
	}

}
