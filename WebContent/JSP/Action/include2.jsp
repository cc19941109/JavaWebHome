<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>include</title>
</head>
<body>
	<%
		int i = 11;
	%>
	<h1>
		include2.jsp中i的值为：<%=i%>
	</h1>
	<!-- Duplicate local variable i 指令 会提示重复定义-->
	<%-- 	<%@include file="/JSP/Action/include.jsp"%>--%>
	//在 include标签中，定义的是两个不同的变量  动态包含
	<jsp:include page="/JSP/Action/include.jsp" />
	<hr/>
	<%@include file  = "/JSP/Part/head.jspf" %>
	<hr/>
	<jsp:include page="/JSP/Part/head.jspf"/>
</body>
</html>