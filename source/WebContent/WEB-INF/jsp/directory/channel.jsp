<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>列表</title>
<style type="text/css">
.list_of_channels a{background:#FFF; display:block; float:left; width:120px; padding:5px; color:#333; text-decoration:none; overflow:hidden;}
.list_of_channels a:hover{text-decoration:underline; color:#CC0000; background:#EEE;}
</style>
</head>
<body>
	<div class="list_of_channels">
    <c:forEach items="${folders}" var="folder">
    <a class="channelButton" target="_top" href="changeChannel.do?id=<c:out value="${folder.id}"/>"><c:out value="${folder.name}"/></a>
    </c:forEach>
    </div>
</body>
</html>