package com.gura.project.users.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.gura.project.users.dto.UsersDto;
import com.gura.project.users.service.UsersService;

@Controller
public class UsersController {
	
	@Autowired
	private UsersService service;

	// 회원가입 폼 요청
	@RequestMapping("/users/signup_form")
	public String signupForm(){
		
		return "users/signup_form";
	}
	
	// 아이디 중복확인 요청
	@RequestMapping("/users/checkid")
	@ResponseBody
	public Map<String, Object> checkId(@RequestParam String inputId){
		boolean canUse = service.canUseId(inputId);
		Map<String, Object> map = new HashMap<>();
		map.put("canUse", canUse);
		
		return map;
	}
	
	// 회원가입 요청
	@RequestMapping("/users/signup")
	public ModelAndView signup(@ModelAttribute UsersDto dto){
		ModelAndView mView = service.singup(dto);
		mView.setViewName("users/signup_result");
		return mView;
	}
	
	// 로그인 폼 요청
	@RequestMapping("/users/login_form")
	public ModelAndView loginForm(ModelAndView mView, HttpServletRequest request){
		String url = request.getParameter("url");
		if(url==null){
			url=request.getContextPath()+"/";
		}
		mView.addObject("url", url);
		mView.setViewName("users/login_form");
		
		return mView;
	}
	
	// 로그인 요청
	@RequestMapping("/users/login")
	public ModelAndView login(@ModelAttribute UsersDto dto, HttpServletRequest request){
		ModelAndView mView = service.login(dto, request);
		mView.setViewName("users/login_result");
		
		return mView;
	}
	
	// 회원정보 요청
	@RequestMapping("/users/info")
	public ModelAndView authInfo(HttpServletRequest request){
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		ModelAndView mView = service.detail(id);
		mView.setViewName("users/info");
		
		return mView;
	}
	
	// 회원정보 수정 폼
	@RequestMapping("/users/update_form")
	public ModelAndView authUpdateForm(HttpServletRequest request){
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		ModelAndView mView = service.detail(id);
		mView.setViewName("users/update_form");
		
		return mView;
	}
	
	// 회원정보 수정
	@RequestMapping("/suers/update")
	public ModelAndView authUpdate(@ModelAttribute UsersDto dto, HttpServletRequest request){
		service.update(dto);
		
		ModelAndView mView = new ModelAndView();
		mView.setViewName("redirect:/users/info.do");
		return mView;
	}
	
	// 로그아웃
	@RequestMapping("/users/logout")
	public ModelAndView logout(HttpSession session, ModelAndView mView){
		String id = (String)session.getAttribute("id");
		session.invalidate();
		
		mView.addObject("msg", id+"님 로그아웃 되었습니다.");
		mView.setViewName("users/logout");
		
		return mView;
	}
	
	// 회원 탈퇴
	@RequestMapping("/users/delete")
	public ModelAndView authDelete(HttpServletRequest request){
		HttpSession session = request.getSession();
		ModelAndView mView = service.delete(session);
		
		mView.setViewName("users/delete_result");
		
		return mView;
	}
	
	//충전
	@RequestMapping("/users/inputMoney")
	@ResponseBody
	public Map<String, Object> inputMoney(@RequestParam int inputId, HttpServletRequest request){
		UsersDto dto=service.plusMoney(inputId, request);
		Map<String, Object> map=new HashMap<>();
		map.put("price", dto);
		return map;
		
	}
}
