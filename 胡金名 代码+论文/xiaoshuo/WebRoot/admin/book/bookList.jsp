<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="gbk"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'bookList.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	 <meta http-equiv="description" content="This is my page">
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.tabfont01 {	
	font-family: "宋体";
	font-size: 9px;
	color: #555555;
	text-decoration: none;
	text-align: center;
}
.font051 {font-family: "宋体";
	font-size: 12px;
	color: #333333;
	text-decoration: none;
	line-height: 20px;
}
.font201 {font-family: "宋体";
	font-size: 12px;
	color: #FF0000;
	text-decoration: none;
}
.button {
	font-family: "宋体";
	font-size: 14px;
	height: 37px;
}
html { overflow-x: auto; overflow-y: auto; border:0;} 
-->
</style>

<link href="admin/css/css.css" rel="stylesheet" type="text/css" />
<link href="admin/css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="admin/js/xiangmu.js"></script>
</head>
<SCRIPT language=JavaScript>
function sousuo(){
	window.open("gaojisousuo.htm","","depended=0,alwaysRaised=1,width=800,height=510,location=0,menubar=0,resizable=0,scrollbars=0,status=0,toolbar=0");
}
function selectAll(){
	var obj = document.fom.elements;
	for (var i=0;i<obj.length;i++){
		if (obj[i].name == "delid"){
			obj[i].checked = true;
		}
	}
}

function unselectAll(){
	var obj = document.fom.elements;
	for (var i=0;i<obj.length;i++){
		if (obj[i].name == "delid"){
			if (obj[i].checked==true) obj[i].checked = false;
			else obj[i].checked = true;
		}
	}
}

function link(){
    document.getElementById("fom").action="xiangmu.htm";
   document.getElementById("fom").submit();
}

function on_load(){
	var loadingmsg=document.getElementById("loadingmsg");
	var mainpage=document.getElementById("mainpage");
	loadingmsg.style.display="";
	mainpage.style.display="none";
	
	loadingmsg.style.display="none";
	mainpage.style.display="";
}
</SCRIPT>

<body onload="on_load()">
<table id="mainpage" width="100%" border="0" cellspacing="0" cellpadding="0">

  <tr>
    <td height="30"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="62" background="admin/images/nav04.gif">
          <s:form action="book!search" theme="simple">
		   <table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
		   
		  <tr>
			<td width="21"><img src="admin/images/ico07.gif" width="20" height="18" /></td>
			<td width="550">按书名：<s:textfield name="condition"></s:textfield>
			 <s:submit value="搜索"></s:submit></td>
			 <td width="132" align="left">&nbsp;</td>	
		  </tr>
        </table>
        </s:form>
        </td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><table id="subtree1" style="DISPLAY: " width="100%" border="0" cellspacing="0" cellpadding="0">

        <tr>
          <td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">

          	 <tr>
               <td height="20"><span class="newfont07">选择：<a href="#" class="right-font08" onclick="selectAll();">全选</a>-<a href="#" class="right-font08" onclick="unselectAll();">反选</a></span>
	              <input name="Submit" type="button" class="right-button08" value="删除所选项目信息" />
	              <input name="Submit2" type="button" class="right-button08" value="添加项目" onclick="link();"/></td>
          	 </tr>
              <tr>
                <td height="40" class="font42"><table width="100%" border="0" cellpadding="4" cellspacing="1" bgcolor="#464646" class="newfont03">

					                  <tr>
                    <td height="20" colspan="13" align="center" bgcolor="#EEEEEE"class="tablestyle_title"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 书籍信息列表 &nbsp;</td>
                    </tr>
                  <tr>
				    <td width="6%" align="center" bgcolor="#EEEEEE">选择</td>
                    <td width="11%" height="20" align="center" bgcolor="#EEEEEE">书名</td>
                    <td width="7%" align="center" bgcolor="#EEEEEE">作者</td>
                    <td width="7%" align="center" bgcolor="#EEEEEE">类型</td>
                    <td width="12%" align="center" bgcolor="#EEEEEE">出版社</td>
                    <td width="7%" align="center" bgcolor="#EEEEEE">是否是VIP</td>
                    <td width="8%" align="center" bgcolor="#EEEEEE">是否是原创</td>
                    <td width="19%" align="center" bgcolor="#EEEEEE">书评</td>
                    <td width="5%" align="center" bgcolor="#EEEEEE">编号</td>
                    <td width="18%" align="center" bgcolor="#EEEEEE">操作</td>
                  </tr>
                  <s:iterator value="booklist" status="st">
                  <tr align="center">
				   <td bgcolor="#FFFFFF"><input type="checkbox" name="delid"/></td>
                    <td height="20" bgcolor="#FFFFFF"><s:property value="title"/></td>
                    <td bgcolor="#FFFFFF"><s:property value="type"/></td>
                    <td bgcolor="#FFFFFF"><s:property value="author"/></td>
                    <td bgcolor="#FFFFFF"><s:property value="publisher"/></td>
                    <td bgcolor="#FFFFFF"><s:property value="vip==0?'否':'是'"/></td>
                    <td bgcolor="#FFFFFF"><s:property value="progenitor==0?'否':'是'"/></td>
                    <td bgcolor="#FFFFFF"><s:property value="sayshow"/></td>
                    <td bgcolor="#FFFFFF"><s:property value="id"/></td>
                    
                    <td bgcolor="#FFFFFF"><a href="book!deleteBook?admin.id=<s:property value="id"/>">删除</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="article!findAllByBookId?bookid=<s:property value="id"/>&bookname=<s:property value="title"/>">查看章节并审核</a></td>
                  </tr>  
                  </s:iterator>
                </table></td>
              </tr>
            </table></td>
        </tr>
      </table>
      <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td height="6"><img src="admin/images/spacer.gif" width="1" height="1" /></td>
        </tr>
        <tr>
          <td height="33"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" class="right-font08">
              <tr>
                <td width="50%">共 <span class="right-text09"><s:property value="allpage"/></span> 页 | 第 <span class="right-text09"><s:property value="pageNum"/></span> 页</td>
                <td width="49%" align="right">[<a href="book!findAll?pageSize=10&pageNum=1" class="right-font08">首页</a> | <a href="book!findUp?pageSize=<s:property value="pageSize"/>&pageNum=<s:property value="pageNum"/>" class="right-font08">上一页</a> | <a href="book!findDown?pageSize=<s:property value="pageSize"/>&pageNum=<s:property value="pageNum"/>" class="right-font08">下一页</a> | <a href="book!findUp?pageSize=<s:property value="pageSize"/>&pageNum=<s:property value="allpage"/>" class="right-font08">末页</a>] </td>
                <td width="1%"><table width="20" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="1%"></td>
                      <td width="87%">
                      </td>
                    </tr>
                </table></td>
              </tr>
          </table></td>
        </tr>
      </table></td>
  </tr>
</table>

<div id="loadingmsg" style="width:100px; height:18px; top:0px; display:none;">
	<img src="images/loadon.gif" />
</div>

</body>
</html>
