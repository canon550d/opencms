package org.hb0712.yang.opencms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TemplateController {
	@RequestMapping("/template/create")
	public ModelAndView create(){
		return null;
	}

	@RequestMapping("/template/mlist")
	public ModelAndView mlist(){
		return null;
	}

	@RequestMapping("/template/model")
	public ModelAndView model(String topicid, String modelid){
		return null;
	}
}
