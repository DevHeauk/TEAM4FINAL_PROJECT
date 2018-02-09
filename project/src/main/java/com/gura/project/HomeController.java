package com.gura.project;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/home")
<<<<<<< HEAD
	public String home() {	

		return "home";
=======
	public ModelAndView home(HttpServletRequest request) {
		String id=(String)request.getSession().getAttribute("id");
		
		if(id != null){
			ModelAndView mView=shopService.getList(request);
			//mView=shopService.cart_data(id);
			mView.setViewName("home");
			return mView;
		}else{
			ModelAndView mView=mView=new ModelAndView();
			mView.setViewName("home");
			return mView;
		}
>>>>>>> parent of f010e44... 1
	}
	
}
