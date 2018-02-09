package com.gura.project.team.service;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.gura.project.match.dao.MatchDao;
import com.gura.project.match.dto.MatchDto;
import com.gura.project.team.dao.TeamDao;
import com.gura.project.team.dto.TeamDto;
import com.gura.project.users.dao.UsersDao;
import com.gura.project.users.dto.UsersDto;

@Service
public class TeamServiceImpl implements TeamService{
	
	@Autowired
	public TeamDao teamdao;
	@Autowired
	public MatchDao matchdao;
	@Autowired
	public UsersDao usersdao;
	
	//한 페이지에 나타낼 로우의 갯수
	private static final int PAGE_ROW_COUNT=3;
	//하단 디스플레이 페이지 갯수
	private static final int PAGE_DISPLAY_COUNT=5;
	
	@Override
	public void insert(HttpServletRequest request, TeamDto dto) {
		
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
				
				//FileDao 객체를 이용해서 DB 에 저장하기
				teamdao.insert(dto);	
				teamdao.leader_upadte(dto);
	}
		
		
	

	@Override
	public ModelAndView detail(HttpServletRequest request) {
		ModelAndView mView=new ModelAndView();

		//team detail 정보를얻어온다
		//HomeTeam 이름.
		String name=request.getParameter("name");
		//HomeTeam의 데이타를 얻어온다.
		TeamDto dto=new TeamDto();
		dto.setName(name);
		//HomeTeam의 정보를 얻어온다.
		TeamDto HomeDto=teamdao.getData(dto);
		//HomeTeam의 멤버리스트를 얻어온다. 
		List<UsersDto> memberlist=teamdao.teamMemberList(dto);
		
		
		//팀가입 신청목록 가져온다. (joinlist에서 얻어온다.)
		List<TeamDto> list=teamdao.joining_data(dto);
		//HomeTeam에 가입신청한 사람들의 정보를 List로 얻어온다. 
		List<UsersDto> joininfo=teamdao.joininfo(list);
		
		MatchDto matchdto=new MatchDto();
		matchdto.setHomeTeam(name);
		//로그인된 아이디의 팀
		
		String id = (String)request.getSession().getAttribute("id");
		
		if(id!=null){
			UsersDto currentDto= usersdao.getData(id);
			TeamDto joindto=teamdao.getjointeam(id);
			mView.addObject("teamdto", joindto);
			mView.addObject("userdto", currentDto);
			if(currentDto.getTeam()!=null){
				String awayTeam = currentDto.getTeam();
				matchdto.setAwayTeam(awayTeam);
				mView.addObject("awayteam", awayTeam);
				//로그인된 아이디가 매칭신청이 되었는지 여부
				boolean Matched = matchdao.matched(matchdto);
				//해당아이디가 매칭신청을 했는지 여부. 
				mView.addObject("Matched", Matched);
			}else{
			    mView.addObject("awayteam", null);
	
			}
		}else{
	    	mView.addObject("awayteam", null);

		}
		
		
		
		//HomeTeam과 매치된 AwayTeam의 list를 얻어온다. 
		List<MatchDto> awayteamlist=teamdao.awayteam(matchdto);
		//HomeTeam과 매치된 AwayTeam의 정보를 list로 얻어온다.
		List<TeamDto> awayteaminfo=teamdao.awayteaminfo(awayteamlist);	
		
					
		//HomeTeam정보
		mView.addObject("Homedto", HomeDto);
		//가입신청한 사람들 정보 리스트(List)
		mView.addObject("joininfo", joininfo);
		//HomeTeam 멤버 리스트
		mView.addObject("memberlist", memberlist);
		//HomeTeam과 매치된 AwayTeam의 정보 list로 얻어온다.
		mView.addObject("awayteaminfo", awayteaminfo);
		//matching된 게임의 정보.(awayteam, matchdate, ground, successMatching)
		mView.addObject("match", awayteamlist);
		

				
		return mView;
	}

	@Override
	public ModelAndView list(HttpServletRequest request) {
		ModelAndView mView=new ModelAndView();
		
		/*
		 *  request 에 검색 keyword 가 전달 될수도 있고 안될수도 있다.
		 *  1. 전달 안되는 경우 : home.jsp 에서 목록보기를 누른경우
		 *  2. 전달 되는 경우 : list.jsp 에서 검색어를 입력후 form 전송한
		 *     경우. 
		 *  3. 전달 되는 경우 : 이미 검색을 한 상태에서 페이지 링크를 
		 *     누른경우
		 */
		//검색과 관련된 파라미터를 읽어와 본다.
		String keyword=request.getParameter("keyword");
		String condition=request.getParameter("condition");
		
		TeamDto dto = new TeamDto();
		
		if(keyword != null){ //검색어가 전달된 경우
			if(condition.equals("name")){ //팀이름 검색
				dto.setName(keyword);
			}else if(condition.equals("leader")){//리더 검색
				dto.setLeader(keyword);
			}else if(condition.equals("ground")){//경기장 검색
				dto.setGround(keyword);
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
		int totalRow = teamdao.getCount(dto);
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
		
		//1. 글목록을 불러온다.
		List<TeamDto> list=teamdao.teamList(dto);
		
		mView.addObject("list", list);
		mView.addObject("pageNum", pageNum);
		mView.addObject("startPageNum", startPageNum);
		mView.addObject("endPageNum", endPageNum);
		mView.addObject("totalPageCount", totalPageCount);
		
		return mView;
	}

	@Override
	public ModelAndView joinconfirm(HttpServletRequest request) {
		TeamDto dto=new TeamDto();
		String joinid=(String)request.getSession().getAttribute("id");
		String jointeam=request.getParameter("name");
		dto.setJointeam(jointeam);
		dto.setJoinid(joinid);

		ModelAndView mView=new ModelAndView();
		teamdao.joining(dto);
		return mView;
	}

	@Override
	public ModelAndView join(HttpServletRequest request) {
		
		TeamDto dto=new TeamDto();
		String joinid=(String) request.getParameter("joinid");
		String jointeam=(String) request.getParameter("name");
		dto.setJoinid(joinid);
		dto.setJointeam(jointeam);
		teamdao.joinupdate(dto);
		teamdao.joindelete(dto);
		
		return new ModelAndView();
		
	}
	
	@Override
	public ModelAndView joinrefuse(HttpServletRequest request) {
		
		TeamDto dto=new TeamDto();
		String joinid=(String) request.getParameter("joinid");
		dto.setJoinid(joinid);
		teamdao.joindelete(dto);
		
		return new ModelAndView();
		
	}

	

}
