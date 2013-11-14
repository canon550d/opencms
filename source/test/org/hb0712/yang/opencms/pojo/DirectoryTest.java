package org.hb0712.yang.opencms.pojo;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.classic.Session;
import org.junit.Test;

public class DirectoryTest {

	@Test
	public void test() {
		AnnotationConfiguration cfg = new AnnotationConfiguration();
		SessionFactory sessionFactory = cfg.configure().buildSessionFactory();
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();


		Home home = (Home) session.get(Home.class, 1);
		Folder folder = (Folder) session.get(Folder.class, 2);


		transaction.commit();
		session.close();

		System.out.println(home.getName());
		System.out.println(folder.getName());
	}


}
