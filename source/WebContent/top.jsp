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
.button1{
font-weight: bold;
height: 23px;
width: 67px;
background-position: 0 -74px;
padding-left: 18px;
padding-top: 5px;
color: #fff;
margin: 0 5px;
display: inline-block;
text-decoration: none;
background: green;
}
.white{background: white;color:black;width:40px;}
</style>
</head>
<body>

  <div style="float:left;">苦逼内容发布系统</div>
  <div style="float:left;"><input type="text" /> <button>快速编辑</button> <a href="#">传图</a></div>
  <div style="float:right;padding-top:4px;">欢迎你：
    <a href="#">${sessionScope.currUser.name}</a>
    <a class="button1" href="#">后台首页</a>
    <a class="button1" class="button1" href="#">用户管理</a>
    <a class="button1" target="main" href="admin_index.jsp">后台管理</a>
    <a class="button1" target="main" href="directory/channel.do">更换频道</a>
    <a class="button1 white" href="#">退出</a>
  </div>
  <div style="clear:both;"></div>
</body>
</html>