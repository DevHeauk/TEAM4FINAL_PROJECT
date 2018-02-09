package com.gura.project;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gura.project.shop.service.ShopService;

@Controller
public class HomeController {
	@Autowired
	private ShopService shopService;
	
	@RequestMapping("/home")
	public ModelAndView home(HttpServletRequest request) {
		String id=(String)request.getSession().getAttribute("id");
		
		if(id != null){
			ModelAndView mView=shopService.homeList(request);
			//mView=shopService.cart_data(id);
			mView.setViewName("home");
			return mView;
		}else{
			ModelAndView mView=shopService.homeList(request);
			mView.setViewName("home");
			return mView;
		}
	}
	
}
