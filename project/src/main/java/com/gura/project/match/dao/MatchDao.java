package com.gura.project.match.dao;

import java.util.List;

import org.springframework.web.servlet.ModelAndView;

import com.gura.project.match.dto.MatchDto;
import com.gura.project.team.dto.TeamDto;

public interface MatchDao {
	public void matchInsert(MatchDto dto);
	public void insertHome(MatchDto dto); 
	public void deleteMatch(MatchDto dto);
	public MatchDto getData(MatchDto dto);
	public MatchDto pointInsert(MatchDto dto);
	public void insertPoint(MatchDto dto);
	public String getawayteam(String id);
	public void successupdate(String awayTeam);
	public List<MatchDto> getlist();
	public List<MatchDto> gethomePoint(MatchDto dto);
	public List<MatchDto> getawayPoin(MatchDto dto);
	
	 
}
