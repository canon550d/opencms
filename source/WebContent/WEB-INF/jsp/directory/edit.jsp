<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>编辑</title>

</head>
<body>
  <table width="100%" border="0" cellpadding="0" cellspacing="2">
    <tr>
      <td height="30" bgcolor="#E0E7FF">&nbsp;&nbsp;<b>当前栏目:
        <a href='/post/postlist.jsp?topicid=0075'>网易自动服务</a> &gt;&gt; 
        <a href='/post/postlist.jsp?topicid=0075rt'>主频道</a> &gt;&gt; 
        <a href='/post/postlist.jsp?topicid=007529DN'>测试栏目(勿删)</a> &gt;&gt;
      </b></td>
    </tr>
  </table>

  <table class="formLayout" cellpadding="6">
    <tr>
      <th class="required">标题</th>
      <td style="width:40%;">
        <table class="innerLayout">
          <tr>
            <td style="width: 90%;"><input type="text" id="title" name="title" class="text" value="测试日志模板" tabindex="1"/></td>
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
            <td style="width: 90%;"><input type="text" id="subtitle" name="stitle" class="text" value='' /></td>
            <td style="width: 8%;"><span class="textCount" id="subtitleTextCount">0</span></td>
          </tr>
        </table>
      </td>
    </tr>
  </table>

  <table class="formLayout" cellpadding="6">
    <tr>
      <th class="required">来源</th>
      <td style="width:20%;">
        <table class="innerLayout">
          <tr>
            <td style="width: 30%;">
              <table class="innerLayout">
                <tr>
                  <td style="width: 30%;"><input type="text" id="source" name="source" needed="true" class="text" value="" autocomplete="off"/><div id="source-dropdown"></div></td>
                  <td style="width: 2%;"></td>
                  <td style="width: 68%;">
                    <select id='sources' name='sources' class='sources'  accesskey='a'>
                      <option value=''>请选择</option>
                      <option value='21世纪经济报道'>2 - 21世纪经济报道</option>
                    </select>
                  </td>
                </tr>
              </table>
            </td>
          </tr>
        </table>
      </td>
      <th style="width:8%;">3G短标题</th>
      <td style="width:20%;">
        <table class="innerLayout">
          <tr>
            <td style="width: 90%;"><input type="text" id="mtitle" name="mtitle" class="text"  value="" tabindex="2" /></td>
            <td style="width: 8%;"><span class="textCount" id="mtitleTextCount">0</span></td>
          </tr>
        </table>
      </td>
      <th>记者</th>
      <td style="width:8%;"><input type="text" id="reporter" name="buloid" class="text" style="width: 94%;" tabindex="3" value="" /></td>         
      <td style="width: 8%; text-align: center;"><input type="text" class="text" name="topicids" id="topicids" value=""/></td>
      <td style="width: 10%; text-align: center;">
            <input type="button" class="btn" onclick="setDialog('changetopic.jsp?topicid=007529DN&topicids='+document.getElementById('topicids').value)" value="更多" />
            <input type="button" class="btn" onclick="setDialog('changespecial.jsp?topicid=007529DN&topicids='+document.getElementById('topicids').value)" value="专题" />
      </td>
    </tr>
  </table>

  <table class="formLayout" cellpadding="6">
    <tr>
      <th style="width:7%;" class="required">关键字</th>
      <td style="width:18%;"><input type="text" id="dkeys" needed="true" name="dkeys" class="text" tabindex="4" value="" /></td>
      <th style="width:10%;">相关文章</th>
      <td style="width:20%;">
        <table class="innerLayout">
          <tr>
            <td style="width:76%;"><input type="text" id="relatedPosts" name="relatekey" class="text" needed="true" value="" /></td>
            <td style="width:24%;text-align:center;"><input type="button" value="查询" class="btn" onclick="setDialog('/post/selectrelate3.jsp?docid=4NO22F1J007529DN&topicid=007529DN&checkedchannel=0075&relatekey=' + escape(document.getElementById('relatedPosts').value));" /></td>
          </tr>
        </table>
      </td>

      <th class="required">栏目</th>
      <td style="width:30%;">
        <table class="innerLayout">
          <tr>
            <td style="width: 14%;"><input class="text" type="text" id="topicKeyword" name="topicids1" value="007529DN" /></td>
            <td style="width: 1%;"></td>
            <td style="width: 46%; text-align: center;">
              <select id='topicidlist' name='topicidlist' class='topicids'  accesskey='a'>
                <option value=''>请选择栏目</option>
                <option value='0075rt'>z - ----主频道</option>
              </select>
            </td>
          </tr>
        </table>
      </td>

      <th class="required" style="width:5%;">权重</th>
      <td style="width:4%;"><input type="text" id="priority" name="lspri" class="text" maxlength="3" value="60" /></td>
    </tr>
  </table>


</body>
</html>