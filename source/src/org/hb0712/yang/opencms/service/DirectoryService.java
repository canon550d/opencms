package org.hb0712.yang.opencms.service;

import java.util.List;

import org.hb0712.yang.opencms.pojo.Directory;
import org.hb0712.yang.opencms.pojo.Folder;
import org.hb0712.yang.opencms.pojo.Text;


public interface DirectoryService {
	public List<Directory> read();
	public Directory read(int id);
	public List<Directory> read(Directory classname);

	/**
	 * 根据子节点查找父节点，一直到查到根节点为止
	 */
	public List<Directory> getAncestors(Directory p);

	public boolean create(Folder folder);
	
	public boolean create(int id,Text text);
}
