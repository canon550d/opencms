package org.hb0712.yang.opencms.pojo;

import java.io.Serializable;

import javax.persistence.Entity;

/**
 * �ļ�
 */
@Entity
public class Text implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id; // �Ա��
	private String name; // ���ơ�����
	private int removed;

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

}
