<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>编辑</title>
<style type="text/css">
body,h1,h2,h3,h4,h5,h6,hr,p,blockquote,dl,dt,dd,ul,ol,li,pre,form,fieldset,legend,button,input,textarea,th,td{margin:0;padding:0}body,button,input,select,textarea{font:14px Tahoma,Helvetica,Arial,\5b8b\4f53,sans-serif;color:#000}h1,h2,h3,h4,h5,h6{font-size:100%}address,cite,dfn,em,var{font-style:normal}code,kbd,pre,samp{font-family:courier new,courier,monospace}small{font-size:12px}ul,ol{list-style:none}a{text-decoration:underline}a:link,a:visited{text-decoration:underline;color:#285b7b}a:active{color:#c00}a:hover{color:#c00;text-decoration:underline}sup{vertical-align:text-top}sub{vertical-align:text-bottom}legend{color:#000}fieldset,img{border:0}button,input,select,textarea{font-size:100%}.hidden{display:none}.invisible{visibility:hidden}.clear{clear:both}.clearfix:after{content:'\20';display:block;height:0;clear:both}.clearfix{*zoom:1}.inline-block{display:inline-block;*display:inline}.bold{font-weight:bold}.btn{padding:0 6px;height:24px}textarea,.txt{border:1px solid #7f9db9}.bgcolor-e0e7ff{background-color:#e0e7ff}.bgcolor-72a4c3{background-color:#72a4c3}

.tipTitle{background:#E8E8D0; padding:9px 0 5px 12px; clear:both; border-bottom:1px solid #ffffff;}
.tipList{background:#E8E8D0;font-size:14px; clear:both; overflow:auto;border-bottom:1px solid #ffffff;}
.tipList ul{clear:both;}
.tipList li{float:left; width:24.8%; padding:8px 0 5px; border-left:1px solid #ffffff; text-indent:1em;}
.tipList .summary{ text-indent:1em; padding:8px 0 5px;}
.tipList .summary p{ float:left; padding:25px 10px 0 0;}
.tipList .master{text-indent:1em; padding:8px 0 5px;}
.tipPost{background:#99CC99;font-size:14px;clear:both;overflow:auto;}
.tipPost li{float:left; width:49%;padding:8px 0 5px;text-indent:1em;color:#ffffff;}
.tblList {border: 1px solid #fff; border-collapse: collapse; width: 100%;background: #E8E8D0;font-size: 14px;}
.tblList td {border: 1px solid #fff; padding: 0.5em 0 0.5em 0.8em; }

.wrap {height:350px;overflow:auto;}
#tpl-list {width:100%;}
#tpl-list th {background-color:#72A4C3;padding:10px 0;}
#tpl-list td {padding:5px 0;text-align:center;}
#tpl-list input {width:100%;height:22px;line-height:22px;border:1px solid #7F9DB9;}
#tpl-list a {margin:0 5px;color:#000;}
#tpl-list a.del {color:#f00;}
#loading {background:transparent url(/images/loading_48x48.gif) no-repeat center center;height:400px;}
</style>
</head>
<body>
<form action="update.do" method="post">
  <table class="tblList">
    <tr>
      <td>英文名：<input type="text" value="<c:out value='${template.name_english}'/> "/></td>
      <td>中文名：<input type="text" value="<c:out value='${template.name_chinese}'/>"/></td>
      <td>评论：<input type="text" value=""/></td>
      <td>分页：<input type="text" value=""/></td>
    </tr>
    <tr>
      <td>过期：<select>
        <% for(int i=0;i<50;i++){ %>
        <option value="<%=i %>"><%=i %></option>
        <% } %>
      </select>日</td>
      <td>扩展名：<select>
        <option value=".html" id="ext_html">.html</option>
        <option value=".htm" id="ext_htm">.htm</option>
        <option value=".css" id="ext_css">.css</option>
        <option value=".js" id="ext_js">.js</option>
        <option value=".txt" id="ext_txt">.txt</option>
        <option value=".xml" id="ext_xml">.xml</option>
        <option value=".xslt" id="ext_xslt">.xslt</option>
        <option value=".htc" id="ext_htc">.htc</option>
        <option value=".dtd" id="ext_dtd">.dtd</option>
        <option value=".wml" id="ext_wml">.wml</option>
        <option value=".wmls" id="ext_wmls">.wmls</option>
        <option value=".vml" id="ext_vml">.vml</option>
        <option value="" id="ext_">无扩展名</option>
      </select></td>
      <td>嵌套预览：<input type="text" value=""/><button>配置</button></td>
      <td>更新批率：<select>
        <option value="0" selected>永不</option>
        <option value="60">60分钟</option>
        <option value="4">4分钟</option>
        <option value="1440">每天</option>
        <option value="-1">临时</option>
      </select></td>
    </tr>
    <tr>
      <td colspan="4">
        <div style="float:left;">摘要：</div>
        <div style="float:left; width:50%;"><textarea name="digest" id="digest" style="width:100%; height:55px;"></textarea></div>
      </td>
    </tr>
  </table>
  <div class="tipList">
    <div class="master">
        <label>
            <textarea id="body" name="content" style="font-family: fixedsys; font-size: 10.5pt; width: 94%; height: 500px;"><c:out value="${template.content}"/></textarea>
            <textarea id="body_swap" name="body_swap" style="display: none">test</textarea>
        </label>
        <p style="margin:5px 0; color:#f00; text-align:right;">[提交专题前，请确认代码来自专题模板库，避免页面出错]</p>
    </div>
  </div>
  <div class="tipPost">
    <ul>
      <li>
        <input name="isredo" value="n" type="hidden">&nbsp; 备份文件： 
        <span id="backupmodel"> <input class="btn" id="selbtn" onclick="get_model_list()" value="点击查看备份文件列表" type="button"></span>&nbsp;
        <input class="btn" value="操作日志" onclick="setDialog('viewlog.jsp?modelid=0075dxb_20100719')" type="button">
      </li>
      <li style="text-align:right;">
        <input name="id" value="<c:out value='${template.id}'/>" type="hidden">
        <input name="topicid" value="007529DN" type="hidden">
        <input name="new" value="1" type="hidden">
        <input name="preview" value="true" style="display:none" type="checkbox">
        <input class="btn" id="preview" value="预 览" onclick="preview_model();" type="button"> &nbsp;
        <input class="btn" id="Submit" name="Submit" value="提 交" type="submit"> &nbsp;
        <input class="btn" id="fabudeal" name="fabudeal" value="提交并发布" type="submit">
      </li>
    </ul>
  </div>
</form>
</body>
</html>