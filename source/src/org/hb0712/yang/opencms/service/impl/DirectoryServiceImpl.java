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

	public Directory read(int id){
		return directoryDao.read(id);
	}

	public List<Directory> read(){
		return directoryDao.read();
	}
	/*
	 * 频道：就是1级目录，所以取名为Home
	 */
	public Home readHome(int id){
		Directory d = directoryDao.read(id);
		Home home = null;
		if(d instanceof Home){
			home = (Home) d;
		}
		return home;
	}

	public List<Directory> getFather(Directory p){
		return this.test(p);
	}

	public List<Directory> getChilds(Directory p){
		return p.getChilds();
	}

	private List<Directory> test(Directory p){
		List<Directory> tt;

		if(p instanceof Folder){
			Folder p2 = (Folder)p;
			tt = test(p2.getFather());
		}else{
			tt = new ArrayList<Directory>();
		}
		tt.add(p);
		return tt;
	}

}
