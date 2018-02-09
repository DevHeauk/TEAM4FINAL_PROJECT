package com.gura.project.match.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.ModelAndView;

import com.gura.project.match.dto.MatchDto;
import com.gura.project.team.dto.TeamDto;
import com.gura.project.users.dto.UsersDto;

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
		session.delete("match.delete",dto);
	}
	
	@Override
	public boolean matched(MatchDto dto) { 
		
		String awayteam = session.selectOne("match.matched",dto);
		
		if(awayteam!=null){
			return true;
		}else{
			return false;
		}
	}

	@Override
	public MatchDto getData(MatchDto dto) {
		return session.selectOne("match.getdata", dto);
	}

	@Override
	public void insertPoint(MatchDto dto) {
		session.update("match.pointupdate",dto);
		
	}

	@Override
	public String getawayteam(String id) {
		
		return session.selectOne("match.getawayteam",id);
	}

	@Override
	public void successMatch(MatchDto dto) {
		session.update("match.successMatch", dto);
	}

	@Override
	public List<MatchDto> getlist() {
		
		return session.selectList("match.getlist");
	}


	@Override
	public void HWwinpointupdate(MatchDto dto) {
		session.update("match.HWwinpointupdate", dto);
		
	}

	@Override
	public void HWlosepointupdate(MatchDto dto) {

		session.update("match.HWlosepointupdate", dto);
	}


	@Override
	public void AWwinpointupdate(MatchDto dto) {
		session.update("match.AWwinpointupdate", dto);
		
	}

	@Override
	public void AWlosepointupdate(MatchDto dto) {
		session.update("match.AWlosepointupdate", dto);
		
	}

	@Override

	public List<UsersDto> gethomemember(MatchDto dto) {
		
		return session.selectList("match.gethomemember",dto);
	}

	@Override
	public List<UsersDto> getawaymember(MatchDto dto) {
		return session.selectList("match.getawaymember",dto);

	}
	public void successupdate(String awayTeam) {
		// TODO Auto-generated method stub
		

	}

	@Override
	public TeamDto gethometeamwinlosetotal(MatchDto dto) {

		return session.selectOne("match.gethometeamwinlosetotal", dto);
	}

	@Override
	public TeamDto getawayteamwinlosetotal(MatchDto dto) {
		
		return session.selectOne("match.getawayteamwinlosetotal", dto);
	}


	
}
