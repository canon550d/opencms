<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>列表</title>
</head>
<body>
  <c:out value="${directory.name}"/>
  <span>当前栏目</span>
  <c:forEach items="${father}" var="ff" varStatus="status" > >>
    <a href=""><c:out value="${ff.name}"/></a> 
  </c:forEach>

  <table>
    <tr>
      <td>&nbsp;</td><td>序号</td><td>文章名称</td><td>编辑</td><td>来源</td><td>时间</td><td>权重</td>
    </tr>
    <%-- /把文件夹先显示出来/ --%>
    <c:forEach items="${folders}" var="folder">
    <tr>
      <td>&nbsp;</td><td colspan="6"><a href=""><c:out value="${folder.name}"/></a></td>
    </tr>
    </c:forEach>

  </table>
</body>
</html>