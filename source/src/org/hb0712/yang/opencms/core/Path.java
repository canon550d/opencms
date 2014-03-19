package org.hb0712.yang.opencms.core;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.springframework.core.io.ClassPathResource;


public class Path {

	private Properties resource;
	
	public Path() {
		resource = new Properties();
		InputStream input = null;
		try {
			input = new ClassPathResource("opencms.properties").getInputStream();
			resource.load(input);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			if(input!=null){
				try {
					input.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
	}
	
	public String getSavePath(){
		return resource.getProperty("savePath");
	}

}
