<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Include Tag Test</title>
</head>
<body>
	<%--使用include标签引入引入其它JSP页面--%>
	<%@include file="/JSP/Part/head.jspf"%>
	<h1>网页主体内容</h1>
	<%@include file="/JSP/Part/end.jspf"%>
</body>
</html>