<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="gbk"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="/struts-dojo-tags" prefix="sx"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
	 <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript">
	   function check(){
        var name=document.getElementById("name");
        var pass=document.getElementById("pass");
        var birth=document.getElementById("birth");
        var email=document.getElementById("email");
        if(name.value==""){
            alert("�û�������Ϊ�գ�");
            name.focus();
            return false;
        }
        if(pass.value==""){
            alert("���벻��Ϊ�գ�");
            pass.focus();
            return false;
        }
        if(birth.value==""){
            alert("��ѡ��������£�");
            birth.focus();
            return false;
        }
        
         if(email.value==""){
            alert("�����������ַ��");
            email.focus();
            return false;
        }
        return true;
   }

</script>

  <sx:head />

  
  <body >
  <br>
  <s:form action="user!register" theme="simple">
  <table width="340" border="1">
    <tr>
      <td colspan="2" align="center">�û�ע��</td>
    </tr>
    <tr>
      <td width="143">�û�����</td>
      <td width="181"><s:textfield name="user.username" id="name"></s:textfield></td>
    </tr>
    <tr>
      <td>�� �룺</td>
      <td><s:password name="user.password" id="pass"></s:password></td>
    </tr>
    <tr>
      <td>�Ա�</td>
      <td><s:radio list="#{0:'��',1:'Ů'}" name="user.sex" listKey="key"
								listValue="value" value="0" labelposition="left" ></s:radio></td>
    </tr>
    <tr>
      <td>�������£�</td>
      <td><sx:datetimepicker staticDisplay="����������" startDate="1960-00-01" name="user.birth"  displayFormat="yyyy-MM-dd"
								toggleType="fade" id="birth" ></sx:datetimepicker></td>
    </tr>
    <tr>
      <td>�����ַ��</td>
      <td><s:textfield name="user.email" id="email"></s:textfield></td>
    </tr>
    <tr>
      <td width="143">��ΪVIP��Ա����
      <s:radio list="#{0:'��',1:'��'}" name="vip" listKey="key"
								listValue="value" value="0" labelposition="left" ></s:radio></td>
      <td width="181">
      10Ԫ</td>
    </tr>
    <tr>
      <td colspan="2"><s:submit value="ȷ��" onclick="return check()"/><s:reset value="����"></s:reset></td>
    </tr>
  </table>
  </s:form>
</body>
</html>
