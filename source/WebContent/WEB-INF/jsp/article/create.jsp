<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加</title>
</head>
<body>
<form action="create.do" method="post">
    <input type="hidden" name="id" value="${text.id}"/>
    <input type="hidden" name="docid" value="${text.docid}"/>
	标题<input type="text" name="subject"/><br/>
	内容<textarea name="message"></textarea>
	<button type="submit">添加</button>
</form>
</body>
</html>