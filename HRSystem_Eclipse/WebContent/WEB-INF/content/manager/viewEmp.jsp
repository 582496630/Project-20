<%--
网站: <a href="http://www.crazyit.org">疯狂Java联盟</a>
author  yeeku.H.lee kongyeeku@163.com
version  1.0
Copyright (C), 2001-2012, yeeku.H.Lee
This program is protected by copyright laws.
Program Name:
Date: 
--%>

<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
   <title>查看本部门全部员工</title>
</head>
<body>
<%@include file="../header.jsp"%>
<%@include file="mgrheader.jsp"%>
<table width="960" align="center"
	background="${pageContext.request.contextPath}/images/bodybg.jpg">
<tr>
<td>
<br>
<s:form action="delete.action" method="post" name="ids" > 
<table width="80%" border="0" align="center" 
	cellspacing="1" bgcolor="#cccccc">
  <tr bgcolor="#e1e1e1" >
	<td colspan="6" ><div class="mytitle">您正在查看部门的全部员工</div></td> 
  </tr>
  <tr class="pt11" height="45">
	<td><b>员工名</b></td>
	<td><b>密码</b></td>
	<td><b>工资</b></td>
		<td><b>年龄</b></td>
	<td><b>职位</b></td>
	<td><s:submit value="删除" theme="simple"/></td>
  </tr>
<s:iterator value="emps" status="index">  
 	<s:if test="#index.odd == true"> 
		 <tr style="background-color:#dddddd" class="pt11" height="32">
	</s:if> 
	<s:else> 
		 <tr class="pt11" height="32">
 </s:else>
	
	
	<td><s:property value="empName"/></td>
	<td><s:property value="empPass"/></td>
	<td><s:property value="amount"/></td>
		<td><s:property value="empAge"/></td>
	<td><s:property value="empPosition"/></td> 
	<td><input type="checkbox"  name="ids" value="<s:property value="empID"/>" /></td>
	
	
	<%-- <td colspan="2"><s:checkboxlist name ="emps" list="empName"  ></s:checkboxlist> 
	</td>--%>
  </tr>
   
</s:iterator>  
</table>
</td>
</tr>
</table>
</s:form>
<%@include file="../footer.jsp"%>
</body>
</html>