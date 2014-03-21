package org.hb0712.yang.opencms.core;

import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.Properties;

import org.springframework.core.io.ClassPathResource;


public class Path {

	
	private Properties resource;
	
	private Properties opencms2;
	
	private Map opencms;

	public Map getOpencms() {
		return opencms;
	}

	public void setOpencms(Map opencms) {
		this.opencms = opencms;
	}

	public Properties getOpencms2() {
		return opencms2;
	}

	public void setOpencms2(Properties opencms2) {
		this.opencms2 = opencms2;
	}

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
		System.out.println(opencms.get("pechorin"));
		System.out.println(opencms2);
		return resource.getProperty("savePath");
	}

}
