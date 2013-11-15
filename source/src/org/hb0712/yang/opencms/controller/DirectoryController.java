package org.hb0712.yang.opencms.controller;

import java.util.List;

import org.hb0712.yang.opencms.dao.TextDao;
import org.hb0712.yang.opencms.pojo.Directory;
import org.hb0712.yang.opencms.pojo.Text;
import org.hb0712.yang.opencms.service.DirectoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DirectoryController {
	@Autowired
	private DirectoryService directoryService;
	@Autowired
	private TextDao textDao;

	@RequestMapping("/index")
	public String read(){
		return "read";
	}
	
	@RequestMapping("/directory/list")
	public ModelAndView list(Integer id){
		
		ModelAndView mv = new ModelAndView();
		Directory d = null;
		List<Text> files = null;	//��ʾ�б�
		List<Directory> folders = null;	//��ǰĿ¼�����ļ���
		if(id == null){
			folders = directoryService.getChilds();
		}else{
			folders = directoryService.getChilds(id);
			files = textDao.getByDirectoryId(id);
		}

		mv.addObject("directory",d);
		mv.addObject("files",files);
		mv.addObject("folders", folders);
		return mv;
	}
}
