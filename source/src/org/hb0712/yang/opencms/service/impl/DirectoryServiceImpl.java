package org.hb0712.yang.opencms.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.hb0712.yang.opencms.dao.DirectoryDao;
import org.hb0712.yang.opencms.pojo.Directory;
import org.hb0712.yang.opencms.pojo.Folder;
import org.hb0712.yang.opencms.pojo.Home;
import org.hb0712.yang.opencms.service.DirectoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DirectoryServiceImpl implements DirectoryService {
	@Autowired
	private DirectoryDao directoryDao;

	/*
	 * 获取id为主键的目录和子目录
	 * 
	 */
	public Directory read(int id){
		return directoryDao.read(id);
	}

	public List<Directory> read(Directory classname){
		return directoryDao.read(classname);
	}

	public List<Directory> read(){
		return directoryDao.read();
	}
	/*
	 * 频道：就是1级目录，所以取名为Home
	 */
	public Home readHome(){
		return null;
	}

	public List<Directory> getAncestors (Directory p){
		return this.getParents(p);
	}

	/*
	 * 递归函数，以父接点到子节点的顺序排列
	 */
	private List<Directory> getParents(Directory p){
		List<Directory> tt;

		if(p instanceof Folder){
			Folder p2 = (Folder)p;
			tt = getParents(p2.getParent());
		}else{
			tt = new ArrayList<Directory>();
		}
		tt.add(p);
		return tt;
	}

	public List<Directory> getChilds() {
		// TODO Auto-generated method stub
		return directoryDao.getChilds();
	}

	public List<Directory> getChilds(int id) {
		// TODO Auto-generated method stub
		return directoryDao.getChilds(id);
	}

}
