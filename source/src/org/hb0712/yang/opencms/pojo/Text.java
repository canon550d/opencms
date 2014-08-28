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

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

/**
 * 文件
 */
@Entity
public class Text implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id ; // 自编号
	
	private String subject;
	private String message;
	private int removed;	//默认为0，
	private Date create;
	private int weight = 60;
	private User user;
//	private Directory directory;
//	private String modelid; 规则如下，栏目id + 英文名
	private String docid;
	private Content content = new Content();

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
	@OneToOne
	@JoinColumn(name="content_id")
	@Cascade(value=CascadeType.ALL)
	public Content getContent() {
		return content;
	}
	public void setContent(Content content) {
		this.content = content;
	}

	//单向关联就可以了
//	@ManyToOne
//	@JoinTable(name="Directory_Text",
//		joinColumns = { @JoinColumn(name = "t_id") }, 
//		inverseJoinColumns = { @JoinColumn(name = "d_id") })
//	public Directory getDirectory() {
//		return directory;
//	}
//	public void setDirectory(Directory directory) {
//		this.directory = directory;
//	}

}
