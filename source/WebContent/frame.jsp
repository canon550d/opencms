<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>头部</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.min.js" ></script>
<style>
#wrapper 
{ 
position:absolute; 
left:0; 
top:0; 
display:none; 
opacity:0; 
z-index:100;
} 
#clickbox{
  overflow:hidden;
  cursor:pointer;
  width:8px;
  height:10px;
  background:url(/images/cmsfavor.png) -161px -37px;
}
#clickbox.right{
  background-position:-169px -37px;
}
#resizeBox{
  background-color:#99CC99;
}
</style>
</head>
<body style="MARGIN: 0px" scroll=no>
  <div id="wrapper"></div>
  <table width="100%" height="100%" cellspacing="0" cellpadding="0" border="0">
    <tr>
      <td id="frmTitle" valign="center"  align="center">
        <!-- /menu.jsp/ -->
        <iframe id="left" scrolling="no" frameborder="0" src="directory/home.do?id=1" name="left" style="Z-INDEX: 2; WIDTH: 205; HEIGHT: 100%;"></iframe>
      </td>
      <td id="resizeBox" style="cursor:e-resize;">
        <div id="clickbox"></div>
      </td>
      <td style="WIDTH: 100%">
        <!-- /main.jsp/ -->
        <iframe id="main" scrolling="yes" frameborder="0" src="directory/list.do?id=1" name="main" style="Z-INDEX: 1; VISIBILITY: inherit; WIDTH: 100%; HEIGHT: 100%;"></iframe>
      </td>
    </tr>
  </table>
<script>
var widths=[186,0];
var iw=1;
var leftFrame = $('#left');
var resize = $('#resizeBox');
var clickbox = $('#clickbox');
var wrapper = $('#wrapper');
var swidth;
var sheight;
clickbox.click(function() {
  if(clickbox.hasClass('right'))
    clickbox.removeClass('right');
  else
    clickbox.addClass('right');
  leftFrame.width(widths[iw]);
  iw++;
  if(iw>=widths.length) iw=0;
});
function captureMouseMove(e){
      if(wrapper.css('display')=='none')
      {
        wrapper.width(swidth);
        wrapper.height(sheight);
        wrapper.show();
      }
      var event= window.event ||e;
      var w=event.clientX-6;
      if(w<0) w=0;
      else if(w>=document.body.clientWidth)w=document.body.clientWidth;
      leftFrame.width(w);
}
function releaseMouseMove(){
  if(resizeBox.setCapture)
  {
    resizeBox.releaseCapture();
    resize.unbind('mousemove');
    resize.unbind('mouseup');
  }
  else
  {
    wrapper.hide();
    $(document).unbind('mousemove');
    $(document).unbind('mouseup');
  }
}
function startResize(){
  if(resizeBox.setCapture)
  {
    resizeBox.setCapture();
    resize.mousemove(captureMouseMove);
    resize.mouseup(releaseMouseMove);
  }
  else
  {
    //wrapper.show();
    swidth = document.body.clientWidth;
    sheight = document.body.clientHeight;
    
    $(document).mousemove(captureMouseMove)
    $(document).mouseup(releaseMouseMove)
  }
  
}
resize.mousedown(startResize);
</script>
</body>
</html>