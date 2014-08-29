package org.hb0712.yang.opencms.controller;

import org.hb0712.yang.opencms.pojo.Directory;
import org.hb0712.yang.opencms.pojo.Text;
import org.hb0712.yang.opencms.service.DirectoryService;
import org.hb0712.yang.opencms.service.TextService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class TextController {
	@Autowired
	private DirectoryService directoryService;
	@Autowired
	private TextService textService;

	@RequestMapping("/article/edit")
	public ModelAndView view(Text text, int directory_id){
		int id = text.getId();
		ModelAndView mv = new ModelAndView();
		if(id > 0){
			Text object = textService.get(text.getId());
			
			if(text.getMessage()!=null && text.getSubject()!=null){
				object.setSubject(text.getSubject());
				object.setMessage(text.getMessage());
				object.getContent().setData(text.getContent().getData());
				this.textService.update(object);
//				return new ModelAndView(new RedirectView("/directory/home.do"));
			}
			mv.addObject(object);
			
			Directory directory = directoryService.read(directory_id);
			mv.addObject("directory", directory);
			mv.addObject("ancestors", directoryService.getAncestors(directory));
		}
		
		return mv;
	}

	@RequestMapping("/article/create")
	public ModelAndView create(Text text){
		if(text.getMessage()!=null && text.getSubject()!=null){
			int did = text.getId();
			textService.create(text);
			return new ModelAndView(new RedirectView("../directory/list.do?id="+did));
		}
		ModelAndView mv = new ModelAndView();
		mv.addObject(text);
		return mv;
	}

	@RequestMapping("/article/delete")
	public ModelAndView delete(Text text){
		
		return new ModelAndView(new RedirectView("/directory/home.do"));
	}
}
