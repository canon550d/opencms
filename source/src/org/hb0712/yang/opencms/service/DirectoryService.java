package org.hb0712.yang.opencms.service;

import java.util.List;

import org.hb0712.yang.opencms.pojo.Directory;


public interface DirectoryService {
	public List<Directory> read();
	public Directory read(int id);

	/*
	 * 计算一个目录的路径，并且以List返回
	 */
	public List<Directory> getFather(Directory p);
	public List<Directory> getChilds(Directory p);
}
