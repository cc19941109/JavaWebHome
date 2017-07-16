<%@page contentType="text/html;charset=UTF-8"%>
<%@page import="java.util.*"%>

<%
    //取得设置的属性
    String refName = (String)pageContext.getAttribute("name");  
    //由于取得的值为Object类型，因此必须使用String强制向下转型，转换成String类型
    Date refDate = (Date)pageContext.getAttribute("date");
%>
<h1>姓名：<%=refName%></h1>
<h1>日期：<%=refDate%></h1>

<%
    String refName1 = (String)request.getAttribute("name1");  
    Date refDate1 = (Date)request.getAttribute("date1");
%>
<h1>姓名：<%=refName1%></h1>
<h1>日期：<%=refDate1%></h1>

<%
    String refName2 = (String)session.getAttribute("name2");  
    Date refDate2 = (Date)session.getAttribute("date2");
%>
<h1>姓名：<%=refName2%></h1>
<h1>日期：<%=refDate2%></h1>

<%
    String refName3 = (String)application.getAttribute("name3");
    Date refDate3 = (Date)application.getAttribute("date3");
%>
<h1>姓名：<%=refName3%></h1>
<h1>日期：<%=refDate3%></h1>