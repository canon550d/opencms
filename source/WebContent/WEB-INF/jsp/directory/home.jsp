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
    <div><a href="#">专题</a></div>
    <div><a href="#">滚动</a></div>
    <a>主频道</a>
    <div style="margin-left:15px;">
    <c:forEach items="${directory.childs}" var="folder">
    <div><a href="list.do?id=<c:out value="${folder.id}"/>" target="main"><c:out value="${folder.name}"/></a></div>
    </c:forEach>
    </div>
  </div>
  <div><a href="#">图片库</a></div>
  <div><a href="#">视频库</a></div>
  <div><a href="#">投票系统</a></div>
  <div><a href="#">直播系统</a></div>
  <div><a href="#">专题模版库</a></div>
  <div><a href="#">微博发布系统</a></div>
  <div><a href="#">通用互动系统</a></div>

</body>
</html>