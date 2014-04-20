package org.hb0712.yang.opencms.dao;

import java.util.List;

import org.hb0712.yang.opencms.pojo.Text;

public interface TextDao {
	public boolean create(int did, Text text);
	public List<Text> getByDirectoryId(int id);
	public Text getById(int id);
	public boolean update(Text text);
}
