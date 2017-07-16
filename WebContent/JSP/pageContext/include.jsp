<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>
<title>使用pageContext的include方法引入资源</title>
</head>
<%
	pageContext.include("/JSP/Part/head.jspf");
%>
使用pageContext的include方法引入资源
<%
	pageContext.include("/JSP/Part/end.jspf");
%>
<hr />

<%--使用include标签引入引入其它JSP页面--%>
<%@include file="/JSP/Part/head.jspf"%>
<h1>网页主体内容</h1>
<%@include file="/JSP/Part/end.jspf"%>

<%--
<jsp:include page="/jspfragments/head.jsp"/>
使用jsp:include标签引入资源
<jsp:include page="/jspfragments/foot.jsp"/>
--%>