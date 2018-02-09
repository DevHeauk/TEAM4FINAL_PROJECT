package com.gura.project.shop.dao;

import java.util.List;

import com.gura.project.shop.dto.CartDto;
import com.gura.project.shop.dto.ShopDto;
import com.gura.project.users.dto.UsersDto;

public interface ShopDao {
	public List<ShopDto> getList(ShopDto dto); //상품 목록을 리턴해주는 메소드
	public void minusCount(int num); //상품 재고를 감소시키는 메소드
	public void minusMoney(ShopDto dto); //잔고 감소
	public void plusPoint(ShopDto dto); //포인트 증가
	public int getPrice(int num); // 상품의 가격을 리턴해주는 메소드
	public void upload(ShopDto dto);
	public void delete(int num);
	public ShopDto getData(int num);
	public int getCount(ShopDto dto);
	public void cart_insert(ShopDto dto);
	public List<CartDto> cartList(String id);
	public void cartDelete(int num);
	public UsersDto getmoneyandpoint(String id);
	public void setmoneyandpoint(UsersDto usersDto);
	public List<CartDto> getPnameandPcount(UsersDto usersdto);
	public ShopDto getremaincount(ShopDto shopdto);
	public void setremaincount(ShopDto shopDto);
	public void cartdelete(UsersDto userdto);
<<<<<<< HEAD
=======
	public void InsertOrder(Product_OrderDto orderDto);
	public List<Product_OrderDto> orderList(String id);
>>>>>>> parent of f010e44... 1
	
}
