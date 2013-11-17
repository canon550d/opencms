package org.hb0712.yang.opencms.dao;

import org.hb0712.yang.opencms.pojo.Directory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:/applicationContext.xml"})
public class DirectoryDaoTest2 {
	
	@Autowired
	private DirectoryDao directoryDao;

	@Test
	public void test() {
		Directory directory = directoryDao.read(1);
		System.out.println(directory.getName());
		System.out.println(directory.getChilds().size());
	}

}
