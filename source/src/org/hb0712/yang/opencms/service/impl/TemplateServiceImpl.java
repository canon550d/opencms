package org.hb0712.yang.opencms.service.impl;

import java.util.List;

import org.hb0712.yang.opencms.core.CMS;
import org.hb0712.yang.opencms.core.Path;
import org.hb0712.yang.opencms.dao.TemplateDao;
import org.hb0712.yang.opencms.pojo.Template;
import org.hb0712.yang.opencms.service.TemplateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TemplateServiceImpl implements TemplateService {
	@Autowired
	private TemplateDao templateDao;
	
	@Autowired
	private Path path;

	public List<Template> mlist() {
		return templateDao.list();
	}

	public Template read(String topicid, String modelid) {
		return templateDao.read(topicid, modelid);
	}
	public Template read(int id){
		return templateDao.read(id);
	}

	public boolean update(Template template) {
		templateDao.update(template);
		CMS.save(path.getVmPath() + "\\" + template.getModelid()+".vm" , template.getContent());
		return false;
	}

}
