package com.gura.project.file.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.gura.project.file.dto.FileDto;
import com.gura.project.file.service.FileService;

@Controller
public class FileController {

	@Autowired
	private FileService fileService;
	
	@RequestMapping("board/gallery_insert")
	public ModelAndView authInsertForm(HttpServletRequest request){
		
		ModelAndView mView = new ModelAndView("board/gallery_insert");
		
		return mView;
	}
	
	@RequestMapping("/board/insert")
	public ModelAndView authInsert(HttpServletRequest request, @ModelAttribute FileDto dto){
		
		fileService.insert(request, dto);
		ModelAndView mView = new ModelAndView("board/gallery_result");
		
		return mView;
	}
	
	@RequestMapping("/board/gallery")
	public ModelAndView list(HttpServletRequest request){
		
		fileService.listTeam(request);
		fileService.listGame(request);
		fileService.listFree(request);
		
		return new ModelAndView("board/gallery");
	}
}
