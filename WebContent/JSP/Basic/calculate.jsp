<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%!int a = 1;%>
<%!int b = 2;%>
<html>
<head>
<title>hello</title>
</head>

<body>
	<%-- JSP注释，注释内容不会被发送至浏览器甚至不会被编译 --%>
	<!--HTML注释，通过浏览器查看网页源代码时可以看见注释内容%> -->
	<%
		//JAVA中的单行注释

		/*
		    JAVA中的多行注释
		*/
	%>

	<%--JSP自己的注释--%>
	<!--计算两个数字的和-->
	The sum=<%=a + b%><br>
	<%
		out.println("你的 IP 地址 " + request.getRemoteAddr());
		out.println("你好");
	%>
	<p>
		今天的日期是:
		<%=(new java.util.Date()).toLocaleString()%>
	</p>
	<%=new java.util.Date()%>
	<%
		int sum = 0;//声明变量
		/*编写语句*/
		for (int i = 1; i <= 100; i++) {
			sum += i;
		}
		out.println("<br/>Sum=" + sum);
	%>

	<%!static {
		System.out.println("loading Servlet!");
	}

	private int globalVar = 0;

	public void jspInit() {
		System.out.println("initializing jsp!");
	}%>

	<%!public void jspDestroy() {
		System.out.println("destroying jsp!");
	}%>
</body>
</html>

