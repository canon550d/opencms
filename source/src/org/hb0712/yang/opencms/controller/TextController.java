package org.hb0712.yang.opencms.controller;

import org.hb0712.yang.opencms.core.CMS;
import org.hb0712.yang.opencms.core.Path;
import org.hb0712.yang.opencms.pojo.Text;
import org.hb0712.yang.opencms.service.TextService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.ContextLoader;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TextController {
	@Autowired
	private TextService textService;

	@RequestMapping("/directory/edit")
	public ModelAndView view(Integer id){
		ModelAndView mv = new ModelAndView();
		Text text = textService.get(id);
		mv.addObject(text);System.out.println(textService.getUrl(text));
		
		
		String realpath = ContextLoader.getCurrentWebApplicationContext().getServletContext().getRealPath("/");
		realpath = new Path().getSavePath();
		CMS.save(realpath+textService.getUrl(text), text.getMessage());
		return mv;
	}

	@RequestMapping("/template/model")
	public ModelAndView model(Integer id){
		ModelAndView mv = new ModelAndView();
		return mv;
	}

}
