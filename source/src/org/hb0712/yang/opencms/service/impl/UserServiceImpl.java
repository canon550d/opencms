package org.hb0712.yang.opencms.service.impl;

import org.hb0712.yang.opencms.dao.UserDao;
import org.hb0712.yang.opencms.pojo.User;
import org.hb0712.yang.opencms.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;

	/**
	 * ��¼�Ϳ����ݿ�����û��
	 * @see org.hb0712.yang.opencms.service.UserService#login(org.hb0712.yang.opencms.pojo.User)
	 */
	public User login(User u) {
//		String passwordMD5 = u.getPassword();
		User x = userDao.read(u);
//		boolean l = false;
//		if(x != null){
//			l = true;
//		}
		return x;
	}

}
