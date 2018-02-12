package com.gura.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gura.project.match.service.MatchService;
import com.gura.project.team.service.TeamService;

@Controller
public class HomeController {
	
	@Autowired
	public TeamService teamService;
	
	@RequestMapping("/home")
	public ModelAndView home() {	

		
		ModelAndView mView=teamService.mainpageteam();
		mView.setViewName("home");
		return mView;
	}
	
}
