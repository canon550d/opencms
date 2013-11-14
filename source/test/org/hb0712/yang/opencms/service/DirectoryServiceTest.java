package org.hb0712.yang.opencms.service;

import java.util.List;

import org.hb0712.yang.opencms.pojo.Directory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:/applicationContext.xml"})
public class DirectoryServiceTest {
	@Autowired
	private DirectoryService directoryService;

	@Test
	public void test() {
		Directory direct = directoryService.read(2);
		List<Directory> list = directoryService.getFather(direct);
		for(Directory d:list){
			System.out.print(d.getName() + ">");
		}
		
	}

}
