package org.hb0712.yang.opencms.pojo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.DiscriminatorColumn;
import javax.persistence.DiscriminatorType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.OneToMany;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

/**
 * 目录
 */
@Entity
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name="directoryType",discriminatorType=DiscriminatorType.STRING)
public class Directory implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id; // 自编号
	private String name; // 名称、标题
	private int removed;
	private List<Directory> childs = new ArrayList<Directory>();
//	private List<Text> texts = new ArrayList<Text>();

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getRemoved() {
		return removed;
	}
	public void setRemoved(int removed) {
		this.removed = removed;
	}

	@OneToMany
	@Cascade(value = { CascadeType.DELETE, CascadeType.DELETE_ORPHAN })
	public List<Directory> getChilds() {
		return childs;
	}

	public void setChilds(List<Directory> childs) {
		this.childs = childs;
	}

}
