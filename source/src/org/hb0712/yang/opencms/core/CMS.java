package org.hb0712.yang.opencms.core;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

/*
 * ���ķ����࣬����Ϣд���ļ�
 */
public class CMS {

	public static void save(String path, String text){
		FileOutputStream os = null;
		try {
			os = new FileOutputStream(CreateFile(path));
		} catch (FileNotFoundException e) {
			// TODO �Զ����ɵ� catch ��
			e.printStackTrace();
		}
		if(os == null){
			return;
		}
		try {
			
			os.write(text.getBytes());
		} catch (IOException e) {
			// TODO �Զ����ɵ� catch ��
			e.printStackTrace();
		}
	}

	private static File CreateFile(String path) {
		// TODO Auto-generated method stub
		if (path == null){
			return null;
		}
		try {
			File afile = new File(path);
			File parent = afile.getAbsoluteFile().getParentFile();
			if (!parent.exists()){
				parent.mkdirs();
			}
			if (parent.canWrite()){
				return afile;
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return null;
	}

	public static void main(String[] ss){
		CMS.save("Z:/openfile/13/1116/02/1KJQRT4R00753RTB.html", "���");
	}
}
