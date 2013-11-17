package org.hb0712.yang.opencms.service;

import java.util.List;

import org.hb0712.yang.opencms.pojo.Directory;


public interface DirectoryService {
	public List<Directory> read();
	public Directory read(int id);
	public List<Directory> read(Directory classname);

	/*
	 * ����һ��Ŀ¼��·����������List����
	 */
	public List<Directory> getAncestors(Directory p);

	public List<Directory> getChilds();
	public List<Directory> getChilds(int id);
}
