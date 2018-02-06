package com.gura.project.team.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.taglibs.standard.tag.common.core.ForEachSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gura.project.match.dto.MatchDto;
import com.gura.project.team.dto.TeamDto;
import com.gura.project.users.dto.UsersDto;


@Repository
public class TeamDaoImpl implements TeamDao {
	
	@Autowired
	public SqlSession session;
	
	@Override
	public void insert(TeamDto dto) {
		session.insert("team.insert",dto);
		
	}
	//detail
	@Override
	public List<TeamDto> joining_data(TeamDto dto) {
		return  session.selectList("team.joindata",dto);
		
	}

	@Override
	public TeamDto getData(TeamDto dto) {
		
		return session.selectOne("team.getData",dto);
	}
	@Override
	public List<UsersDto> join_user_getdata(List<TeamDto> joindto) {
		
		return  session.selectList("team.join_user_getdata", joindto);
		
	}
	
	
	
	
	
	
	
	@Override
	public List<TeamDto> teamList() {
		
		return session.selectList("team.getList");
	}
	@Override
	public void joining(TeamDto dto) {
		session.insert("team.joinlist_insert",dto);
		
	}
	@Override
	public void joinupdate(TeamDto dto) {
		session.update("team.joinupdate",dto);
		
	}
	@Override
	public List<UsersDto> teamMemberList(TeamDto dto) {
		
		return session.selectList("team.memberliset",dto);
	}
	@Override
	public void leader_upadte(TeamDto dto) {
		session.update("team.leader_update",dto);
		
	}
	@Override
	public List<MatchDto> awayteam(MatchDto matchDto) {

		return session.selectList("team.awayteam", matchDto);
	}
	@Override
	public void joindelete(TeamDto dto) {
		session.delete("team.joindelete", dto);
		
	}
	@Override
	public List<UsersDto> joininfo(List<TeamDto> list) {
		
		List<UsersDto> joininfolist= new ArrayList<>();
		for(TeamDto tmp: list){
			UsersDto dto = session.selectOne("joininfo",tmp.getJoinid());
			joininfolist.add(dto);
			};
		return  joininfolist;
	}
	
	
	
	
	

}
