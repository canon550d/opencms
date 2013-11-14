package org.hb0712.yang.opencms.dao;

import org.junit.Test;
import org.springframework.test.AbstractDependencyInjectionSpringContextTests;

public class DirectoryDaoTest extends AbstractDependencyInjectionSpringContextTests{
	
	private DirectoryDao directoryDao;
	
	//ָ��Spring�����ļ��������fixture
	protected String[] getConfigLocations() {
		return new String[] { "classpath:/applicationContext.xml"};
	}

	@Test
	public void test() {
		directoryDao.read(2);
	}

}
