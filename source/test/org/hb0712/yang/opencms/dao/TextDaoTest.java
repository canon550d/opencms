package org.hb0712.yang.opencms.dao;

import java.util.Date;

import org.hb0712.yang.opencms.pojo.Text;
import org.hb0712.yang.opencms.pojo.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:/applicationContext.xml"})
public class TextDaoTest {

	@Autowired
	private TextDao textDao;
	
	@Test
	public void test() {
		Text text = textDao.getById(1);
		System.out.println(text.getSubject());
		System.out.println(text.getMessage());
	}
	
	@Test
	public void test2(){
		Text text = new Text();
		text.setSubject("你好哦啊");
		text.setMessage("我还电话");
		text.setCreate(new Date());
		text.setDocid("1");
		User u = new User();
		u.setId(1);
		text.setUser(u);
		text.setWeight(60);
		text.setRemoved(1);
		textDao.create(text);
	}

}
