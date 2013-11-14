package org.hb0712.yang.opencms.controller;

import org.hb0712.yang.opencms.service.DirectoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DirectoryController {
	@Autowired
	private DirectoryService directoryService;

	@RequestMapping("/index")
	public String read(){
		return "read";
	}
	
	@RequestMapping("/directory/list")
	public String list(Model model){
//		directoryService.read(1);
		return "directory/list";
	}
}
