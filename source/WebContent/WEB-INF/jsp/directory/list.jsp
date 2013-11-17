<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>列表</title>
</head>
<body>

  <span>当前栏目: <b>主频道</b></span>
  <c:forEach items="${ancestors}" var="an" > >>
    <a href="list.do?id=<c:out value="${an.id}"/>"><c:out value="${an.name}"/></a> 
  </c:forEach>
  

  <table border="1" >
    <tr>
      <td>&nbsp;</td><td>序号</td><td>文章名称</td><td>编辑</td><td>来源</td><td>时间</td><td>权重</td>
    </tr>
    <%-- /把文件夹先显示出来/ --%>
    <c:forEach items="${folders}" var="folder">
    <tr>
      <td>&nbsp;</td><td colspan="6"><img src="../1.png"/><a href="list.do?id=<c:out value="${folder.id}"/>"><c:out value="${folder.name}"/></a></td>
    </tr>
    </c:forEach>
    <%-- /显示文件/ --%>
    <c:forEach items="${files}" var="file">
      <td>&nbsp;</td><td>1</td>
      <td><c:out value="${file.subject}"/></td>
      <td></td><td>原创</td>
      <td><fmt:formatDate value="${file.create}"  type="both" dateStyle="medium"/></td>
      <td><c:out value="${file.weight}"/></td>
    </c:forEach>
  </table>
</body>
</html>