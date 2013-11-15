package org.hb0712.yang.opencms.pojo;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

/**
 * 文件夹，可以放置文件
 */
@Entity
@DiscriminatorValue("Folder")
public class Folder extends Directory{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
//	private Date create;
//	private List<Text> files;
	private Directory father;
//	private Set<Folder> childs;

//	public Date getCreate() {
//		return create;
//	}
//	public void setCreate(Date create) {
//		this.create = create;
//	}
//	public List<Text> getFiles() {
//		return files;
//	}
//	public void setFiles(List<Text> files) {
//		this.files = files;
//	}
	@ManyToOne
	@JoinColumn(name = "father_id")
	public Directory getFather() {
		return father;
	}
	public void setFather(Directory father) {
		this.father = father;
	}


}
