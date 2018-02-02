package com.gura.finalproject.shop.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gura.project.shop.dto.ShopDto;
import com.gura.project.shop.service.ShopService;

@Controller
public class ShopController {
	
	@Autowired
	private ShopService shopService;
	
	
	@RequestMapping("/shop/upload")
	public ModelAndView authInsert(HttpServletRequest request, @ModelAttribute ShopDto dto){
		/*
		 * 인자로 전달된 FileDto 에는 String writer 작성자 하고 
		 * MultipartFile file 객체의 참조값이 들어있다.
		 * 나머지 정보는 서비스에서 처리 해야한다.
		 */
		shopService.upload(request, dto);
		
		return new ModelAndView("redirect:/shop/list.do");
	}
	
	@RequestMapping("/shop/shop-item")
	public ModelAndView item(){
		ModelAndView mView = new ModelAndView();
		mView.setViewName("shop/shop-item");
		
		return mView;
	}
	
	@RequestMapping("/shop/shop-faq")
	public ModelAndView faq(){
		ModelAndView mView = new ModelAndView();
		mView.setViewName("shop/shop-faq");
		
		return mView;
	}
	
	@RequestMapping("/shop/shop-product-list")
	public ModelAndView productList(){		
		ModelAndView mView=shopService.getList();
		mView.setViewName("shop/product");
		return mView;
	}
	
	@RequestMapping("/shop/shop-search-result")
	public ModelAndView searchResult(){
		ModelAndView mView = new ModelAndView();
		mView.setViewName("shop/shop-search-result");
		
		return mView;
	}
	
	@RequestMapping("/shop/shop-shopping-cart")
	public ModelAndView shoppingCart(){
		ModelAndView mView = new ModelAndView();
		mView.setViewName("shop/shop-shopping-cart");
		
		return mView;
	}
	
	@RequestMapping("/shop/shop-standard-forms")
	public ModelAndView standardForms(){
		ModelAndView mView = new ModelAndView();
		mView.setViewName("shop/shop-standard-forms");
		
		return mView;
	}
	
	@RequestMapping("/shop/shop-wishlist")
	public ModelAndView wishlist(){
		ModelAndView mView = new ModelAndView();
		mView.setViewName("shop/shop-wishlist");
		
		return mView;
	}
}
