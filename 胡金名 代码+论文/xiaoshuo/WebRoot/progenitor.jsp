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
            alert("��������Ϊ�գ�");
            name.focus();
            return false;
        }
        if(pass.value==""){
            alert("���˼�鲻��Ϊ�գ�");
            pass.focus();
            return false;
        }
        if(code.value==""){
            alert("�����������ַ��");
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
      <td colspan="3" align="center">ע���Ϊԭ������</td>
    </tr>
    <tr>
      <td width="95">������</td>
      <td colspan="2"><s:textfield name="progenitor.penname" id="penname"></s:textfield></td>
    </tr>
    <tr>
      <td>�Ա�</td>
      <td colspan="2"><s:radio list="#{0:'��',1:'Ů'}" name="progenitor.sex" listKey="key"
								listValue="value" value="0" labelposition="left" ></s:radio></td>
    </tr>
    <tr>
      <td height="158">��Ƭ��</td>
        <s:hidden name="pic" value="image/default.jpg"></s:hidden>
      <td width="117"><img src="image/default.jpg" width="90" height="130"/></td>
      <td width="397"><s:file name="file"  cssStyle="width:160px;" width="36px"
								height="70px" /></td>
    </tr>
    <tr>
      <td height="167">���˼�飺</td>
      <td colspan="2"><s:textarea name="progenitor.personInfo" cols="40" rows="5" id="info"></s:textarea></td>
    </tr>
    <tr>
      <td>���˹��棺</td>
      <td colspan="2"><s:textarea name="progenitor.sayshow" cols="40" rows="5"></s:textarea></td>
    </tr>
    <tr>
      <td>�绰��</td>
      <td colspan="2"><s:textfield name="progenitor.phone"></s:textfield></td>
    </tr>
    <tr>
      <td>�����ַ��</td>
      <td colspan="2"><s:textfield name="progenitor.email" id="email"></s:textfield></td>
    </tr>
    <tr>
      <td>QQ��</td>
      <td colspan="2"><s:textfield name="progenitor.qq"></s:textfield></td>
    </tr>
    <tr>
      <td>��ַ��</td>
      <td colspan="2"><s:textfield name="progenitor.address"></s:textfield></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td colspan="2"><s:submit value="�ύע��" onclick="return check()"></s:submit> <s:reset value="ȡ��"></s:reset></td>
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
