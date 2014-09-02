package org.hb0712.yang.opencms.service;

import java.util.List;

import org.hb0712.yang.opencms.pojo.Template;

public interface TemplateService {
	public List<Template> mlist();
	public Template read(String topicid, String modelid);
	public Template read(int id);
	public boolean update(Template template);
}
