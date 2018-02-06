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
	public List<ShopDto> getList(ShopDto dto) {
		List<ShopDto> list=session.selectList("shop.getList", dto);
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
	public int getCount(ShopDto dto) {
		int count=session.selectOne("shop.getCount", dto);
		return count;
	}
	

}
