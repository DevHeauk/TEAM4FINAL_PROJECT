package com.gura.project.users.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.gura.project.users.dao.UsersDao;
import com.gura.project.users.dto.UsersDto;

@Service
public class UsersServiceImpl implements UsersService{
	
	//의존 객체
	@Autowired
	private UsersDao dao;
	
	@Autowired
	private PasswordEncoder encoder;	
	
	@Override
	public ModelAndView singup(UsersDto dto) {
		String hash = encoder.encode(dto.getPwd());
		dto.setPwd(hash);
		
		dao.insert(dto);
		
		ModelAndView mView = new ModelAndView();
		mView.addObject("id", dto.getId());
		
		return mView;
	}

	@Override
	public boolean canUseId(String id) {
		boolean canUse = dao.canUseId(id);
		
		return canUse;
	}

	@Override
	public ModelAndView login(UsersDto dto, HttpServletRequest request) {
		UsersDto resultDto=dao.getData(dto.getId());
		
		boolean isValid=false;
		
		if(resultDto != null){ //DB 에 입력한 아이디가 존재한다면
			boolean isMatch=encoder.matches(dto.getPwd(), resultDto.getPwd());
			if(isMatch){
				isValid=true;
			}
		}
		
		String url=request.getParameter("url");
		
		ModelAndView mView=new ModelAndView();
		if(isValid){//아이디 비밀번호가 일치 한다면
			request.getSession().setAttribute("id", dto.getId());
			mView.addObject("msg", 
					dto.getId()+" 님 로그인 되었습니다.");
			mView.addObject("url", url);
		}else{//아이디 혹은 비밀번호가 틀린 경우 
			mView.addObject("msg", "아이디 혹은 비밀번호가 틀려요");
			String location=request.getContextPath()+
					"/users/login_form.do?url="+url;
			mView.addObject("url", location);
		}
		
		return mView;
	}

	@Override
	public void update(UsersDto dto) {
		dao.update(dto);
		
	}

	@Override
	public ModelAndView delete(HttpSession session) {
		String id = (String)session.getAttribute("id");
		dao.delete(id);
		session.invalidate();
		ModelAndView mView = new ModelAndView();
		mView.addObject("id", id);
		return mView;
	}

	@Override
	public ModelAndView detail(String id) {
		UsersDto dto = dao.getData(id);
		
		ModelAndView mView = new ModelAndView();
		mView.addObject("dto", dto);
		
		return mView;
	}

	@Override
	public UsersDto plusMoney(int inputId, HttpServletRequest request) {
		String id=(String)request.getSession().getAttribute("id");
		UsersDto dto=new UsersDto();
		dto.setId(id);
		dto.setMoney(inputId);
		UsersDto resultDto=dao.plusMoney(dto);
		return resultDto;
		
	}

}
