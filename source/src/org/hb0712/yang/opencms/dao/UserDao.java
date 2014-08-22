package org.hb0712.yang.opencms.dao;

import org.hb0712.yang.opencms.pojo.User;

public interface UserDao {
	public User create(User u);
	public User read(int pk);
	public User read(User u);
	public boolean update(User u);
	public boolean delete(int pk);
}
