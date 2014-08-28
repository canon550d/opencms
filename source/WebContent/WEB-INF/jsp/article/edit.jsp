<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>编辑</title>
<link href="/static/css/edit20131119.css" rel="stylesheet" type="text/css" />
</head>
<body>
  <table width="100%" border="0" cellpadding="0" cellspacing="2">
    <tr>
      <td height="30" bgcolor="#E0E7FF">&nbsp;&nbsp;<b>当前栏目:
        <c:forEach items="${ancestors}" var="an" > 
        <a href="../directory/list.do?id=<c:out value="${an.id}"/>"><c:out value="${an.name}"/></a> >>
        </c:forEach>
      </b></td>
    </tr>
  </table>

<form method="post">
  <table class="formLayout" cellpadding="6">
    <tr>
      <th class="required">标题</th>
      <td style="width:40%;">
        <table class="innerLayout">
          <tr>
            <td style="width: 90%;"><input type="text" id="title" name="title" class="text" value="<c:out value='${text.subject}'/>" tabindex="1"/></td>
            <td style="width: 8%;"><span class="textCount" id="titleTextCount">0</span></td>
          </tr>
        </table>
      </td>
      <th>源URL</th>
      <td style="width:22%;"><input type="text" id="sourceUrl" name="sourceurl" class="text" style="width: 97%;" value='' /></td>
      <th>副标</th>
      <td style="width:20%;">
        <table class="innerLayout">
          <tr>
            <td style="width: 90%;"><input type="text" id="subtitle" name="stitle2" class="text" value='' /></td>
            <td style="width: 8%;"><span class="textCount" id="subtitleTextCount">0</span></td>
          </tr>
        </table>
      </td>
    </tr>
  </table>

  <div class="no_float main_part">
    <div id="mainEditor">
      <div class="main" id="mainUploads">

        <div id="frameBorder_1" class="frameBorder">
          <!-- 正文 -->
          <textarea id=""  name="message"><c:out value='${text.message}'/></textarea>
          <!-- <iframe id="mainPreview" src="" frameborder="0" tabindex="5"></iframe>  -->
          <input type="hidden" name="content2" id="content" />
        </div>
        <textarea id="tempContent" style="display: none;"></textarea>
        <table class="btnLayout" style="border-top: 1px solid #fff;">
          <tr>
            <td style="width: 16%; text-align: center;">
              <a href="###" class="btn current" id="toContentView" accesskey="v">视图</a>
              <a href="###" class="btn" id="toContentCode" accesskey="c">代码</a>
            </td>
            <td style="width: 28%;"></td>
            <!--<td style="width: 10%; text-align: center;"><a id="increaseHeight" href="###"><img src="/images/new_cms_img/editor_expand.png" alt="增加高度" /></a> <a id="decreaseHeight" href="###"><img src="/images/new_cms_img/editor_shrink.png" alt="减少高度" /></a></td>-->
            <td style="width: 46%; text-align: right;">
              <!--<a href="###">保存草稿</a>　<a href="###">恢复草稿</a>　-->
              <a href="###"
              onclick="setDialog('viewlog.jsp?docid=4NO22F1J007529DN'); return false;">查看操作日志</a>&nbsp;<input
              type="submit" class="btn" value="提交(Alt+s)" id="quickSubmit"
              style="display: none;" />
            </td>
          </tr>
        </table>
      </div>
    </div>
  </div>
  <input type="hidden" name="directory_id" value="${directory.id}" />
  <input type="hidden" name="id" value="${text.id}" />
  <button type="submit">提交</button>
</form>

</body>
</html>