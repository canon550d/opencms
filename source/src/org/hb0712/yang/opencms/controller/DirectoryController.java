package org.hb0712.yang.opencms.controller;

import java.util.List;

import org.hb0712.yang.opencms.pojo.Directory;
import org.hb0712.yang.opencms.service.DirectoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DirectoryController {
	@Autowired
	private DirectoryService directoryService;

	@RequestMapping("/index")
	public String read(){
		return "read";
	}
	
	@RequestMapping("/directory/list")
	public ModelAndView list(Integer id){
		
		ModelAndView mv = new ModelAndView();
		Directory d = null;
		List<Directory> ld = null;	//显示列表
		List<Directory> folders = null;	//当前目录所有文件夹
		if(id == null){
			folders = directoryService.read();
		}else{
			d = directoryService.read(id);
			
			folders = d.getChilds();
			ld = directoryService.getFather(d);
		}
		mv.addObject("directory",d);
		mv.addObject("father",ld);
		mv.addObject("folders", folders);
		return mv;
	}
}
