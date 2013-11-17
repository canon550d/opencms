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
	 * ��ȡidΪ������Ŀ¼����Ŀ¼
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
	 * Ƶ��������1��Ŀ¼������ȡ��ΪHome
	 */
	public Home readHome(){
		return null;
	}

	public List<Directory> getAncestors (Directory p){
		return this.getParents(p);
	}

	/*
	 * �ݹ麯�����Ը��ӵ㵽�ӽڵ��˳������
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


}
