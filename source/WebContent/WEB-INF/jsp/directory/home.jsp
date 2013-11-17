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
  <div><a href="#"><c:out value="${directory.name}"/></a></div>
  <div style="margin-left:15px;">
  <c:forEach items="${directory.childs}" var="folder">
    <div><a href="list.do?id=<c:out value="${folder.id}"/>" target="right"><c:out value="${folder.name}"/></a></div>
  </c:forEach>

  </div>
</body>
</html>