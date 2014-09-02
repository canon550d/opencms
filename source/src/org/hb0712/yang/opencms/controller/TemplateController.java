package org.hb0712.yang.opencms.controller;

import java.util.List;

import org.hb0712.yang.opencms.pojo.Template;
import org.hb0712.yang.opencms.service.TemplateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TemplateController {
	@Autowired
	private TemplateService templateService;
	
	@RequestMapping("/template/create")
	public ModelAndView create(){
		return null;
	}

	@RequestMapping("/template/mlist")
	public ModelAndView mlist(){
		List<Template> mlist = templateService.mlist();
		ModelAndView mv = new ModelAndView();
		mv.addObject("mlist", mlist);
		return mv;
	}

	@RequestMapping("/template/model")
	public ModelAndView model(String topicid, String modelid){
		ModelAndView mv = new ModelAndView();
		Template template = templateService.read(topicid, modelid);
		mv.addObject("template", template);
		return mv;
	}
}
