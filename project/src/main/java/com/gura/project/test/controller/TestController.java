package com.gura.project.test.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gura.project.match.service.MatchService;
import com.gura.project.users.service.UsersService;

@Controller
public class TestController {
	
	@Autowired
	private UsersService service;
	@Autowired
	public MatchService matchservice;
	
	@RequestMapping("/shop/product")
	public String product(){
		
		return "shop/product";
	}
	
	@RequestMapping("/shop/shop_insert")
	public String shopInsert(){
		
		return "shop/shop_insert";
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
	
	
	@RequestMapping("/match/match_list2")
	public String matchList(){
		
		return "match/match_list";
	}		
	
	@RequestMapping("/match/match_detail")
	public ModelAndView matchDetail(HttpServletRequest request){
		ModelAndView mView=matchservice.matchdetail(request);
		mView.setViewName("match/match_detail");

		return mView;
	}		
	
	@RequestMapping("/ranking/rank_list")
	public String rankList(){
		
		return "ranking/rank_list";
	}			
		
}
