package org.hb0712.yang.opencms.dao.impl;

import java.util.List;

import org.hb0712.yang.opencms.dao.UserDao;
import org.hb0712.yang.opencms.pojo.User;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

@Repository
public class UserDaoImpl extends HibernateDaoSupport implements UserDao {
	@Autowired
	public void setSuperSessionFactory(SessionFactory sessionFactory){
		super.setSessionFactory(sessionFactory);
	}

	public User create(User u) {
		// TODO Auto-generated method stub
		return null;
	}

	public User read(int pk) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean update(User u) {
		// TODO Auto-generated method stub
		return false;
	}

	public boolean delete(int pk) {
		// TODO Auto-generated method stub
		return false;
	}

	public User read(User u) {
		String hql = "from User u where u.username=? and u.password=?";
		String[] keys = {u.getUsername(), u.getPassword()};
		List<?> list = (List<?>) this.getHibernateTemplate().find(hql, keys);
		User x = null;
		if(list !=null && list.size() >0){
			x = (User) list.get(0);
		}
		return x;
	}

}
