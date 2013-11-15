package org.hb0712.yang.opencms.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hb0712.yang.opencms.dao.DirectoryDao;
import org.hb0712.yang.opencms.pojo.Directory;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class DirectoryDaoImpl extends HibernateDaoSupport implements DirectoryDao{
	@Autowired
	public void setSuperSessionFactory(SessionFactory sessionFactory){
		super.setSessionFactory(sessionFactory);
	}

	public Directory create() {
		
		Directory directory = new Directory();
		directory.setName("���");
		return directory;
	}


	public List<Directory> read() {
		return this.getHibernateTemplate().executeFind(new HibernateCallback() {
			
			@Override
			public Object doInHibernate(Session arg0) throws HibernateException,
					SQLException {
				String sql = "from Home";
				Query query = arg0.createQuery(sql);
				List<?> result = query.list();
				return result;
			}
		});
	}

	/*
	 * ��ȡĿ¼
	 */
	public List<Directory> read(Directory d) {
		
		this.getHibernateTemplate();
		return null;
	}

	/*
	 * Ҳ�����ļ��У�Ҳ���Ǹ�Ŀ¼
	 */
	public Directory read(int id) {
		return (Directory) this.getHibernateTemplate().get(Directory.class, id);
	}

	public List<Directory> readHome(int id){
		this.getHibernateTemplate().executeFind(new HibernateCallback() {
			
			@Override
			public Object doInHibernate(Session arg0) throws HibernateException,
					SQLException {
				String sql = "from Directory D where H.id = ?";
				Query query = arg0.createQuery(sql);
				query.list();
				return null;
			}
		});
		return null;
	}

	public boolean update() {
		// TODO �Զ����ɵķ������
		return false;
	}


	public boolean delete() {
		// TODO �Զ����ɵķ������
		return false;
	}

}
