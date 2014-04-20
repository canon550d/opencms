package org.hb0712.yang.opencms.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hb0712.yang.opencms.dao.TextDao;
import org.hb0712.yang.opencms.pojo.Directory;
import org.hb0712.yang.opencms.pojo.Text;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class TextDaoImpl extends HibernateDaoSupport implements TextDao {
	@Autowired
	public void setSuperSessionFactory(SessionFactory sessionFactory){
		super.setSessionFactory(sessionFactory);
	}

	@SuppressWarnings("unchecked")
	public List<Text> getByDirectoryId(int id) {
		// TODO 上面的那unchecked我挺烦
		String hql = "from Text t where t.directory.id = ?";
		return this.getHibernateTemplate().find(hql, id);
	}

	public Text getById(int id) {
		return (Text) this.getHibernateTemplate().get(Text.class, id);
	}

	public boolean create(int did, final Text text) {
		if(text.getId() !=null){
			text.setId(null);
			final int oid = did;
			this.getHibernateTemplate().execute(new HibernateCallback() {
				
				public Object doInHibernate(Session session) throws HibernateException,
						SQLException {
					Directory dir = (Directory)session.get(Directory.class, oid);
					dir.getTexts().add(text);
					Transaction t = session.beginTransaction();
					session.save(text);
					t.commit();
					session.close();
					return null;
				}
			});
		}
//		this.getHibernateTemplate().save(text);
		return true;
	}
	
	public boolean update(Text text){
		this.getHibernateTemplate().update(text);
		return true;
	}

}
