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

		this.basic(session);
		this.folder(session);
		this.home(session);

		transaction.commit();
		session.close();

	}

	public void basic(Session session){
		Directory directory = (Directory) session.get(Directory.class, 1);
		System.out.println(directory.getName());
		System.out.println(directory.getChilds().size());
	}
	
	public void folder(Session session){
		Folder folder = (Folder) session.get(Folder.class, 2);
		System.out.println(folder.getName());
		System.out.println(folder.getChilds().size());
	}
	
	public void home(Session session){
		Home home = (Home) session.get(Home.class, 1);
		System.out.println(home.getParent());
		System.out.println(home.getName());
		for(Directory d:home.getChilds()){
			System.out.println(d.getName());
		}
		for(Text t:home.getTexts()){
			System.out.println(t.getSubject());
		}
		System.out.println(home.getChilds().size());
	}

}
