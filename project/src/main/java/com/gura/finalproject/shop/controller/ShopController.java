package com.gura.finalproject.shop.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gura.project.shop.dto.ShopDto;
import com.gura.project.shop.service.ShopService;
import com.gura.project.users.service.UsersService;

@Controller
public class ShopController {
	
	@Autowired
	private ShopService shopService;
	@Autowired
	private UsersService userService;
	
	@RequestMapping("/shop/list")
	public ModelAndView list(HttpServletRequest request){
		
		ModelAndView mView=shopService.getList(request);
		
		mView.setViewName("shop/list");
		
		return mView;
	}
	
	@RequestMapping("/shop/upload_form")
	public ModelAndView authUploadForm(HttpServletRequest request){
		String id=(String)request.getSession().getAttribute("id");
		ModelAndView mView=new ModelAndView();
		mView.addObject("id", id);
		mView.setViewName("shop/shop_insert");
		return mView;
	}

	
	@RequestMapping("/shop/upload")
	public ModelAndView authInsert(HttpServletRequest request, @ModelAttribute ShopDto dto){
		/*
		 * 인자로 전달된 FileDto 에는 String writer 작성자 하고 
		 * MultipartFile file 객체의 참조값이 들어있다.
		 * 나머지 정보는 서비스에서 처리 해야한다.
		 */
		shopService.upload(request, dto);
		
		return new ModelAndView("redirect:/shop/shop-product-list.do");

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
	public ModelAndView productList(HttpServletRequest request){
		String id=(String)request.getSession().getAttribute("id");
		if(id != null){
			ModelAndView mView=shopService.getList(request);
			mView.setViewName("shop/product");
			return mView;
		}else{
			ModelAndView mView=shopService.getList(request);
			mView.setViewName("shop/product");
			return mView;
		}
		
	}
	
	@RequestMapping("/shop/shop-search-result")
	public ModelAndView searchResult(){
		ModelAndView mView = new ModelAndView();
		mView.setViewName("shop/shop-search-result");
		
		return mView;
	}
	
	@RequestMapping("/shop/cartlist")
	public ModelAndView authcartlist(@RequestParam String id){
		ModelAndView mView=shopService.cart_data(id);
		mView.setViewName("shop/cart");
		return mView;
	}
	
	@RequestMapping("/shop/cart")
	public ModelAndView shoppingCart(HttpServletRequest reuqest, @RequestParam int num, @RequestParam String id, @RequestParam int count){
		ShopDto dto=shopService.getData(reuqest, num);
		dto.setProduct_count(count);
		dto.setWriter(id);
		shopService.cart_insert(dto);
		ModelAndView mView=new ModelAndView();
		mView.setViewName("shop/cart_result");
		
		return mView;
	}
	

	@RequestMapping("/shop/shop-upload-form")
	public ModelAndView uploadForms(){
		ModelAndView mView = new ModelAndView();
		mView.setViewName("shop/shop-upload-form");
		
		
		return mView;
	}
	
	@RequestMapping("/shop/shop-wishlist")
	public ModelAndView wishlist(){
		ModelAndView mView = new ModelAndView();
		mView.setViewName("shop/shop-wishlist");
		
		return mView;
	}
	
	@RequestMapping("/shop/delete")
	public ModelAndView authDelete(HttpServletRequest request, @RequestParam int num){
		shopService.delete(request, num);
		return new ModelAndView("redirect:/shop/shop-product-list.do");
	}
	
	@RequestMapping("/shop/cart_delete")
	public ModelAndView cartDelete(@RequestParam int num, @RequestParam String id){
		shopService.cart_delete(num);
		return new ModelAndView("redirect:/shop/cartlist.do?id="+id);
	}
	
	@RequestMapping("/shop/buy")
	public ModelAndView authBuy(HttpServletRequest request, @RequestParam String id){
		shopService.insertorder(request);
		shopService.order(request);
		return new ModelAndView("redirect:/shop/cartlist.do?id="+id);
	}
	
	@RequestMapping("/shop/order")
	public ModelAndView authOrderList(HttpServletRequest request, @RequestParam String id){
		ModelAndView mView=shopService.orderList(id);
		mView.setViewName("shop/order");
		return mView;
	}
}
