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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

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
	private int removed; // 是否删除了
	private Directory parent;
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

	
	@ManyToOne
	@JoinColumn(name = "parent_id")
	public Directory getParent() {
		return parent;
	}
	public void setParent(Directory parent) {
		this.parent = parent;
	}

	@OneToMany(mappedBy="parent")
//	@Cascade(value = { CascadeType.DELETE, CascadeType.DELETE_ORPHAN })
	public List<Directory> getChilds() {
		return childs;
	}
	public void setChilds(List<Directory> childs) {
		this.childs = childs;
	}

}
