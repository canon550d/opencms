package org.hb0712.yang.opencms.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.hb0712.yang.opencms.core.IdFactory;
import org.hb0712.yang.opencms.dao.DirectoryDao;
import org.hb0712.yang.opencms.dao.TextDao;
import org.hb0712.yang.opencms.pojo.Directory;
import org.hb0712.yang.opencms.pojo.Folder;
import org.hb0712.yang.opencms.pojo.Home;
import org.hb0712.yang.opencms.pojo.Text;
import org.hb0712.yang.opencms.service.DirectoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DirectoryServiceImpl implements DirectoryService {
	@Autowired
	private DirectoryDao directoryDao;
	@Autowired
	private TextDao textDao;
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

	private Home getHome(Directory p){
		Home h = null;
		if(p instanceof Folder){
			Folder p2 = (Folder)p;
			h = getHome(p2.getParent());
		}else{
			h = (Home) p;
		}
		return h;
	}

	public boolean create(Folder folder) {
		boolean result = true;
		Directory p = this.directoryDao.read(folder.getId());
		folder.setParent(p);
		
		Home h = this.getHome(p);
		// 由系统生成一个topic id
		folder.setTopicid(IdFactory.getTopicid(h.getTopicid()));
		folder.setId(null);
		this.directoryDao.create(folder);
		return result;
	}

	public boolean create(Home h) {
		boolean result = true;
		if(h.getTopicid() == null){
			h.setTopicid(IdFactory.getTopicid());
		}
		return result;
	}

	/*
	 * 新建一个text对象，变成了更新一个directory对象，这不是我的本意。
	 * 弃用吧
	 */
	public boolean create(int id,Text text){
//		text.setId(null);
//		textDao.create(text);
//		Directory d = this.directoryDao.read(id);
//		d.getTexts().add(text);
//		directoryDao.update(d);
		return false;
	}
}
