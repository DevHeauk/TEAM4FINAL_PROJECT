package com.gura.project.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gura.project.users.service.UsersService;

@Controller
public class TestController {
	@Autowired
	private UsersService service;
	
	
	@RequestMapping("/team/team_detail")
	public String teamDetail(){
		
		return "team/team_detail";
	}	
	
	@RequestMapping("/team/team_list2")
	public String teamList(){
		
		return "team/team_list";
	}
	
	@RequestMapping("/board/faq")
	public String faq(){
		
		return "board/faq";
	}
	
	@RequestMapping("/search/search")
	public String search(){
		
		return "search/search";
	}	
	
	@RequestMapping("/search/search_null")
	public String searchNull(){
		
		return "search/search_null";
	}		
	
	
	@RequestMapping("/match/match_list")
	public String matchList(){
		
		return "match/match_list";
	}		
	
	@RequestMapping("/match/match_detail")
	public String matchDetail(){
		
		return "match/match_detail";
	}		
	
	@RequestMapping("/ranking/rank_list")
	public String rankList(){
		
		return "ranking/rank_list";
	}			
		
}
