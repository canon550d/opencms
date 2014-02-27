package org.hb0712.yang.opencms.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.hb0712.yang.opencms.dao.DirectoryDao;
import org.hb0712.yang.opencms.pojo.Directory;
import org.hibernate.HibernateException;
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

	public Directory create(Directory directory) {
		
//		Directory directory = new Directory();
//		directory.setName("你好");
		this.getHibernateTemplate().save(directory);
		return directory;
	}

	/*
	 * 
	 * 
	 */
	public List<Directory> read() {
		return null;
	}

	/*
	 * 获取目录
	 */
	@SuppressWarnings("unchecked")
	public List<Directory> read(Directory d) {
		String hql = "from " + d.getClass().getSimpleName();
		return this.getHibernateTemplate().find(hql);

	}

	/*
	 * 也许是文件夹，也许是根目录
	 */
	public Directory read(final int id) {
//		return (Directory) this.getHibernateTemplate().get(Directory.class, id);
		return (Directory) this.getHibernateTemplate().execute(new HibernateCallback() {
			@Override
			public Object doInHibernate(Session session) throws HibernateException,
					SQLException {
				// TODO Auto-generated method stub
				Directory directory = (Directory) session.get(Directory.class, id);
				directory.getChilds().iterator(); // TODO no session or session was closed 问题解决了，但不一定是最佳方案
				directory.getTexts().iterator();
				return directory;
			}
		});
	}


	public boolean update() {
		// TODO 自动生成的方法存根
		return false;
	}


	public boolean delete() {
		// TODO 自动生成的方法存根
		return false;
	}

}
