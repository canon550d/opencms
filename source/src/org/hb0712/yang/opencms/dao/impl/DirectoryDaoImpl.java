package org.hb0712.yang.opencms.dao.impl;

import org.hb0712.yang.opencms.dao.DirectoryDao;
import org.hb0712.yang.opencms.pojo.Directory;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
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
		directory.setName("你好");
		return directory;
	}

	
	public boolean read() {
		// TODO 自动生成的方法存根
		return false;
	}

	/*
	 * 也许是文件夹，也许是根目录
	 */
	public Directory read(int id) {
		return (Directory) this.getHibernateTemplate().get(Directory.class, id);
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
