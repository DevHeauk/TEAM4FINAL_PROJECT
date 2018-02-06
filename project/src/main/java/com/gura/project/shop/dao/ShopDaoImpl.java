package com.gura.project.shop.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gura.project.shop.dto.CartDto;
import com.gura.project.shop.dto.ShopDto;


@Repository
public class ShopDaoImpl implements ShopDao{
	
	@Autowired
	private SqlSession session;
	
	@Override
	public List<ShopDto> getList() {
		List<ShopDto> list=session.selectList("shop.getList");
		return list;
	}

	@Override
	public void minusCount(int num) {
		
	}

	@Override
	public void minusMoney(ShopDto dto) {
		
	}

	@Override
	public void plusPoint(ShopDto dto) {
		
	}

	@Override
	public int getPrice(int num) {

		return 0;
	}

	@Override
	public void upload(ShopDto dto) {
		session.insert("shop.insert", dto);
		
	}

	@Override
	public void delete(int num) {
		session.delete("shop.delete", num);
		
	}

	@Override
	public ShopDto getData(int num) {
		ShopDto dto=session.selectOne("shop.getData", num);
		return dto;
	}

	@Override
	public void cart_insert(ShopDto dto) {
		session.insert("shop.cartInsert", dto);
		
	}

	@Override
	public List<CartDto> cartList(String id) {
		List<CartDto> list=session.selectList("shop.cartList", id);
		return list;
	}

	@Override
	public void cartDelete(int num) {
		session.delete("shop.cartDelete", num);
	}
	

}
