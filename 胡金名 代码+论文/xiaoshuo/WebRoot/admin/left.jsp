<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8" pageEncoding="gbk"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>С˵�Ķ���Ŀ����ϵͳ</title>

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
	background-image: url(admin/images/left.gif);
}
-->
</style>
		<link href="admin/css/css.css" rel="stylesheet" type="text/css" />
	</head>
	<SCRIPT language=JavaScript>
function tupian(idt){
    var nametu="xiaotu"+idt;
    var tp = document.getElementById(nametu);
    tp.src="../images/ico05.gif";//ͼƬico04Ϊ��ɫ��������
	
	for(var i=1;i<30;i++)
	{
	  
	  var nametu2="xiaotu"+i;
	  if(i!=idt*1)
	  {
	    var tp2=document.getElementById('xiaotu'+i);
		if(tp2!=undefined)
	    {tp2.src="admin/images/ico06.gif";}//ͼƬico06Ϊ��ɫ��������
	  }
	}
}

function list(idstr){
	var name1="subtree"+idstr;
	var name2="img"+idstr;
	var objectobj=document.all(name1);
	var imgobj=document.all(name2);
	
	
	//alert(imgobj);
	
	if(objectobj.style.display=="none"){
		for(i=1;i<10;i++){
			var name3="img"+i;
			var name="subtree"+i;
			var o=document.all(name);
			if(o!=undefined){
				o.style.display="none";
				var image=document.all(name3);
				//alert(image);
				image.src="admin/images/ico04.gif";
			}
		}
		objectobj.style.display="";
		imgobj.src="admin/images/ico03.gif";
	}
	else{
		objectobj.style.display="none";
		imgobj.src="admin/images/ico04.gif";
	}
}

