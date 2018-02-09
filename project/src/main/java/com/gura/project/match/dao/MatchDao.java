package com.gura.project.match.dao;

import java.util.List;

import org.springframework.web.servlet.ModelAndView;

import com.gura.project.match.dto.MatchDto;
import com.gura.project.team.dto.TeamDto;
import com.gura.project.users.dto.UsersDto;

public interface MatchDao {
	public void matchInsert(MatchDto dto);
	public void insertHome(MatchDto dto); 
	public void deleteMatch(MatchDto dto);
	public MatchDto getData(MatchDto dto);
	public MatchDto pointInsert(MatchDto dto);
	public void insertPoint(MatchDto dto);
	public String getawayteam(String id);
	public void successMatch(MatchDto dto);
	public boolean matched(MatchDto dto);
	public void successupdate(String awayTeam);
	public List<MatchDto> getlist();
	public void HWwinpointupdate (MatchDto dto );
	public void HWlosepointupdate(MatchDto dto);
	public void AWwinpointupdate (MatchDto dto );
	public void AWlosepointupdate(MatchDto dto);
	public List<UsersDto> gethomemember(MatchDto dto);
	public List<UsersDto> getawaymember(MatchDto dto);
	public TeamDto gethometeamwinlosetotal(MatchDto dto);
	public TeamDto getawayteamwinlosetotal(MatchDto dto);
	
}
