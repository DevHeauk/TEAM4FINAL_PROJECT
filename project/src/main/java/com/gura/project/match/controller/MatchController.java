package com.gura.project.match.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gura.project.match.dto.MatchDto;
import com.gura.project.match.service.MatchService;

@Controller
public class MatchController {
	
	@Autowired
	public MatchService matchservice;
	
	@RequestMapping("/team/matchinsert")
	public ModelAndView authmatchinsert (HttpServletRequest request,@ModelAttribute MatchDto dto){
		ModelAndView mView = new ModelAndView();
		matchservice.applicationsMatch(request,dto);
		mView.setViewName("redirect:/team/list.do");
		return mView;
	}
	
	@RequestMapping("/team/matchsuccess")
	public ModelAndView authmatchsuccess(HttpServletRequest request){
		ModelAndView mView=new ModelAndView();
		String awayTeam = request.getParameter("awayTeam");
		System.out.println(awayTeam);
		matchservice.successMatching(request);

		mView.setViewName("match/info");
		return mView;
		
	}
}
