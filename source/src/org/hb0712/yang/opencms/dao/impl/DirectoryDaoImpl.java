package org.hb0712.yang.opencms.dao.impl;

import org.hb0712.yang.opencms.dao.DirectoryDao;
import org.hb0712.yang.opencms.pojo.Directory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class DirectoryDaoImpl extends HibernateDaoSupport implements DirectoryDao{


	public Directory create() {
		// TODO �Զ����ɵķ������
		Directory directory = new Directory();
		directory.setName("���");
		return directory;
	}

	
	public boolean read() {
		// TODO �Զ����ɵķ������
		return false;
	}

	/*
	 * Ҳ�����ļ��У�Ҳ���Ǹ�Ŀ¼
	 */
	public Directory read(int id) {
		return (Directory) this.getHibernateTemplate().get(Directory.class, id);
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
