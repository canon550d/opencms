package org.hb0712.yang.opencms.dao;

import java.util.List;

import org.hb0712.yang.opencms.pojo.Template;

public interface TemplateDao {
	public List<Template> list(String topicid);
	public Template read(String topicid, String modelid);
	public Template read(int id);
	public boolean update(Template template);
}
