package com.gura.project.shop.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.gura.project.shop.dto.ShopDto;


public interface ShopService {
	public ModelAndView getList(HttpServletRequest request);
	public ModelAndView buy(ShopDto dto);
	public void upload(HttpServletRequest request, ShopDto dto);
	public void delete(HttpServletRequest request, int num);
}
