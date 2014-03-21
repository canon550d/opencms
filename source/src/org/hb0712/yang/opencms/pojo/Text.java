package org.hb0712.yang.opencms.pojo;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

/**
 * 文件
 */
@Entity
public class Text implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id; // 自编号
	
	private String subject;
	private String message;
	private int removed;	//默认为0，
	private Date create;
	private int weight = 60;
	private User user;
//	private Directory directory;
//	private String modelid; 规则如下，栏目id + 英文名
	private String docid;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	@Column(name = "[subject]")
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public int getRemoved() {
		return removed;
	}
	public void setRemoved(int removed) {
		this.removed = removed;
	}
	@Column(name = "[create]")
	public Date getCreate() {
		return create;
	}
	public void setCreate(Date create) {
		this.create = create;
	}

	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}

	@OneToOne
	@JoinColumn(name="user_id")
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}

	public String getDocid() {
		return docid;
	}
	public void setDocid(String docid) {
		this.docid = docid;
	}

	
//	@ManyToOne
//	@JoinTable(name="PHP",
//		joinColumns = { @JoinColumn(name = "pid") }, 
//		inverseJoinColumns = { @JoinColumn(name = "hid") })
//	public Directory getDirectory() {
//		return directory;
//	}
//	public void setDirectory(Directory directory) {
//		this.directory = directory;
//	}

}
