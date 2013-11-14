package org.hb0712.yang.opencms.dao;

import org.hb0712.yang.opencms.pojo.Directory;

public interface DirectoryDao {
	/**
	 * Create
	 */
	public Directory create();

	/**
	 * Read
	 * 查看所有的数据
	 */
	public boolean read();

	/**
	 * Read By ID
	 * 
	 */
	public Directory read(int id);

	/**
	 * Update
	 */
	public boolean update();

	/**
	 * Delete
	 */
	public boolean delete();
}
