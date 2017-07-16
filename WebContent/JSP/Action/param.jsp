<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/JSP/Action/include.jsp">
		<jsp:param name="parm1" value="hello" />
		<jsp:param name="parm2" value="giraffe tree" />
	</jsp:include>
	<%-- 	<jsp:forward page="include.jsp"/> --%>
</body>
</html>