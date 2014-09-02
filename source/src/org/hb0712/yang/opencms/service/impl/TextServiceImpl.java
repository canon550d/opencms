package org.hb0712.yang.opencms.service.impl;

import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.velocity.Template;
import org.apache.velocity.VelocityContext;
import org.apache.velocity.app.VelocityEngine;
import org.hb0712.yang.opencms.core.CMS;
import org.hb0712.yang.opencms.core.IdFactory;
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

	@Autowired
	private VelocityEngine velocityEngine;

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
//		text.setId(null);
//		Directory d = this.directoryDao.read(id);
//		d.getTexts().add(text);
//		directoryDao.update(d);
		
		text.setCreate(new Date());
		text.setRemoved(0);//0是存在工单
		//需要对doc id做处理
		text.setDocid(IdFactory.getDocid(text.getDocid()));
		User u = new User();
		u.setId(1);
		text.setUser(u);
		// TODO 拿Seccion并获取User对象set到text里
//		CMS.save(path.getSavePath() + this.getUrl(text), text.getMessage());
		cmssave(path.getSavePath() + this.getUrl(text), text.getMessage(), text.getTemplate().getFileName());
		return this.textDao.create(text.getId(), text);
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

	/*
	 * 读取模板，并把内容生成html
	 */
	private boolean cmssave(String savePath, String message, String fileName){

		Template velocity_template = velocityEngine.getTemplate(fileName, "utf-8");
		
		
		VelocityContext context = new VelocityContext();
		context.put("main", message);
		
		BufferedWriter writer = null;
		try {
			FileOutputStream fos = new FileOutputStream(CMS.CreateFile(savePath));
			writer = new BufferedWriter(new OutputStreamWriter(fos, "UTF-8"));

			velocity_template.merge(context, writer);

			writer.close();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
}
