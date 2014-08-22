<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>头部</title>
<style type="text/css">
body {font-size: 12px;line-height: 150%; }
body {background-color:#99CC99;background-repeat:repeat-x;margin:0px;height:37px;}
</style>
</head>
<body>

  <div style="float:left;">苦逼内容发布系统</div>
  <div style="float:left;"><input type="text" /> <button>快速编辑</button> <a href="#">传图</a></div>
  <div style="float:right;">欢迎你：
    <a href="#">${sessionScope.currUser.name}</a>
    <a href="#">后台首页</a>
    <a href="#">用户管理</a>
    <a href="#">后台管理</a>
    <a href="#">更换频道</a>
    <a href="#">退出</a>
  </div>
  <div style="clear:both;"></div>
</body>
</html>