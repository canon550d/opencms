<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>列表</title>
<link rel="stylesheet" href="/static/css/splitpage.css" type="text/css"/>
</head>
<body marginwidth="0" marginheight="0" topmargin="2" leftmargin="0">

	<table width="100%" cellspacing="2" cellpadding="0" border=0>
		<tr bgcolor="#99CC99">
			<td height="30" align="center" bgcolor="#99CC99"><b></b></td>
			<td align="center" ><b><font color="#FFFFFF">栏目名称</font></b></td>
			<td align="center" ><b><font color="#FFFFFF">html路径</font></b></td>
		</tr>
		<c:forEach items="${mlist}" var="lp">
		<tr bgcolor="#E8E8D0"> 
			<td width="50" height="30" align="center" bgcolor="#E8E8D0"> 
				<input type="radio" name="modelbox" value="0075cp_wanfa" checked>
			</td>
			<td align="left">&nbsp;&nbsp;
				<a href="/0075/special/sp/cp_wanfa.html" target=_blank><img src="../../../static/images/icon.gif" width=16 height=16 border=0></a>&nbsp;
				<a class="editModelForControl" href="model.do?topicid=0075&modelid=<c:out value='${lp.modelid}'/>" alt="0075cp_wanfa"><font color=blue><c:out value="${lp.name_chinese}" /></a>
			</td>
			<td>/0075/c/0075cp_wanfa.vm --> <a href="javascript:copyTag('/special/sp/cp_wanfa.html')">复制标签</a></td>
		</tr>
		</c:forEach>
	</table>

</body>
</html>