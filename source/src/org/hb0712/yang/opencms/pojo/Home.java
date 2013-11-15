package org.hb0712.yang.opencms.pojo;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

/*
 * ÆµµÀ
 */
@Entity
@DiscriminatorValue("Root")
public class Home extends Directory {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
//	private Set<Directory> childs;
//	private Set<Text> files;

//	@OneToMany
//	@Cascade(value = { CascadeType.DELETE, CascadeType.DELETE_ORPHAN })
//	public Set<Directory> getChilds() {
//		return childs;
//	}
//	public void setChilds(Set<Directory> childs) {
//		this.childs = childs;
//	}
//	public Set<Text> getFiles() {
//		return files;
//	}
//	public void setFiles(Set<Text> files) {
//		this.files = files;
//	}
}
