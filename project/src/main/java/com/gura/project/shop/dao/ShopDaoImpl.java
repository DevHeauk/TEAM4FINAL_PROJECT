package com.gura.project.shop.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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


}
