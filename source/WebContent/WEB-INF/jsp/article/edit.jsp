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
        <a href='/post/postlist.jsp?topicid=0075'>自动服务</a> &gt;&gt; 
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

  <div class="no_float main_part">
    <div id="mainEditor">
      <div class="main" id="mainUploads">
        <table class="btnLayout">
          <tr>
            <td style="width: 100%;">
              <ul class="btns" style="position: relative; z-index: 1;">
                <li class="color" title="文字颜色"><span class="curColor"></span>
                  <span class="more"></span>
                  <div class="sub colors">
                    <div class="cDGray" onclick="mainEditor.setColor('#727171');"></div>
                    <div class="cDRed"  onclick="mainEditor.setColor('#BA2636');"></div>
                    <div class="cBlue"  onclick="mainEditor.setColor('#1e50a2');"></div>
                    <div class="cBlack" onclick="mainEditor.setColor('#000000');"></div>
                  </div>
                </li>
                <li style="background: none; border: none; width: 80px;">
                  <select onchange="mainEditor.setFontFamily(this.value);" title="字体" style="width: 80px; font-size: 14px;" id="FontName" name="select3">
                    <option value="宋体">宋体</option>
                    <option value="楷体,楷体_GB2312">楷体</option>
                    <option value="Arial">Arial</option>
                  </select>
                </li>
                <li class="bold" title="粗体" onclick="mainEditor.setBold();"></li>
                <li class="del" title="删除线" onclick="mainEditor.setStrikeThrough();"></li>
                <li class="underline" title="下划线" onclick="mainEditor.setUnderline();"></li>
                <!--
                <li class="fontSize" title="文字大小">
                  <span class="text">文字大小</span>
                  <span class="more"></span>
                  <div class="sub fontSizes">
                      <div onclick="mainEditor.setFontSize(12);" class="f12px">12 px</div>
                      <div onclick="mainEditor.setFontSize(16);" class="f16px">16 px</div>
                      <div onclick="mainEditor.setFontSize(14);" class="f14px">14 px</div>
                  </div>
                </li>-->
                <li class="link" title="链接" onclick="linkWin.show();"></li>
                <li class="unLink" title="去链接"
                  onclick="mainEditor.unLink();"></li>
              </ul>
              <ul class="btns">
                <li class="alignLeft" title="左对齐" onclick="mainEditor.setAlign('left');"></li>
                <li class="alignCenter" title="居中对齐" onclick="mainEditor.setAlign('center');"></li>
                <li class="alignRight" title="居右对齐" onclick="mainEditor.setAlign('right');"></li>
                <!--<li class="alignJustify" title="两端对齐" onclick="mainEditor.setAlign('justify');"></li>-->
                <li class="indent" title="缩进" onclick="mainEditor.setIndent();"></li>
                <li class="unIndent" title="反缩进" onclick="mainEditor.setOutdent();"></li>
                <li id="showImageWin" class="pic" title="图片"></li>
                <li id="showVideoWin" class="video" title="视频"></li>
                <li id="showAudioWin" class="flash" title="音频/flash"></li>
                <li id="showVoteWin" class="vote" title="投票"></li>
                <li class="table" title="表格" onclick="tableWin.show();"></li>
                <li class="hr" title="水平线" onclick="mainEditor.insertHr();"></li>
              </ul>
              <ul class="btns">
                <li class="pagination" title="分页" onclick="mainEditor.paging();"></li>
                <li class="pageTitles" title="分页标题" onclick="pageTitleWin.show();">分页标题</li>
              </ul>
              <ul class="btns">
                <!--<li class="allBtns" title="全功能"></li>-->
                <li class="fullScreen" title="全屏" onclick="mainEditor.toFullScreen();"></li>
                <!--<li class="help" title="帮助" onclick="mainEditor.test();"></li>-->
                <li class="undo" title="撤销" onclick="mainEditor.undo();"></li>
                <li class="redo" title="重做" onclick="mainEditor.redo();"></li>
              </ul>
            </td>
          </tr>
        </table>
        <table class="btnLayout">
          <tr>
            <td style="width: 8%;">
              <ul class="btns">
                <li class="format" onclick="mainEditor.format();">格式化</li>
              </ul>
            </td>
            <td style="width: 80%;">
              <input type="checkbox" id="isClearLinks" title="去掉所有链接" />
              <label for="isClearLinks">清链接</label> 
              <input type="checkbox" id="isClearTables" title="去掉表格结构，保留表内容" />
              <label for="isClearTables">清表格</label> 
              <input type="checkbox" id="isClearTableStyles" title="去掉表格的样式设定，保留表结构" />
              <label for="isClearTableStyles">清表样式</label> 
              <input type="checkbox" id="isClearImgs" title="删除所有图片" />
              <label for="isClearImgs">清图片</label>
              <input type="checkbox" id="isToDBCCase" title="全角标点、数字和字母的转换为半角" />
              <label for="isChangeDBCCase">转全角</label>
              <input type="checkbox" id="isKeepFontColor" title="保留文字颜色设置" />
              <label for="isStoreFontColor">保留文字颜色</label> 
              <input type="checkbox" id="isDeleteBr" title="去除br，不转换为p" />
              <label for="isDeleteBr">清强制换行，不转换为段落</label> 
              <input type="checkbox" id="isKeepFont" title="保留字体设置" />
              <label for="isStoreFont">保留字体设置</label>
            </td>
            <td style="width: 7%; text-align: right;">
              <a id="changeViewWidth" href="###" title="等宽"></a> 
              <a id="increaseHeight" href="###" title="增加高度"><img src="/static/images/editor_expand.png" alt="增加高度" /></a>
              <a id="decreaseHeight" href="###" title="减少高度"><img src="/static/images/editor_shrink.png" alt="减少高度" /></a>&nbsp;
            </td>
          </tr>
        </table>
        <div id="frameBorder_1" class="frameBorder">
          <iframe id="mainPreview" src="" frameborder="0" tabindex="5"></iframe>
          <textarea id="mainCode" name="mainCode"></textarea>
          <input type="hidden" name="content" id="content" />
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

  <table class="formLayout" cellpadding="6">
    <tr>
      <th style="width: 7%;">额外</th>
      <td style="width: 38%;">
        <p>
          <select id="extra_tpl_select"><option value="">--选择额外区模板--</option></select>
          <button id="extra_tpl_set" type="button">设置</button>
        </p> 
        <textarea id="userinfo_show" name="userinfo_show" style="width: 98%; margin: 10px 0;" rows="2" class="text"></textarea>
      </td>
      <th style="width: 5%;">摘要</th>
      <td style="width: 50%;">
        <table class="innerLayout">
          <tr>
            <td style="width: 90%;" valign="bottom">
              <textarea id="summary" name="digest" class="text" rows="4" cols="25"></textarea>
            </td>
            <td style="width: 10%;" valign="bottom">
              <span class="textCount" id="summaryTextCount">0</span>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>

  <table class="formLayout" cellpadding="6">
    <tr>
      <td style="width: 87%;">
        <table class="innerLayout">
          <tr>
            <input type="hidden" name="state_new" value="0" />

            <td style="width: 3%; text-align: right;"><label for="postTime" id="postTimeLable">时间</label>&nbsp;</td>
            <td style="width: 16%;">
              <input type="text" id="postTime" name="ptime" class="text" value="2008-10-08 13:08:19" />
              <span id="postTimeSpan">2008-10-08 13:08:19</span>
            </td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;
              <input type="checkbox" checked="checked" name="replaceKeyWord" />替换关键词
            </td>
            <td style="width: 12%; text-align: right;">
              <input type="checkbox" id="hasComment" name="comment" value="y" />
              <label for="hasComment">创建</label>&nbsp;
            </td>
            <td style="width: 12%;">
              <input id="commentid" class="text" type="text" name="commentid" value="" />
            </td>
            <td style="width: 9%; text-align: center;">
              <input type="checkbox" id="needcheck" name="needcheck" value="true" />
              <label for="needcheck">预审</label>
            </td>
            <td style="width: 6%;"><label for="pCommentId">合并跟贴</label></td>
            <td style="width: 12%;">
              <input type="text" class="text" name="pcommentid" value="" id="pCommentId" autocomplete="off" />
              <div id="pcomment-dropdown"></div>
            </td>
            <td style="width: 6%;"><button id="pcomment-tpl-set">设置</button></td>
          </tr>
        </table>
      </td>
      <td rowspan="3" style="width: 13%; text-align: right;">
        <!--  <input type="button" value=" 预览 " class="wideBtn" /> --> 
        <input type="submit" value="提交(Alt+s)" class="wideBtn" accesskey="s" tabindex="6" id="editArticleForControl" />
      </td>
    </tr>
    <tr>
      <td>
        <table class="innerLayout">
          <tr>
            <td style="width: 50%;"></td>
            <td style="width: 18%;">
              <select id='modelid' name='modelid' class='' onpropertychange='check17d()' accesskey='a'>
                <option value='0075post_v10'>c - 测试_跳转模板</option>
                <option value='0075wapbx'>b - 保险wap页</option>
                <option value='0075bj_zt'>b - 保健知识养生专题模板</option>
                <option value='0075bj_zt_cf'>b - 保健知识成分专题模板</option>
                <option value='0075baoxian-mail'>b - 保险邮件</option>
                <option value='0075post_v2'>x - 新-文章模板</option>
                <option value='0075post_v5'>t - 跳转404</option>
            </select></td>
            <td style="width: 1%;">
              <input type="hidden" id="pagetype" name="pagetype" value="e" /> 
              <input type="hidden" id="myModelId" name="myModelId" value="null" /> 
              <input type="hidden" id="defaultmodel" name="defaultmodel" value="true" />
            </td>
            <td style="width: 10%;"><input type="button" class="btn" value="默认" title="设置为默认模板" id="setDefaultTpl" /></td>
            <td style="width: 7%;">
              <input type="checkbox" id="standing" name="standing" value="y" /> 
              <label for="standing">连续发布</label>
            </td>
            <td style="width: 3%; text-align: center;">
              <input type="button" title="粘贴到表单所有选项" value="粘" onclick="resumeContent();" name="pasteall" />
            </td>
            <td style="width: 3%; text-align: center;">
              <input type="button" onclick="clearContent();" value="清" name="reset" />
            </td>
            <td style="width: 3%; text-align: center;">
              <input type="button" onclick="confirmHide();" value="隐" name="reset" />
            </td>
            <td style="width: 3%; text-align: center; color: red;">
              <input type="button" onclick="confirmDelete();" value="完全删除" name="reset" />
            </td>
          </tr>
        </table>
      </td>
    </tr>

    <tr>
      <td>
        <table class="innerLayout push_wrap">
            <tr>
              <td width="8%"><input id="cover_nav" type="checkbox"><label for="cover_nav">覆盖导航</label></td>
              <td id="cover_nav_items" width="92%"></td>
            </tr>
            <tr id="personal_push_wrap">
              <td class="push_title" style="padding:6px 0;" colspan="2"><a target="_blank" href="admintopic.jsp?topicid=007529DN">设置个人推送栏目</a></td>
            </tr>
            <tr>
              <td colspan="2"><span class="push_category">·默认分组</span></td>
            </tr>
            <tr id="channel_push_wrap">
              <td class="push_title" style="padding:6px 0;" colspan="2">频道定制推送栏目</td>
            </tr>
            <tr>
              <td colspan="2"><span class="push_category">·频道默认分组</span></td>
            </tr>
        </table>
      </td>
    </tr>
  </table>

  <div class="right" style="display: none;">
    <table class="formLayout" cellpadding="8">
      <tr>
        <th class="caption">快速推送 <a href="#" style="font-weight: normal;">定制</a></th>
      </tr>
      <tr>
        <td>
          <ul id="pushTopics" class="treeMenu">
            <li><span><input type="checkbox" /> <label>NBA</label></span>
              <ul>
                <li><input type="checkbox" /> <label>新闻</label></li>
                <li><input type="checkbox" /> <label>时政新闻</label></li>
                <li><input type="checkbox" /> <label>新闻</label></li>
                <li><input type="checkbox" /> <label>时政新闻</label></li>
              </ul></li>
            <li><span><input type="checkbox" /> <label>NBA</label></span>
              <ul>
                <li><input type="checkbox" /> <label>新闻</label></li>
                <li><input type="checkbox" /> <label>时政新闻</label></li>
                <li><input type="checkbox" /> <label>新闻</label></li>
                <li><input type="checkbox" /> <label>时政新闻</label></li>
              </ul></li>
            <li><span><input type="checkbox" /> <label>NBA</label></span></li>
            <li class="last"><span><input type="checkbox" />
                <label>NBA</label></span></li>
          </ul>
        </td>
      </tr>
      <tr>
        <th class="caption">高级推送</th>
      </tr>
      <tr>
        <td><input type="button" class="btn" value="推至栏目" /> <input
          type="button" class="btn" value="推至专题" /></td>
      </tr>
    </table>
  </div>

</body>
</html>