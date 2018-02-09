package com.gura.project.shop.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.gura.project.shop.dto.ShopDto;


public interface ShopService {
	public ModelAndView getList(HttpServletRequest request);
	public ModelAndView buy(ShopDto dto);
	public void upload(HttpServletRequest request, ShopDto dto);
	public void delete(HttpServletRequest request, int num);
	public ShopDto getData(HttpServletRequest reuqest, int num);
	public void cart_insert(ShopDto dto);
	public ModelAndView cart_data(String id);
	public void cart_delete(int num);
	public void order(HttpServletRequest request);
	public void insertorder(HttpServletRequest request);
	public ModelAndView orderList(String id);
	public ModelAndView homeList(HttpServletRequest request);
}
