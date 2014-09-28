<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title></title>
</head>
<body>
	<div>后台功能</div>
	<div>
		<a href="template/mlist.do?topicid=<c:out value='${sessionScope.currChannel}'/>">文章模板</a>
		<a>查看模板刷新日志</a>
		<a>频道定制文章额外区</a>
		<a>发布提示关键字</a>
		<a>增加记者</a>
		<a>记者统计</a>
		<a href="">频道管理</a>
	</div>
</body>
</html>