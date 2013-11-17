package org.hb0712.yang.opencms.pojo;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
/*
 * 频道，是没有Father对象的
 */
@Entity
@DiscriminatorValue("Root")
public class Home extends Directory{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
//	private Set<Directory> childs;
//	private Set<Text> files;

//	public Directory getFather() {
//		return null;
//	}

//	@OneToMany
//	@JoinColumn(name = "father_id")
//	@Cascade(value = { CascadeType.DELETE, CascadeType.DELETE_ORPHAN })
//	public List<Directory> getChilds() {
//		return getChilds();
//	}
//	public void setChilds(List<Directory> childs) {
//		this.childs = childs;
//	}
//	public Set<Text> getFiles() {
//		return files;
//	}
//	public void setFiles(Set<Text> files) {
//		this.files = files;
//	}
}
