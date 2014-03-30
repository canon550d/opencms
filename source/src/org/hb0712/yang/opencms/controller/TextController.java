package org.hb0712.yang.opencms.controller;

import org.hb0712.yang.opencms.pojo.Text;
import org.hb0712.yang.opencms.service.DirectoryService;
import org.hb0712.yang.opencms.service.TextService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TextController {
	@Autowired
	private DirectoryService directoryService;
	@Autowired
	private TextService textService;

	@RequestMapping("/article/edit")
	public ModelAndView view(Text text){
		int id = text.getId();
		ModelAndView mv = new ModelAndView();
		if(id > 0){
			Text object = textService.get(text.getId());
			
			if(text.getMessage()!=null && text.getSubject()!=null){
				object.setSubject(text.getSubject());
				object.setMessage(text.getMessage());
				object.getPaper().setContent(text.getPaper().getContent());
				this.textService.update(object);
//				return new ModelAndView(new RedirectView("/directory/home.do"));
			}
			mv.addObject(object);
		}
		
		return mv;
	}

	@RequestMapping("/template/model")
	public ModelAndView model(Integer id){
		ModelAndView mv = new ModelAndView();
		return mv;
	}

	@RequestMapping("/article/create")
	public ModelAndView create(Text text){
		if(text.getMessage()!=null && text.getSubject()!=null){
			directoryService.create(text.getId(), text);
		}
		ModelAndView mv = new ModelAndView();
		return mv;
	}

}
