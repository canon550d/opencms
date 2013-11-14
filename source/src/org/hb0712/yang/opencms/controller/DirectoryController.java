package org.hb0712.yang.opencms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DirectoryController {

	@RequestMapping("/index")
	public String read(){
		return "read";
	}
}
