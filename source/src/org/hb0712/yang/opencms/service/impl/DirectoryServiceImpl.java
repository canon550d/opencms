package org.hb0712.yang.opencms.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.hb0712.yang.opencms.dao.DirectoryDao;
import org.hb0712.yang.opencms.pojo.Directory;
import org.hb0712.yang.opencms.pojo.Folder;
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


	public List<Directory> getFather(Directory p){
		return this.test(p);
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
