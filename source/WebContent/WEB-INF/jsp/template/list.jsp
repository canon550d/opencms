<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>列表</title>
<link rel="stylesheet" href="/static/css/splitpage.css" type="text/css"/>
</head>
<body marginwidth="0" marginheight="0" topmargin="2" leftmargin="0">

  <div style="background-color:#fafad2;margin-bottom:5px;"><!-- 99CC99 -->
    <span>当前栏目: <b>主频道</b></span>
    <c:forEach items="${ancestors}" var="an" > >>
      <a href="list.do?id=<c:out value="${an.id}"/>"><c:out value="${an.name}"/></a> 
    </c:forEach>
  </div>

  <div style="background-color:#fafad2;margin-bottom:5px;">
    <div style="float:left;">
      <b>
        &nbsp;&nbsp;<font color=red>模板管理</font><b>&nbsp;&nbsp;</b>
        <input type=button class="createModelForControl" value="创建专题" onclick="document.location.href='create.do?topicid=007529DN'">
      </b>
    </div>
    <div style="float:right;">
      <b><a href="../directory/list.do?id=<c:out value="${directory.id}"/>">编辑管理</a>&nbsp;<a href="/user/list.jsp?topicid=00753E6D" id="viewParentUserRoleResoureForControl">用户权限</a></b>
    </div>
    <div style="clear:both;"></div>
  </div>

  <table width="100%" border="0" cellspacing="2" cellpadding="0">
    <tr bgcolor="#72A4C3"> 
      <td height="30" align="right" bgcolor="#a9a9a9">
        <table width="100%" border="0" cellspacing="5" cellpadding="0">
          <tr>
            <td style="text-align: left">&nbsp;&nbsp; <img src="/images/iconw.gif" width="16" height="16" border="0">
              <font color="#FFFFFF"> 页面</font> &nbsp;&nbsp;<img src="/images/mulu.gif" width="16" height="16" border="0">
              <font color="#FFFFFF"> 栏目</font> &nbsp;&nbsp;<img src="/images/icond.gif" width="16" height="16" border="0">
              <font color="#FFFFFF"> 模板</font>
            </td>
            <td align="right">
              <input type="button" name="open" value="打 开" onclick="document.form2.action='multiwindow.jsp';document.form2.method='get';document.form2.submit();"> 
              <input type="submit" name="copy" value="复 制"> 
              <input type="submit" name="cut" value="剪 切"> 
              <input type="submit" name="paste" value="粘 贴"> 
              <input type="submit" name="fpaste" value="完全粘贴">

              <input type="button" class="fullDeleteArticleForControl" value="完全删除" onclick="confirmDelete();">
              
              <input type="submit" class="deleteArticleForControl" name="delete" value="删 除" onclick="return confirm('请确认是否删除?');">
              <input type="button" class="hideArticleForControl" value="隐 藏" onclick="confirmHide();">
              <input type="submit" name="pasteWithTopicId" value="粘贴(栏目)">
              <input type="button" value="刷新" onclick="refreshCurrentPage();"/>&nbsp;
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>

  <table width="100%" cellspacing="2" cellpadding="0" border=0>
    <tr bgcolor="#99CC99">
      <td align="center" bgcolor="#99CC99" width="30" height=30>&nbsp;</td>
      <td align="center" width="30" height="30">序号</td>
      <td align="center" width="400">文章名称</td>
      <td align="center" width="80">编辑</td>
      <td align="center" width="70">来源</td>
      <td align="center" width="180">时间</td>
      <td align="center" width="40">权重</td>
    </tr>
    <%-- /把文件夹先显示出来/ --%>
    <c:forEach items="${directory.childs}" var="folder">
    <tr>
      <td width="30" height="30" align="center" bgcolor="#E8E8D0"><input type="radio" name="topicidx"/></td>
      <td colspan="6" align="left" bgcolor="#E8E8D0">
        <img src="/images/mulu.gif" width="16" height="16" border="0">&nbsp;
        <a href="list.do?id=<c:out value="${folder.id}"/>"><c:out value="${folder.name}"/></a>
      </td>
    </tr>
    </c:forEach>
    <%-- /显示文件/ --%>
    <c:forEach items="${directory.texts}" var="file">
    <tr>
      <td width="30" height="30" align="center" bgcolor="#E8E8D0"><input type="checkbox" name="postbox"/></td>
      <td align="center" bgcolor="#E8E8D0">1</td>
      <td align="left"   bgcolor="#E8E8D0">
        <a href="http://help.163.com/special/007529DN/dxb_20100719.html" target=_blank><img src="/images/icon.gif" width=16 height=16 border=0></a>
        
        <a class="" href="model.do?id=<c:out value="${file.id}"/>" alt="根id+英文名"><c:out value="${file.subject}"/></a>
      </td>
      <td align="center" bgcolor="#E8E8D0"><c:out value="${file.user.name}"/></td>
      <td align="center" bgcolor="#E8E8D0">原创</td>
      <td align="center" bgcolor="#E8E8D0"><fmt:formatDate value="${file.create}"  type="both" dateStyle="medium"/></td>
      <td align="center" bgcolor="#E8E8D0"><c:out value="${file.weight}"/></td>
    </tr>
    </c:forEach>
  </table>

  <table width="100%">
    <tr>
      <td bgcolor="#a9a9a9" height="30"> 
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr> 
            <td align="center" width="30"><input name="checkall" onclick="selectAll(this)" type="checkbox"></td>
            <td style="text-align: left;"><b><font color="#FFFFFF">选择全部</font></b></td>
            <td align="right">
              <input name="open" value="打 开" onclick="document.form2.action='multiwindow.jsp';document.form2.method='get';document.form2.submit();" type="button"> 
              <input name="copy" value="复 制" type="submit"> 
              <input name="cut" value="剪 切" type="submit"> 
              <input name="paste" value="粘 贴" type="submit"> 
              <input name="fpaste" value="完全粘贴" type="submit">
              
              <input class="fullDeleteArticleForControl" value="完全删除" onclick="confirmDelete();" type="button">
              
              <input class="deleteArticleForControl" name="delete" value="删 除" onclick="return confirm('请确认是否删除?');" type="submit">
              <input class="hideArticleForControl" value="隐 藏" onclick="confirmHide();" type="button">
              <input name="pasteWithTopicId" value="粘贴(栏目)" type="submit">
              <input name="refreshPosttime" value="刷时间" title="刷新文章在栏目的时间，设置后文章重新在本栏目列出" type="submit">
              <input value="刷新" onclick="refreshCurrentPage();" type="button">
              &nbsp;
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>

  <div style="position:relative;background-color:#E0E7FF;height:30px;">
    <span>来源</span><input id="searchsource" name="source" value="" placeholder="多个来源请用,隔开" style="width:120px;color:#6D6D6D;" autocomplete="off" type="text">
    <span>用户</span><input name="userid" value="" style="width:75px" type="text">
    <span>时间</span><input id="dp1384840434859" name="startday" class="date-picker hasDatepicker" value="2013-09-19" style="width:80px" type="text">—<input id="dp1384840434860" name="endday" class="date-picker hasDatepicker" value="" style="width:80px" type="text">
    <span>权重</span><input name="lspri" value="0-255" style="width:40px" type="text">
    <span>关键词</span><input name="keyword" value="" style="width:120px" title="多个关键词搜索时，用逗号（中英文）隔开表示“与”，空格隔开表示“或”；例如：“A，B”搜索结果“同时包含A、B”，“A B”搜索结果“包含A或B”" type="text">
    <input value="搜 索" style="height:22px;line-height:22px;" type="submit">
    <span style="color:gray;">找到约20条结果(用时 0.005 秒)</span>
    <div style="display: none;" id="source-dropdown"></div>
  </div>

  <div id="foot">
    <p><strong>[产品]</strong> Yang[18612345678]</p>
    <p align="right" class="f12 gray">Powered by OpenCMS</p>
  </div>

</body>
</html>