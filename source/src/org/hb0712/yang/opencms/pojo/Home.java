package org.hb0712.yang.opencms.pojo;

import java.util.Set;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;
import javax.persistence.OneToMany;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

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
	private Set<Folder> childs;
	private Set<Text> files;

	@OneToMany
	@Cascade(value = { CascadeType.DELETE, CascadeType.DELETE_ORPHAN })
	public Set<Folder> getChilds() {
		return childs;
	}
	public void setChilds(Set<Folder> childs) {
		this.childs = childs;
	}
	public Set<Text> getFiles() {
		return files;
	}
	public void setFiles(Set<Text> files) {
		this.files = files;
	}
}
