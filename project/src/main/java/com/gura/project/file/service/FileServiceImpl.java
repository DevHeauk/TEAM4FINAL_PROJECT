package com.gura.project.file.service;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.gura.project.file.dao.FileDao;
import com.gura.project.file.dto.FileDto;

@Service
public class FileServiceImpl implements FileService{

	@Autowired
	private FileDao fileDao;

	@Override
	public void insert(HttpServletRequest request, FileDto dto) {

		String realPath=request.getSession()
				.getServletContext().getRealPath("/upload");

		System.out.println(realPath);

		MultipartFile mFile=dto.getFile();

		String orgFileName=mFile.getOriginalFilename();

		long fileSize=mFile.getSize();

		String filePath=realPath+File.separator;

		File file=new File(filePath);
		if(!file.exists()){
			file.mkdir();
		}

		String saveFileName=System.currentTimeMillis()+orgFileName;
		try{
			mFile.transferTo(new File(filePath+saveFileName));
		}catch(Exception e){
			e.printStackTrace();
		}

		dto.setOrgFileName(orgFileName);
		dto.setSaveFileName(saveFileName);
		dto.setFileSize(fileSize);
		
		String id=(String)request.getSession().getAttribute("id");

		dto.setWriter(id);

		fileDao.insert(dto);	
		
	}


	@Override
	public void delete(HttpServletRequest request, int num) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ModelAndView getData(int num) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public ModelAndView listTeam(HttpServletRequest request) {
		
		FileDto dto = new FileDto();		
		List<FileDto> list = fileDao.getListTeam(dto);
		
		ModelAndView mView = new ModelAndView();
		mView.addObject("listTeam", list);
		
		return mView;
	}


	@Override
	public ModelAndView listGame(HttpServletRequest request) {
		
		FileDto dto = new FileDto();		
		List<FileDto> list = fileDao.getListGame(dto);
		
		ModelAndView mView = new ModelAndView();
		mView.addObject("listGame", list);
		
		return mView;
	}


	@Override
	public ModelAndView listFree(HttpServletRequest request) {
		
		FileDto dto = new FileDto();		
		List<FileDto> list = fileDao.getListFree(dto);
		
		ModelAndView mView = new ModelAndView();
		mView.addObject("listFree", list);
		
		return mView;
	}

}
