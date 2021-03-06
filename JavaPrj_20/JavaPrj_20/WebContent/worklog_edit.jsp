<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@ taglib uri="http://struts.apache.org/tags-nested" prefix="nested"%>
<html:html locale = "true"/> 
<%String path = request.getContextPath();
			String basePath = request.getScheme() + "://"
					+ request.getServerName() + ":" + request.getServerPort()
					+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title><bean:message key="worklog_edit.page.title" /></title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" type="text/css" href="styles.css">
</head>

<body>
<TABLE width="100%" class="position">
	<TR>
		<TD><bean:message key="worklog_edit.page.position" /></TD>
		<TD align="right"><a href="worklog.do?method=back"><bean:message
			key="worklog_edit.page.back" /></a></TD>
		<TD width="20"></TD>
	</TR>
</TABLE>
<form name="form1" action="worklog_edit.do?method=update" method="post">
<b><html:errors property="org.apache.struts.action.GLOBAL_MESSAGE" /></b>

<logic:present name="worklogFormBean">
	<html:hidden property="id" name="worklogFormBean"/>
</logic:present>
<logic:notPresent name="worklogFormBean">
	<input type="hidden" name="id">
</logic:notPresent>
		
<TABLE border="0" width="100%">
	<TR>
		<TD><bean:message key="worklog.page.year" /></TD>
		<TD><logic:present name="worklogFormBean">
			<html:text property="year" name="worklogFormBean" maxlength="4"/>
		</logic:present> <logic:notPresent name="worklogFormBean">
			<input type="text" name="year" maxlength="4">
		</logic:notPresent> <html:errors property="year" /></TD>
	</TR>
	<TR>
		<TD><bean:message key="worklog.page.month" /></TD>
		<TD><logic:present name="worklogFormBean">
			<html:text property="month" name="worklogFormBean" maxlength="2"/>
		</logic:present> <logic:notPresent name="worklogFormBean">
			<input type="text" name="month" maxlength="2">
		</logic:notPresent> <html:errors property="month" /></TD>
	</TR>
	<TR>
		<TD><bean:message key="worklog.page.day" /></TD>
		<TD><logic:present name="worklogFormBean">
			<html:text property="day" name="worklogFormBean" maxlength="2"/>
		</logic:present> <logic:notPresent name="worklogFormBean">
			<input type="text" name="day" maxlength="2">
		</logic:notPresent> <html:errors property="day" /></TD>
	</TR>
	<TR>
		<TD><bean:message key="worklog.page.title" /></TD>
		<TD><logic:present name="worklogFormBean">
			<html:text property="title" name="worklogFormBean" maxlength="100"/>
		</logic:present> <logic:notPresent name="worklogFormBean">
			<input type="text" name="title" maxlength="100">
		</logic:notPresent> <html:errors property="title" /></TD>
	</TR>
	<TR>
		<TD><bean:message key="worklog.page.description" /></TD>
		<TD><textarea name="description" cols="60" rows="15"><logic:present name="worklogFormBean"><bean:write property="description" name="worklogFormBean" /></logic:present></textarea>  <html:errors property="description" /></TD>
	</TR>
	<TR>
		<TD colspan="2"><input type="submit"
			value="<bean:message key='button.submit' />"></TD>
	</TR>
</TABLE>
</form>
</body>
</html>
