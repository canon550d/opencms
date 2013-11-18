package org.hb0712.yang.opencms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TextController {

	@RequestMapping("/directory/edit")
	public ModelAndView view(Integer id){
		ModelAndView mv = new ModelAndView();
		return mv;
	}

	@RequestMapping("/template/model")
	public ModelAndView model(Integer id){
		ModelAndView mv = new ModelAndView();
		return mv;
	}

}
