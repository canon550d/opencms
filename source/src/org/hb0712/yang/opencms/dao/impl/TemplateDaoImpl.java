package org.hb0712.yang.opencms.dao.impl;

import java.util.List;

import org.hb0712.yang.opencms.dao.TemplateDao;
import org.hb0712.yang.opencms.pojo.Template;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class TemplateDaoImpl extends HibernateDaoSupport implements TemplateDao {
	@Autowired
	public void setSuperSessionFactory(SessionFactory sessionFactory){
		super.setSessionFactory(sessionFactory);
	}

	@SuppressWarnings("unchecked")
	public List<Template> list() {
		String hql = "from Template";
		return this.getHibernateTemplate().find(hql);
	}

	public Template read(String topicid, String modelid){
		String hql = "from Template t where t.modelid = ?";
		List<?> list = getHibernateTemplate().find(hql, modelid);
		Template temp = (Template)list.get(0);
		return temp;
	}
}
