package org.hb0712.yang.opencms.service;

import org.hb0712.yang.opencms.pojo.Text;

public interface TextService {
	public Text get(int id);
	public String getUrl(Text text);
}
