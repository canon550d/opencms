package org.hb0712.yang.opencms.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.hb0712.yang.opencms.core.CMS;
import org.hb0712.yang.opencms.core.Path;
import org.hb0712.yang.opencms.dao.TextDao;
import org.hb0712.yang.opencms.pojo.Text;
import org.hb0712.yang.opencms.pojo.User;
import org.hb0712.yang.opencms.service.TextService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TextServiceImpl implements TextService{

	@Autowired
	private TextDao textDao;

	@Autowired
	private Path path;

	public Text get(int id) {
		// TODO Auto-generated method stub
		return textDao.getById(id);
	}

	public String getUrl(Text text) {
		SimpleDateFormat df = new SimpleDateFormat("yy/MMdd/HH");
		String result = df.format(text.getCreate());

		StringBuffer sb = new StringBuffer();
		sb.append(result).append("/").append(text.getDocid()).append(".html");
		
		return sb.toString();
	}

	public boolean create(Text text) {
		text.setCreate(new Date());
		text.setRemoved(0);//0是存在工单
		
		User u = new User();
		u.setId(1);
		text.setUser(u);
		// TODO 拿Seccion并获取User对象set到text里
		return this.textDao.create(text);
	}

	/*
	 * 将内容写入文件
	 */
	public boolean update(Text text) {
		String realpath = path.getSavePath();
		CMS.save(realpath + this.getUrl(text), text.getContent().getData());
		this.textDao.update(text);
		return false;
	}

}
