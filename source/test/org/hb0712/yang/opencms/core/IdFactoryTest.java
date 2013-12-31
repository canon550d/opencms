package org.hb0712.yang.opencms.core;

import org.junit.Test;

public class IdFactoryTest {

	@Test
	public void test() {
		String id = IdFactory.getId();
		System.out.println(id);
	}

}
