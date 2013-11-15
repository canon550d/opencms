package org.hb0712.yang.opencms.service;

import java.util.List;

import org.hb0712.yang.opencms.pojo.Directory;


public interface DirectoryService {
	public List<Directory> read();
	public Directory read(int id);

	/*
	 * ����һ��Ŀ¼��·����������List����
	 */
	public List<Directory> getFather(Directory p);
	public List<Directory> getChilds(Directory p);
}
