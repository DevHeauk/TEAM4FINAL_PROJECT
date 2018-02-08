package com.gura.project.shop.service;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.gura.project.shop.dao.ShopDao;
import com.gura.project.shop.dto.CartDto;
import com.gura.project.shop.dto.Product_OrderDto;
import com.gura.project.shop.dto.ShopDto;
import com.gura.project.users.dao.UsersDao;
import com.gura.project.users.dto.UsersDto;

@Repository
public class ShopServiceImpl implements ShopService{
	
	@Autowired
	private ShopDao shopDao;
	
	@Autowired
	private UsersDao userDao;
	
	//한 페이지에 나타낼 로우의 갯수
		private static final int PAGE_ROW_COUNT=6;
		//하단 디스플레이 페이지 갯수
		private static final int PAGE_DISPLAY_COUNT=5;
	@Override
	public ModelAndView getList(HttpServletRequest request) {
		
		String keyword=request.getParameter("keyword");
		String condition=request.getParameter("condition");
		String category=request.getParameter("category");
		//글정보를 담을 ModelAndView 객체 
		ModelAndView mView=new ModelAndView();
		
		//CafeDto 객체를 생성해서
		ShopDto dto=new ShopDto();
		if(keyword != null){ //검색어가 전달된 경우
			if(condition.equals("titlecontent")){ //제목+내용 검색
				dto.setTitle(keyword);
				dto.setContent(keyword);
			}else if(condition.equals("title")){//제목 검색
				dto.setTitle(keyword);
			}else if(condition.equals("writer")){//작성자 검색
				dto.setWriter(keyword);
			}
			
			mView.addObject("condition", condition);
			mView.addObject("keyword", keyword);
		}
		
		
		//보여줄 페이지의 번호
		int pageNum=1;
		//보여줄 페이지의 번호가 파라미터로 전달되는지 읽어온다.
		String strPageNum=request.getParameter("pageNum");
		if(strPageNum != null){//페이지 번호가 파라미터로 넘어온다면
			//페이지 번호를 설정한다.
			pageNum=Integer.parseInt(strPageNum);
		}
		//보여줄 페이지 데이터의 시작 ResultSet row 번호
		int startRowNum=1+(pageNum-1)*PAGE_ROW_COUNT;
		//보여줄 페이지 데이터의 끝 ResultSet row 번호
		int endRowNum=pageNum*PAGE_ROW_COUNT;
		//전체 row 의 갯수를 DB 에서 얻어온다.
		int totalRow = shopDao.getCount(dto);
		//전체 페이지의 갯수 구하기
		int totalPageCount=
				(int)Math.ceil(totalRow/(double)PAGE_ROW_COUNT);
		//시작 페이지 번호
		int startPageNum=
			1+((pageNum-1)/PAGE_DISPLAY_COUNT)*PAGE_DISPLAY_COUNT;
		//끝 페이지 번호
		int endPageNum=startPageNum+PAGE_DISPLAY_COUNT-1;
		//끝 페이지 번호가 잘못된 값이라면 
		if(totalPageCount < endPageNum){
			endPageNum=totalPageCount; //보정해준다. 
		}
		
		dto.setStartRowNum(startRowNum);
		dto.setEndRowNum(endRowNum);
		dto.setCategory(category);
		List<ShopDto> list=shopDao.getList(dto);
		
		mView.addObject("list", list);
		mView.addObject("list3", list);
		mView.addObject("pageNum", pageNum);
		mView.addObject("startPageNum", startPageNum);
		mView.addObject("endPageNum", endPageNum);
		mView.addObject("totalPageCount", totalPageCount);
		
		String id=(String)request.getSession().getAttribute("id");
		List<CartDto> list2=shopDao.cartList(id);
		mView.addObject("list2", list2);

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
		mView.addObject("cart_list", list);
		mView.addObject("list2", list);
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
		
		userdto.setId(id);
		
		shopDao.setmoneyandpoint(userdto);
		
		List<CartDto> PnameandPcountlist= shopDao.getPnameandPcount(userdto);
		ShopDto shopdto=new ShopDto();
		List<ShopDto> titleList=shopDao.getList2();
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
			int resultCount=remainCount-count;
			shopdto.setRemainCount(resultCount);
			shopDao.setremaincount(shopdto);
		}
		shopDao.cartdelete(userdto);	
	}

	@Override
	public void insertorder(HttpServletRequest request) {
		Product_OrderDto orderDto=new Product_OrderDto();
		String id=(String)request.getSession().getAttribute("id");
		
		List<CartDto> order_list=shopDao.cartList(id);
		System.out.println(order_list.size());
		for(CartDto tmp1:order_list){
			UsersDto addr_dto=userDao.getData(id);
			orderDto.setId(id);
			orderDto.setAddr01(addr_dto.getAddr01());
			orderDto.setAddr02(addr_dto.getAddr02());
			orderDto.setAddr03(addr_dto.getAddr03());
			orderDto.setPrice(tmp1.getPrice());
			orderDto.setTitle(tmp1.getProduct_name());
			orderDto.setProduct_count(tmp1.getProduct_count());
			orderDto.setSaveFileName(tmp1.getSaveFileName());
			orderDto.setDelivery_location("배송중");
			shopDao.InsertOrder(orderDto);
		}
		
	}

	@Override
	public ModelAndView orderList(String id) {
		List<Product_OrderDto> list=shopDao.orderList(id);
		ModelAndView mView=new ModelAndView();
		mView.addObject("list", list);
		return mView;
	}
}