</SCRIPT>

	<body>
		<table width="198" border="0" cellpadding="0" cellspacing="0"
			class="left-table01">
			<tr>
				<TD>
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td width="207" height="55" background="admin/images/nav01.gif">
								<table width="90%" border="0" align="center" cellpadding="0"
									cellspacing="0">
									<tr>
										<td width="25%" rowspan="2">
											<img src="admin/images/ico02.gif" width="35" height="35" />
										</td>
										<td width="75%" height="22" class="left-font01">
											���ã�
											<span class="left-font02"><s:property value="%{#session.ADMIN.name}"/></span>
										</td>
									</tr>
									<tr>
										<td height="22" class="left-font01">
											[&nbsp;
											<a href="admin!exit" target="_top" class="left-font01">�˳�</a>&nbsp;]
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>



					<!--  ����ϵͳ��ʼ    -->
					<TABLE width="100%" border="0" cellpadding="0" cellspacing="0"
						class="left-table03">
						<tr>
							<td height="29">
								<table width="85%" border="0" align="center" cellpadding="0"
									cellspacing="0">
									<tr>
										<td width="8%">
											<img name="img8" id="img8" src="admin/images/ico04.gif"
												width="8" height="11" />
										</td>
										<td width="92%">
											<a href="javascript:" target="mainFrame" class="left-font03"
												onClick="list('8');">�û�����</a>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</TABLE>
					<table id="subtree8" style="DISPLAY: none" width="80%" border="0"
						align="center" cellpadding="0" cellspacing="0"
						class="left-table02">
						<tr>
							<td width="9%" height="20">
								<img id="xiaotu20" src="admin/images/ico06.gif" width="8"
									height="12" />
							</td>
							<td width="91%">
								<a href="user!showAll?condition=null&type=null&pageSize=10&pageNum=1" target="mainFrame" class="left-font03"
									onClick="tupian('20');">�鿴�����û�</a>
							</td>
						</tr>
			
						<tr>
							<td width="9%" height="21">
								<img id="xiaotu21" src="admin/images/ico06.gif" width="8"
									height="12" />
							</td>
							<td width="91%">
								<a href="user!showAll?condition=null&type=vip&pageSize=10&pageNum=1" target="mainFrame" class="left-font03"
									onClick="tupian('21');">�鿴VIP�û�</a>
							</td>
						</tr>
						<tr>
							<td width="9%" height="21">
								<img id="xiaotu21" src="admin/images/ico06.gif" width="8"
									height="12" />
							</td>
							<td width="91%">
								<a href="user!showAll?condition=null&type=pro&pageSize=10&pageNum=1" target="mainFrame" class="left-font03"
									onClick="tupian('21');">�鿴ԭ������</a>
							</td>
						</tr>
					
					</table>
					<!--  ����ϵͳ����    -->



					<!--  ��Ϣϵͳ��ʼ    -->
					<TABLE width="100%" border="0" cellpadding="0" cellspacing="0"
						class="left-table03">
						<tr>
							<td height="29">
								<table width="85%" border="0" align="center" cellpadding="0"
									cellspacing="0">
									<tr>
										<td width="8%">
											<img name="img7" id="img7" src="admin/images/ico04.gif"
												width="8" height="11" />
										</td>
										<td width="92%">
											<a href="javascript:" target="mainFrame" class="left-font03"
												onClick="list('7');">��������</a>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</TABLE>
					<table id="subtree7" style="DISPLAY: none" width="80%" border="0"
						align="center" cellpadding="0" cellspacing="0"
						class="left-table02">
						
						<tr>
							<td width="9%" height="20">
								<img id="xiaotu18" src="admin/images/ico06.gif" width="8"
									height="12" />
							</td>
							<td width="91%">
								<a href="discuss?condition=null&pageSize=10&pageNum=1" target="mainFrame"
									class="left-font03" onClick="tupian('18');">�鼮����</a>
							</td>
						</tr>
					
					</table>
					<!--  ��Ϣϵͳ����    -->



					<TABLE width="100%" border="0" cellpadding="0" cellspacing="0"
						class="left-table03">
						<tr>
							<td height="29">
								<table width="85%" border="0" align="center" cellpadding="0"
									cellspacing="0">
									<tr>
										<td width="8%">
											<img name="img1" id="img1" src="admin/images/ico04.gif"
												width="8" height="11" />
										</td>
										<td width="92%">
											<a href="javascript:" target="mainFrame" class="left-font03"
												onClick="list('1');">�鼮����</a>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</TABLE>
					<table id="subtree1" style="DISPLAY: none" width="80%" border="0"
						align="center" cellpadding="0" cellspacing="0"
						class="left-table02">
						<tr>
							<td width="9%" height="20">
								<img id="xiaotu1" src="admin/images/ico06.gif" width="8"
									height="12" />
							</td>
							<td width="91%">
								<a href="book!findAll?pageSize=10&pagaNum=1" target="mainFrame"
									class="left-font03" onClick="tupian('1');">�鼮��Ϣ�б�</a>
							</td>
						</tr>
					
					</table>
					<!--  ��Ŀϵͳ����    -->

					<!--  �ͻ�ϵͳ��ʼ    -->
					<table width="100%" border="0" cellpadding="0" cellspacing="0"
						class="left-table03">
						<tr>
							<td height="29">
								<table width="85%" border="0" align="center" cellpadding="0"
									cellspacing="0">
									<tr>
										<td width="8%" height="12">
											<img name="img2" id="img2" src="admin/images/ico04.gif"
												width="8" height="11" />
										</td>
										<td width="92%">
											<a href="javascript:" target="mainFrame" class="left-font03"
												onClick="list('2');">����Ա����</a>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>

					<table id="subtree2" style="DISPLAY: none" width="80%" border="0"
						align="center" cellpadding="0" cellspacing="0"
						class="left-table02">

						<tr>
							<td width="9%" height="20">
								<img id="xiaotu7" src="admin/images/ico06.gif" width="8"
									height="12" />
							</td>
							<td width="91%">
								<a href="admin!findAll?pageSize=10&pageNum=1" target="mainFrame"
									class="left-font03" onClick="tupian('7');">��Ϣ�б�鿴</a>
							</td>
						</tr>
						<tr>
							<td width="9%" height="20">
								<img id="xiaotu7" src="admin/images/ico06.gif" width="8"
									height="12" />
							</td>
							<td width="91%">
								<a href="admin/addAdmin.jsp" target="mainFrame"
									class="left-font03" onClick="tupian('7');" >��ӹ���Ա</a>
							</td>
						</tr>
					</table>

				


				</TD>
			</tr>

		</table>
	</body>
</html>

