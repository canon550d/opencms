<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>生成</title>
<meta content="text/html; charset=GBK" http-equiv="Content-Type">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="-1">
<link rel="stylesheet" href="/css/base.min.css" type="text/css">
<style type="text/css">
.tipTitle{background:#E0E7FF; padding:9px 0 5px 12px; clear:both; border-bottom:1px solid #ffffff;}
.tipList{background:#E0E7FF;font-size:14px; clear:both; overflow:auto;border-bottom:1px solid #ffffff;}
.tipList ul{clear:both;}
.tipList li{float:left; width:24.8%; padding:8px 0 5px; border-left:1px solid #ffffff; text-indent:1em;}
.tipList .summary{ text-indent:1em; padding:8px 0 5px;}
.tipList .summary p{ float:left; padding:25px 10px 0 0;}
.tipList .master{text-indent:1em; padding:8px 0 5px;}
.tipPost{background:#72A4C3;font-size:14px;clear:both;overflow:auto;}
.tipPost li{float:left; width:49%;padding:8px 0 5px;text-indent:1em;color:#ffffff;}
.tblList {border: 1px solid #fff; border-collapse: collapse; width: 100%;background: #E0E7FF;font-size: 14px;}
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
<form name="form1" method="post" action="" onSubmit="return afterSubmit()">
<input type="hidden" name="pattern" value="0"/>
<input name=edit value="" type=hidden>
<input type=hidden name=final value=1>
<div class="tipTitle">





<table width="100%" border="0" cellpadding="0" cellspacing="2">
	<tr>
		<td height="30" bgcolor="#E0E7FF">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td style="padding-left:10px">
						<b>当前栏目:<a href='/template/template.jsp?topicid=0075'>网易自动服务</a> &gt;&gt; <a href='/template/template.jsp?topicid=0075rt'>主频道</a> &gt;&gt; <a href='/template/template.jsp?topicid=00752Q07'>模板V2.8</a> &gt;&gt; 

		  				&nbsp;&nbsp;<a style="font-size:12px;color:#333;" href="javascript:void(0)" class="js_N_copyToClipboard" data-clipboard-text="00752Q07">[复制栏目ID]</a>
		  				&nbsp;&nbsp;<a style="font-size:12px;color:#333;" href="#" onclick="javascript:addToFav('00752Q07','模板V2.8');return false;">[收藏栏目]</a>
		  				</b>
					</td>
					<td align="right" style="font-weight: bold; padding-right: 5px;">
						
							<a href="/digg/digg.jsp?search=yes">热点推荐</a>
						
					</td>
				</tr>
			</table>
		</td>
	</tr>
</table>
</div>

<table class="tblList">
<tr>
    <td>英文名: <input type="text" name="modelid" id="modelid" style="width: 120px;" value="" onBlur="checkVal();" /></td>
    <td>中文名: <input type="text" name="modelname" id="modelname" style="width: 120px;" value=""></td>
    <td>
    
    评论: <input type="text" name="postId" id="postId" value="">
       
    </td>
    <td>分页: <input type="text" name="split" id="split" style="width: 30px" value="0" /></td>
    
    <input type="hidden" name="encoding" id="encoding" value="GBK" />
    
</tr>
<tr>
    <td>过　期: 
    <select id="timeout" name="timeout" style="width:50px"><option value="0">0</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option>
</select>日
    </td>
    <td>
        扩展名：
        <select name="extname" id="extname" style="width: 60px">
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
        </select>
	</td>
	<!--
    <td>相关专题: <input type="radio" name="canview" value="1"  /> 是 <input type="radio" name="canview" value="0" checked /> 否</td>
    -->
    <td>
        嵌套预览：
        <input type="text" id="preview-input" readonly="true" style="width:50%;" />&nbsp;<input type="button" class="btn" id="preview-set-btn" value="配置"/>
    </td>
    <td>
        更新频率：
        <select name="freq" style="width: 70px">
        
            <option value="0" >永不</option>
            <option value="60" >60分钟</option>
            <option value="4" >4分钟</option>
            <option value="1440" >每天</option>
            <option value="-1" >临时</option>
        </select>
    </td>
</tr>
<tr>
    <td colspan="4">
        <div style="float:right; display:inline; margin-right:30px;">
            <p style="margin:5px 0;"><a href="https://bbs.ws.netease.com/static/mb/v3/mokuai/mokuai.html" target="_blank" style="color:#f00;">&gt;&gt;去“专题模板库”挑选模板</a>&nbsp;&nbsp;<a href="https://bbs.ws.netease.com/viewthread.php?tid=562" target="_blank" style="color:#f00;">&gt;&gt;专题SEO必读文档</a></p>
            <p style="margin:10px 0 5px 0;"><a href="https://bbs.ws.netease.com/static/mb/v3/index.html" target="_blank">&gt;&gt;关于专题焦点图无法切换或跟帖不显示的解决指南</a></p>
        </div>
        <div style="float:left; ">摘　要:&nbsp;</div>
        <div style="float:left; width:50%;"><textarea name="digest" id="digest" style="width:100%; height:55px;"></textarea></div>
    </td>
</tr>
</table>

<div class="tipList">
    <div class="master">
        <label>
            <textarea id="body" name="body" style="font-family: fixedsys; font-size: 10.5pt; width: 94%; height: 500px;" disabled>loading...</textarea>
            <textarea id="body_swap" name="body_swap" style="display: none"></textarea>
        </label>
        <p style="margin:5px 0; color:#f00; text-align:right;">[提交专题前，请确认代码来自专题模板库，避免页面出错]</p>
    </div>
</div>
<div class="tipPost">
    <ul>
        <li>
            <input type="hidden" name="isredo" value="n">&nbsp;
            备份文件： <span id="backupmodel"> <input type="button" class="btn" id="selbtn" onclick="get_model_list()" value="点击查看备份文件列表" /></span>&nbsp;
            <input type="button" class="btn" value="操作日志" onclick="setDialog('viewlog.jsp?modelid=')">
        </li>
        <li style="text-align:right;">
            <input type="hidden" name="topicid" value="00752Q07" />
            <input type="hidden" name="new" value="1" />
            <input type="checkbox" name="preview" value="true" style="display:none" />
            <input type="button" class="btn" id="preview" value="预 览" onclick="preview_model();" /> &nbsp;
            <input type="submit" class="btn" id="Submit" name="Submit" value="提 交" disabled /> &nbsp;
            <input type="submit" class="btn" id="fabudeal" name="fabudeal" value="提交并发布" disabled />
        </li>
    </ul>
</div>

<script>
	function replaceIllegalChar(data) {
		var illegal_chars = data.match(/[^\w\d-_\.]+/g);
		if (illegal_chars == null)
			return data;
		else if (confirm("您输入的字符存在非法字符："+illegal_chars+"\n如果您允许自动过滤并提交？请点“确定”\n如果您想手动修改？请点“取消”" )) {
			return  data.replace(/[^\w\d-_\.]+/g, "");
		} else {
			return data;
		}
	}
	function checkVal() {
		var modelid = document.getElementById('modelid').value;
		if (!document.getElementById('modelid').disabled) {
			modelid=replaceIllegalChar(modelid);
			document.getElementById('modelid').value = modelid;
		}
	}
</script>



</form>
<form name="preview_form" id="preview_form" method="post" action="/template/preview_model.jsp" target="_blank">
	<input type="hidden" name="topicid" value="00752Q07"/>
	<input type="hidden" name="modelid_pre" id="modelid_pre"/>
	<input type="hidden" name="modelname_pre" id="modelname_pre"/>
	<input type="hidden" name="body_pre" id="body_pre"/>
	<input type="hidden" name="digest_pre" id="digest_pre"/>
	<input type="hidden" name="split_pre" id="split_pre"/>
	<input type="hidden" name="postId_pre" id="postId_pre"/>
	<input type="hidden" name="extname_pre" id="extname_pre"/>
	<input type="hidden" name="hascomment_pre" id="hascomment_pre"/>
	<input type="hidden" name="needcheck_pre" id="needcheck_pre"/>
	<input type="hidden" name="isnewmodel" id="isnewmodel" value="true"/>
</form>

<script type="text/javascript" src="/js/jquery/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="/js/json2.min.js"></script>
<style type="text/css">
    #float-layer {border:1px solid #90b5d7;border-top:none;background-color:#f6fcff;box-shadow:0 2px 4px rgba(0,0,0,.2);width:600px;position:fixed;display:none;}
    #title-bar {border-top:1px solid #90b5d7;height:31px;line-height:31px;background:url(/post/blankdoc/images_/top_bg.gif);color:#0b509a;font-weight:bold;padding:0 10px 0 20px;}
    #btn-close {width:50px;height:26px;background:url(/post/blankdoc/images_/btn_form.gif) -58px -90px;float:right;position:relative;margin-top:-1px;}
    #btn-close:hover {background-position:-58px -116px;}
    #btn-close:active {background-position:-58px -142px;}
    #middle-wrap {position:relative;padding:12px 13px 12px 20px;}
    #btns-wrap {margin-top:12px;text-align:right;border-top:1px solid #90b5d7;padding:12px 20px 12px 0;}
    #btn-submit, #btn-cancel {font-weight:bold;font-size:14px;text-decoration:none;display:inline-block;text-align:center;width:114px;height:30px;line-height:30px;background:url(/post/blankdoc/images_/btn_form.gif);outline:none;}
    #btn-submit {color:#003c74;background-position:0 0;}
    #btn-cancel {color:#003c74;background-position:-114px 0;display:none;}
    #btn-submit:hover {background-position:0 -30px;}
    #btn-cancel:hover {background-position:-114px -30px;}
    #btn-submit:active {background-position:0 -60px;}
    #btn-cancel:active {background-position:-114px -60px;}
</style>
<div id="float-layer">
    <div id="title-bar">
        <a href="javascript:;" id="btn-close"></a><span id="title-txt">提示</span>
    </div>
    <div id="middle-wrap"></div>
    <div id="btns-wrap">
        <a id="btn-submit" href="javascript:;">确 定</a>
        <a id="btn-cancel" href="javascript:;">取 消</a>
    </div>
</div>
<script type="text/javascript">
    var dialog = (function($){
        if(!$)return;
        var doc = $(document),
            floatLayer = $('#float-layer'),
            titleTxt = $('#title-txt'),
            btnClose = $('#btn-close'),
            middleWrap = $('#middle-wrap'),
            btnSubmit = $('#btn-submit');

        function adjustDialog(){
            floatLayer.css({
                'top': Math.max((doc.height() - doc.scrollTop() - floatLayer.height()) / 2, 0) + "px",
                'left': Math.max((doc.width() - doc.scrollLeft() - floatLayer.width()) / 2, 0) + "px"
            });
        }
        function openDialog(){
            floatLayer.show();
            adjustDialog();
        }
        function closeDialog(){
            floatLayer.hide();
            setTitle('提示');
        }
        function setTitle(txt){
            titleTxt.text(txt);
        }
        function setContent(html){
            middleWrap.html(html);
        }
        function bindSubmit(func){
            btnSubmit.unbind('click');
            btnSubmit.bind('click', func);
        }
        function unbindSubmit(){
            btnSubmit.unbind('click');
            btnSubmit.bind('click', closeDialog);
        }
        btnClose.click(closeDialog);
        btnSubmit.click(closeDialog);
        doc.keydown(function(e){
            if (27 == e.keyCode) {
                closeDialog();
            }
        });
        window.onresize = adjustDialog;

        return {
            'body': floatLayer,
            'open': openDialog,
            'close': closeDialog,
            'setTitle': setTitle,
            'setContent': setContent,
            'bindSubmit': bindSubmit,
            'unbindSubmit': unbindSubmit
        };
    })(jQuery);
</script>
<script type="text/javascript">
var hasComment = $("#hasComment"),
    bodyArea = $("#body"),
    modelidInput = $('#modelid'),
    previewInput = $('#preview-input'),
    previewForm = $("#preview_form"),
    channelid = '0075',
    modelid = '',
    previewData;



function view_model() {
	var filename =   $('#backupfile').val(),
	    modelid='',
	    url = 'viewModelBody.jsp',
	    pars = 'modelid='+modelid+'&filename='+filename;

    bodyArea.val('请稍候.........');
	$.ajax({
	    url: url,
	    type: 'POST',
	    data: pars,
	    success: function(data, status){
            bodyArea.val(data);
	    },
	    error: function(xhr, status, e){
            alert(xhr.responseText);
	    }
	});
}
function setDialog(URLStr) {
	try {
		window.showModelessDialog(URLStr, window, "dialogWidth:500px;dialogHeight:400px;status:no;scroll:yes;help:no;");
	} catch(e) {
		var win = window.open(URLStr, "popup", "height=400,width=500,resizable=no,scrollbars=yes,modal=yes");
		win.focus();
	} 
}
function makecode() {
	setDialog('/template/makecode.jsp');
}
function makehead() {
	setDialog('/template/makehead.jsp');
}
function makereply() {
	setDialog('/template/makereply.jsp');
}
function makestatic() {
	setDialog('/template/makestatic.jsp');
}
function breakmodel() {
	//if (document.form1.body.disabled==false)
	//{
		window.open('/template/break.jsp?modelid=');
		document.form1.body.disabled=true;
		//document.form1.btn4.disabled=true;
	//}
}
function flowermodel() {
	//if (document.form1.body.disabled==false)
	//{
		window.open('/template/flower.jsp?modelid=');
		//window.open('/template/break.jsp?modelid=');
		document.form1.body.disabled=true;
		//document.form1.btn4.disabled=true;
	//}
}
function joinmodel() {
	document.location.href= "/template/joinModel.jsp?modelid=&topicid=00752Q07";
}
function defaultmodel() {
	setDialog('/template/modeldefault.jsp');
}
function get_model_list() {
	$.getScript('modellist.jsp?modelid=' + modelid, function(){
        $('#selbtn').attr('disabled', false);
	});
    $('#selbtn').attr('disabled', true);
}
function onSetBackup(data) {
	var selectObj = $('<select name="backupfile" id="backupfile"><option value="">请选择备份文件</option></select>');
	for (var i = 0,len = data.length; i < len; i++) {
	    $('<option value="' + data[i] + '">' + data[i] + '</option>').appendTo(selectObj);
	}
    $("#selbtn").remove();
	$("#backupmodel").append(selectObj);
    selectObj.change(view_model);
} 
function sign() {
	var text = window.showModalDialog('/template/signature.jsp',window,'dialogWidth:500px;dialogHeight:400px;status:no;scroll:no;help:no;');
	if (text) {
		text = ' ' + text + ' ';
		if (form1.body.createTextRange && form1.body.caretPos) {
			var caretPos = form1.body.caretPos;
			caretPos.text = caretPos.text.charAt(caretPos.text.length - 1) == ' ' ? text + ' ' : text;
			form1.body.focus();
		} else {
			form1.body.value  += text;
			form1.body.focus();
		}
	}
}
function hidemodel() {
	document.location.href= "/template/hideModel.jsp?modelid=&topicid=00752Q07";
}

function afterSubmit() {
	var modelid = modelidInput.val(), seoCheckResult;
	if(modelid && !/^[\w\d-_\.]{1,96}$/.test(modelid)) {
		alert("模板id数据不合法，请修改后重新提交！");
		return false;
	}
	var modelcontent = bodyArea.val();
	if(modelcontent.length > 0) {
		var moneyindex = modelcontent.search(/quotes.ws.netease.com/i);
		var internal = modelcontent.search(/ws.netease.com/i);
		var bninternal = modelcontent.search(/enc\d*.bn.netease.com/i);
		var liveindex = modelcontent.search(/live.ws.netease.com/i);
		if(bninternal != -1 || (internal != -1 && internal != liveindex + 5 && internal != moneyindex + 7)) {
			alert("模板内容不能包含内部系统地址！");
			return false;
		}
	}
	if(seoCheckResult = seoCheck(modelcontent)){
	    if(seoCheckResult == 1){
            if(!confirm('专题代码中，检测到文章标题<title>标签内为空或默认，如：\n<title></title> 或 <title>网易专题</title>\n该问题会不利于专题在搜索引擎的收录排名，请根据专题内容，将其更改为包含主要关键词的内容。\n搜索引擎优化（SEO）详细指南请参考（使用公司邮箱账号密码登陆）：\nhttps://bbs.ws.netease.com/viewthread.php?tid=562')){
                return false;
            }
        }
        if(seoCheckResult == 2){
            if(!confirm('专题代码中，检测到文章关键词<meta name"keywords">标签内为空或默认，如：\n<meta name="keywords" content="" /> 或 <meta name="keywords" content="网易专题" />\n该问题会不利于专题在搜索引擎的收录排名，请根据专题内容，将其更改为能够体现专题关注点的热门关键词或相关长尾关键词。\n搜索引擎优化（SEO）详细指南请参考（使用公司邮箱账号密码登陆）：\nhttps://bbs.ws.netease.com/viewthread.php?tid=562')){
                return false;
            }
        }
        if(seoCheckResult == 3){
            if(!confirm('专题代码中，检测到图片<img>标签内alt属性为空，不利于专题在搜索引擎的收录排名，请按如下示例修改：\n<img src="图片地址" alt="专题名:图片名称(或描述)" />\n搜索引擎优化（SEO）详细指南请参考（使用公司邮箱账号密码登陆）：\nhttps://bbs.ws.netease.com/viewthread.php?tid=562')){
                return false;
            }
        }
	}
    bodyArea.attr('readOnly', 'true');
	$('#Submit').attr('disabled', true);
	$('#fabudeal').css('display', 'none');
	return true;
}
function seoCheck(html){
    var titleReg = /<title>(.*?)<\/title>/ig,
        keywordReg = /<meta\s+name="keywords"\s+content="(.*?)"\s*\/?\s*>/ig,
        imgReg = /<img.[^>]*alt="(.*?)"/ig,
        result;
    if((result = titleReg.exec(html)) && (result[1] == '网易专题' || result[1] == '')){
        return 1;
    }
    if((result = keywordReg.exec(html)) && (result[1] == '网易专题' || result[1] == '')){
        return 2;
    }
    if((result = imgReg.exec(html)) && result[1] == ''){
        return 3;
    }
    return 0;
}
function preview_model(){
	var needCheck = $("#needcheck");
	
	$("#modelid_pre").val(channelid + modelidInput.val());
	$("#modelname_pre").val($("#modelname").val());
	$("#body_pre").val(bodyArea.val());
	$("#digest_pre").val($("#digest").val());
	$("#split_pre").val($("#split").val());
	$("#postId_pre").val($("#postId").val());
	$("#extname_pre").val($("#extname").val());
	if(hasComment.length > 0){
		$("#hascomment_pre").val(hasComment.val());
	}
	if(needCheck.length > 0){
		$("#needcheck_pre").val(needCheck.val());
	}
	
	if($("#modelid_pre").val() != "" && $("#modelname_pre").val() != "" && $("#body_pre").val() != ""){
	    if(previewInput.val() != ''){
	        dialog.unbindSubmit();
	        dialog.setTitle('预览选择');
            dialog.setContent('<div id="loading"></div><iframe border="0" frameborder="0" width="100%" height="0" name="previewTarget"></iframe>');
            previewForm.attr('target','previewTarget');
            previewForm.submit();
            dialog.open();
            previewForm.attr('target','_blank');
	    } else {
            previewForm.submit();
        }
	}else{
		alert("参数错误");
	}
}
function hideLoading(){
    $('#loading').hide();
    dialog.body.find('iframe').css('height','400px');
}
window.onload = function(){
    bodyArea.val($("#body_swap").val());
    bodyArea.attr('disabled', false);
	controlCreateOrEditModelAndPublishModel();
}
function controlCreateOrEditModelAndPublishModel(){
	var createOrEditModelAllowed=isCreateOrEditModelAllowed(),
	    publishModelAllowed=isPublishModelAllowed(),
	    submitBtn = $('#Submit'),
        fabudealBtn = $('#fabudeal');

    if(!createOrEditModelAllowed) {
        submitBtn.attr('disabled', true);
        fabudealBtn.attr('disabled', true);
    } else {
        submitBtn.attr('disabled', false);
    	 if(publishModelAllowed) {
            fabudealBtn.attr('disabled', false);
    	 } else {
            fabudealBtn.attr('disabled', false);
    	 }
    }
}
function isCreateOrEditModelAllowed(){
	
        return true;
    
}
function isPublishModelAllowed(){
	 
	 return true;
	 
}

function strLen(str){
    return str.replace(/[^\x00-\xff]/g,"aa").length;
}
function delTpl(obj){
    obj.parentNode.parentNode.parentNode.removeChild(obj.parentNode.parentNode);
}
function addNewRow(tplName, tplText, isinit){
    var newRow = $('#tpl-list')[0].insertRow(-1),newRowInputs;
    newRow.insertCell(-1);
    newRow.cells[0].innerHTML = '<input type="text" class="tpl-name" value="' + tplName + '"/>';
    newRow.insertCell(-1);
    newRow.cells[1].innerHTML = '<input type="text" class="tpl-text" value="' + tplText + '"/>';
    newRow.insertCell(-1);
    newRow.cells[2].innerHTML = '<a class="del" href="javascript:;" onclick="delTpl(this)">删除</a>';
    newRowInputs = $(newRow).find('input');
    !isinit && (newRow.cells[2].style.display = 'none');
    newRowInputs.bind('input', inputEvent).bind('propertychange', inputEvent);
}
function inputEvent(e){
    var input = this,
    inputRow = input.parentNode.parentNode,
    inputTable = inputRow.parentNode,
    nextRow,nextRowInputs;

    if(inputTable.rows[inputRow.rowIndex + 1] || input.value===''){
        return true;
    }else if(inputTable.rows.length >= 51){
        inputRow.cells[2].style.display = '';
        return true;
    }else{
        addNewRow('', '');
        inputRow.cells[2].style.display = '';
    }
}
function loadPreviewDataComplete(data, status){
    var nameArray = [],
    previewData = data;
    dialog.setContent('<div class="wrap"><table id="tpl-list" cellpadding="0" cellspacing="8"><tr><th width="25%">模板备注</th><th width="60%">上级模板地址</th><th width="10%">操作</th></tr></table></div>');
    for(var i=0;i<previewData.length;i++){
        addNewRow(previewData[i].name, previewData[i].addr, true);
        nameArray.push(previewData[i].name);
    }
    previewInput.val(nameArray.join(','));
    addNewRow('', '');
}
function loadPreviewData(async){
    if(modelid){
        $.ajax({
            async: async,
            url: '/servlet/model.jsp?method=getModelPro&modelid=' + modelid,
            type: 'POST',
            dataType: 'json',
            contentType: 'application/x-www-form-urlencoded',
            success: loadPreviewDataComplete,
            error: function(xhr, status, e){
                alert(xhr.responseText);
            }
        });
    } else {
        loadPreviewDataComplete([]);
    }
}
function savePreviewData(){
    if($.trim(modelidInput.val()) == ''){
        alert('请先填写英文名');
        return false;
    } else {
        modelid = channelid + $.trim(modelidInput.val());
    }
    var contentArray = [],nameArray = [],
        tplNames = $('#tpl-list input.tpl-name'),
        tplTexts = $('#tpl-list input.tpl-text'),
        tplName, tplText, canSave = true;

    $.each(tplNames, function(index, obj){
        tplName = $.trim(obj.value),
        tplText = $.trim(tplTexts.eq(index).val());

        if(tplName != '' && tplText != ''){
            if($.inArray(tplName, nameArray) != -1){
                obj.style.borderColor = '#ff0000';
                alert('模板备注有重复');
                setTimeout(function(){
                    obj.style.borderColor = '#7F9DB9';
                },2000);
                canSave = false;
                return false;
            }else{
                nameArray.push(tplName);
            }

            if(!/^([^\x00-\xff]|\w|-)+$/ig.test(tplName) || strLen(tplName) > 60){
                obj.style.borderColor = '#ff0000';
                alert('模板备注只能为中文/英文/数字/下划线/-，长度不能超过60个字符');
                setTimeout(function(){
                    obj.style.borderColor = '#7F9DB9';
                },2000);
                canSave = false;
                return false;
            }
            if(!/.*\/$/.test(tplText) && (/163\.com$/.test(tplText) || tplText.substring(tplText.lastIndexOf('/')).lastIndexOf('.') == -1)){
                tplText += '/';
            }
            contentArray[index] = {'name': tplName, 'addr': tplText};
        }
    });

    canSave && $.ajax({
        url: '/servlet/model.jsp?method=saveModelPro',
        type: 'POST',
        dataType: 'text',
        contentType: 'application/x-www-form-urlencoded',
        data: {
            'modelid': modelid,
            'proinfo': contentArray.length ? JSON.stringify(contentArray) : ''
        },
        success: function(){
            previewInput.val(nameArray.join(','));
            dialog.close();
        },
        error: function(){
            alert('保存失败，请联系相关技术人员');
        }
    });
}
$('#preview-set-btn').click(function(){
    loadPreviewData(false);
    dialog.bindSubmit(savePreviewData);
    dialog.setTitle('嵌套预览配置');
    dialog.open();
});
loadPreviewData(true);
</script>
</body>
</html>