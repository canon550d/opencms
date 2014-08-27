package org.hb0712.yang.opencms.controller;

import java.util.List;

import org.hb0712.yang.opencms.pojo.Directory;
import org.hb0712.yang.opencms.pojo.Folder;
import org.hb0712.yang.opencms.pojo.Home;
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

	@RequestMapping("/index")
	public String read(){
		return "read";
	}

	/*
	 * ��ʾ����Ƶ��
	 */
	@RequestMapping("/directory/channel")
	public ModelAndView channel(){
		ModelAndView mv = new ModelAndView();
		List<Directory> folders = directoryService.read(new Home());
		mv.addObject("folders", folders);
		return mv;
	}

	/*
	 * �鿴Ƶ�����ļ��к��ļ�
	 */
	@RequestMapping("/directory/list")
	public ModelAndView list(Integer id){
		
		ModelAndView mv = new ModelAndView();
		
		List<Directory> ancestors = null;
		List<Text> files = null;	//��ʾ�б�
		List<Directory> folders = null;	//��ǰĿ¼�����ļ���
		if(id == null){
			folders = directoryService.read(new Home());
		}else{
			Directory directory = directoryService.read(id);
			mv.addObject("directory", directory);

			folders = directory.getChilds();
			ancestors = directoryService.getAncestors(directory);
			files = directory.getTexts();
		}

		mv.addObject("ancestors", ancestors);
		mv.addObject("folders", folders);
		mv.addObject("files", files);
		return mv;
	}

	@RequestMapping("/template/list")
	public ModelAndView special(Integer id){
		ModelAndView mv = new ModelAndView();
		if(id != null){
			Directory directory = directoryService.read(id);
			mv.addObject("directory", directory);

			List<Directory> ancestors = directoryService.getAncestors(directory);
			mv.addObject("ancestors", ancestors);
		}
		return mv;
	}

	/*
	 * �鿴Ŀ¼
	 */
	@RequestMapping("/directory/home")
	public ModelAndView home(Integer id){
		ModelAndView mv = new ModelAndView();
		Directory directory = null;	//��ǰĿ¼�����ļ���
		if(id != null){
			directory = directoryService.read(id);
		}
		mv.addObject("directory", directory);
		return mv;
	}

	@RequestMapping("/directory/create")
	public ModelAndView create(Folder folder){
		if(folder.getName() != null ){
			Folder newfolder = new Folder();
			Directory parent = this.directoryService.read(folder.getId());
			newfolder.setParent(parent);
			newfolder.setName(folder.getName());

			this.directoryService.create(newfolder);
			
//			return new ModelAndView(new RedirectView("/directory/home.do"));
		}

		ModelAndView mv = new ModelAndView();
		mv.addObject("folder", folder);

		return mv;
	}

}
