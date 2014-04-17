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
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

/**
 * Ŀ¼
 */
@Entity
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name="directoryType",discriminatorType=DiscriminatorType.STRING)
public class Directory implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id; // �Ա��
	private String name; // ���ơ�����
	private int removed; // �Ƿ�ɾ����
	private Directory parent;
	private List<Directory> childs = new ArrayList<Directory>();
	private List<Text> texts = new ArrayList<Text>();
//	private String topicid; ʹ��4λ���Ĵ�����Ϊ��Ŀid,��1234rt,����ĿΪ8λ����123429DN,12343E6D

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

	@OneToMany
	@JoinTable(name="Directory_Text",
		joinColumns = { @JoinColumn(name = "d_id") }, 
		inverseJoinColumns = { @JoinColumn(name = "t_id") })
	public List<Text> getTexts() {
		return texts;
	}
	public void setTexts(List<Text> texts) {
		this.texts = texts;
	}

}
