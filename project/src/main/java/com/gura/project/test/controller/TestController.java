package com.gura.project.test.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gura.project.users.service.UsersService;

@Controller
public class TestController {
	@Autowired
	private UsersService service;
	
	@RequestMapping("/shop/product")
	public String product(){
		
		return "shop/product";
	}
	
	@RequestMapping("/shop/shop_insert")
	public String shopInsert(){
		
		return "shop/shop_insert";
	}
	
	
	@RequestMapping("/team/team_detail")
	public String teamDetail(){
		
		return "team/team_detail";
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
	
	@RequestMapping("/shop/order")
	public String Order(){
		
		return "shop/order";
	}			
		
}
