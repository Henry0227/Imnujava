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
    
    <title>My JSP 'progenitor.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	 <meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript">
   function check(){
        var name=document.getElementById("penname");
        var pass=document.getElementById("info");
        var code=document.getElementById("email");
        if(name.value==""){
            alert("笔名不能为空！");
            name.focus();
            return false;
        }
        if(pass.value==""){
            alert("个人简介不能为空！");
            pass.focus();
            return false;
        }
        if(code.value==""){
            alert("请输入邮箱地址！");
            code.focus();
            return false;
        }
        return true;
   }

</script>

  </head>
  
  <body>
  <s:form action="progenitor2!register" enctype="multipart/form-data" theme="simple">
  <table width="631" height="643" border="1">
    <tr>
      <td colspan="3" align="center">注册成为原创作者</td>
    </tr>
    <tr>
      <td width="95">笔名：</td>
      <td colspan="2"><s:textfield name="progenitor.penname" id="penname"></s:textfield></td>
    </tr>
    <tr>
      <td>性别：</td>
      <td colspan="2"><s:radio list="#{0:'男',1:'女'}" name="progenitor.sex" listKey="key"
								listValue="value" value="0" labelposition="left" ></s:radio></td>
    </tr>
    <tr>
      <td height="158">照片：</td>
        <s:hidden name="pic" value="image/default.jpg"></s:hidden>
      <td width="117"><img src="image/default.jpg" width="90" height="130"/></td>
      <td width="397"><s:file name="file"  cssStyle="width:160px;" width="36px"
								height="70px" /></td>
    </tr>
    <tr>
      <td height="167">个人简介：</td>
      <td colspan="2"><s:textarea name="progenitor.personInfo" cols="40" rows="5" id="info"></s:textarea></td>
    </tr>
    <tr>
      <td>个人公告：</td>
      <td colspan="2"><s:textarea name="progenitor.sayshow" cols="40" rows="5"></s:textarea></td>
    </tr>
    <tr>
      <td>电话：</td>
      <td colspan="2"><s:textfield name="progenitor.phone"></s:textfield></td>
    </tr>
    <tr>
      <td>邮箱地址：</td>
      <td colspan="2"><s:textfield name="progenitor.email" id="email"></s:textfield></td>
    </tr>
    <tr>
      <td>QQ：</td>
      <td colspan="2"><s:textfield name="progenitor.qq"></s:textfield></td>
    </tr>
    <tr>
      <td>地址：</td>
      <td colspan="2"><s:textfield name="progenitor.address"></s:textfield></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td colspan="2"><s:submit value="提交注册" onclick="return check()"></s:submit> <s:reset value="取消"></s:reset></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td colspan="2">&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td colspan="2">&nbsp;</td>
    </tr>
  </table>
  </s:form>
  </body>
</html>
