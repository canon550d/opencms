<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Open CMS</title>
</head>
<body>
  <div>
    <a href="directory/channel.do">更换频道</a>
  </div>
  <table width="100%" >
    <tr>
      <td width="20%"><iframe src="directory/home.do?id=<%=request.getParameter("id") %>" width="100%" height="600px"></iframe></td>
      <td><iframe src="directory/list.do?id=<%=request.getParameter("id") %>" width="100%" height="600px" name="right"></iframe></td>
    </tr>
  </table>

</body>
</html>