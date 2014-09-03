package org.hb0712.yang.opencms.pojo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

@Entity
public class Template {
	private int id;
	private String modelid;	//Ó¢ÎÄÃû
	private String topicid;
	private String name_chinese;
	private String subject;
	private String content;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getModelid() {
		return modelid;
	}
	public void setModelid(String modelid) {
		this.modelid = modelid;
	}
	public String getName_chinese() {
		return name_chinese;
	}
	public void setName_chinese(String name_chinese) {
		this.name_chinese = name_chinese;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTopicid() {
		return topicid;
	}
	public void setTopicid(String topicid) {
		this.topicid = topicid;
	}

	@Transient
	public String getFileName(){
		return modelid + ".vm";
	}
}
