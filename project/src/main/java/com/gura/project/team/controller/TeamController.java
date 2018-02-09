package com.gura.project.team.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gura.project.team.dto.TeamDto;
import com.gura.project.team.service.TeamService;


@Controller
public class TeamController {
	
	@Autowired
	public TeamService teamService;
	
	@RequestMapping("/team/team_list")
	public ModelAndView list(HttpServletRequest request){
		ModelAndView mView =teamService.list(request);
		mView.setViewName("team/team_list");
		return mView;
	}
	
	@RequestMapping("/team/insertform")
	public ModelAndView authinsertform(HttpServletRequest request){
		ModelAndView mView=new ModelAndView();
		mView.setViewName("team/insertform");
		return mView;
	}
	
	@RequestMapping("/team/insert")
	public ModelAndView authinsert(HttpServletRequest request,@ModelAttribute TeamDto dto){
		ModelAndView mView=new ModelAndView();
		String member=(String)request.getSession().getAttribute("id");
		dto.setMember(member);
		teamService.insert(request, dto);
		mView.setViewName("redirect:/team/team_list.do");
		return mView;
	}
	
	@RequestMapping("/team/detail")
	public ModelAndView detail(HttpServletRequest request){
		ModelAndView mView=teamService.detail(request);
		mView.setViewName("team/detail");
		return mView;
	}
	
	@RequestMapping("/team/detail2")
	public ModelAndView detail2(HttpServletRequest request){
		ModelAndView mView=teamService.detail(request);
		mView.setViewName("team/team_detail");
		return mView;
	}
	
	@RequestMapping("/team/joiningconfirm")
	public ModelAndView joingetdata(HttpServletRequest request){
		ModelAndView mView=teamService.joinconfirm(request);
		String name=request.getParameter("name");
		mView.setViewName("redirect:/team/detail2.do?name="+name);
		return mView;
	}
	@RequestMapping("/team/join")
	public ModelAndView join(HttpServletRequest request){
		
		ModelAndView mView=teamService.join(request);
		String name=request.getParameter("name");
		mView.setViewName("redirect:/team/detail2.do?name="+name);
		return mView;
	}
	
	@RequestMapping("/team/joinrefuse")
	public ModelAndView joinrefuse(HttpServletRequest request){
		
		ModelAndView mView=teamService.joinrefuse(request);
		String name=request.getParameter("name");
		mView.setViewName("redirect:/team/detail2.do?name="+name);
		return mView;
	}

	
}
