package com.gura.project.shop.service;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.gura.project.shop.dao.ShopDao;
import com.gura.project.shop.dto.CartDto;
import com.gura.project.shop.dto.ShopDto;
import com.gura.project.users.dto.UsersDto;


@Repository
public class ShopServiceImpl implements ShopService{
	
	@Autowired
	private ShopDao shopDao;
	
	@Override
	public ModelAndView getList() {
		List<ShopDto> list=shopDao.getList();
		ModelAndView mView=new ModelAndView();
		mView.addObject("list", list);
		return mView;
	}

	@Override
	public ModelAndView buy(ShopDto dto) {
		return null;
	}

	@Override
	public void upload(HttpServletRequest request, ShopDto dto) {
		//파일을 저장할 폴더의 절대 경로를 얻어온다.
				String realPath=request.getSession()
						.getServletContext().getRealPath("/upload");
				//콘솔에 경로 출력해보기
				System.out.println(realPath);
				
				//MultipartFile 객체의 참조값 얻어오기
				//FileDto 에 담긴 MultipartFile 객체의 참조값을 얻어온다.
				MultipartFile mFile=dto.getFile();
				//원본 파일명
				String orgFileName=mFile.getOriginalFilename();
				//파일 사이즈
				long fileSize=mFile.getSize();
				System.out.println(fileSize);
				//저장할 파일의 상세 경로
				String filePath=realPath+File.separator;
				//디렉토리를 만들 파일 객체 생성
				File file=new File(filePath);
				if(!file.exists()){//디렉토리가 존재하지 않는다면
					file.mkdir();//디렉토리를 만든다.
				}
				//파일 시스템에 저장할 파일명을 만든다. (겹치치 않게)
				String saveFileName=System.currentTimeMillis()+orgFileName;
				try{
					//upload 폴더에 파일을 저장한다.
					mFile.transferTo(new File(filePath+saveFileName));
				}catch(Exception e){
					e.printStackTrace();
				}
				//FileDto 객체에 추가 정보를 담는다.
				dto.setOrgFileName(orgFileName);
				dto.setSaveFileName(saveFileName);
				dto.setFileSize(fileSize);
				
				//세션에서 작성자 정보를 얻어온다
				String id=(String)request.getSession().getAttribute("id");
				//fileDto 객체에 작성자 정보를 담는다.
				dto.setWriter(id);
				//FileDao 객체를 이용해서 DB 에 저장하기
				shopDao.upload(dto);				
			}

	@Override
	public void delete(HttpServletRequest request, int num) {
		ShopDto dto=shopDao.getData(num);
		String path=request.getServletContext().getRealPath("/upload")+File.separator+dto.getSaveFileName();
		System.out.println(path);
		try{
			new File(path).delete();
		}catch(Exception e){}
		
		shopDao.delete(num);
	}

	@Override
	public ShopDto getData(HttpServletRequest reuqest, int num) {
		ShopDto dto=shopDao.getData(num);
		return dto;
	}

	@Override
	public void cart_insert(ShopDto dto) {
		shopDao.cart_insert(dto);
		
	}

	@Override
	public ModelAndView cart_data(String id) {
		ModelAndView mView=new ModelAndView();
		
		List<CartDto> list=shopDao.cartList(id);
		int SumPrice = 0;
		for(CartDto tmp:list){
			SumPrice = SumPrice + tmp.getTotal_price();
		}
		mView.addObject("list", list);
		mView.addObject("SumPrice", SumPrice);
		return mView;
	}

	@Override
	public void cart_delete(int num) {
		shopDao.cartDelete(num);
		
	}

	@Override
	public void order(HttpServletRequest request) {
		String id=(String) request.getSession().getAttribute("id");
		int totalprice= Integer.parseInt(request.getParameter("totalprice"));
		UsersDto userdto=shopDao.getmoneyandpoint(id);
		userdto.setMoney(userdto.getMoney()-totalprice);
		userdto.setPoint((int) (userdto.getPoint()+totalprice*0.1));
		System.out.println((userdto.getPoint()+totalprice*0.1));
		
		userdto.setId(id);
		
		shopDao.setmoneyandpoint(userdto);
		CartDto cartdto=new CartDto();
		
		List<CartDto> PnameandPcountlist= shopDao.getPnameandPcount(userdto);
		ShopDto shopdto=new ShopDto();
		List<ShopDto> titleList=shopDao.getList();
		for(CartDto tmp:PnameandPcountlist){
			int count = 0;
			for(ShopDto list:titleList){
				if(tmp.getProduct_name().equals(list.getTitle())){
					count = count + tmp.getProduct_count();
				}
			}
			shopdto.setTitle(tmp.getProduct_name());
			shopdto = shopDao.getremaincount(shopdto);
			shopdto.setTitle(tmp.getProduct_name());
			int remainCount=shopdto.getRemainCount();
			shopdto.setRemainCount(remainCount-count);
			shopDao.setremaincount(shopdto);	
		}
		shopDao.cartdelete(userdto);
	}
}
