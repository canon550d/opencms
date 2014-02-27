package org.hb0712.yang.opencms.service;

import java.util.List;

import org.hb0712.yang.opencms.pojo.Directory;
import org.hb0712.yang.opencms.pojo.Folder;


public interface DirectoryService {
	public List<Directory> read();
	public Directory read(int id);
	public List<Directory> read(Directory classname);

	/*
	 * 计算一个目录的路径，并且以List返回
	 */
	public List<Directory> getAncestors(Directory p);

	public boolean create(Folder folder);
}
