<%@page contentType="text/html;charset=UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<head>
    <title>pageContext访问其它域</title>
</head>
<%
    //此时相当于往session对象中存放了一个name属性，等价于 session.setAttribute("name","孤傲苍狼");
    pageContext.setAttribute("name","giraffe tree",PageContext.SESSION_SCOPE);
    pageContext.setAttribute("name1","长脖子树",PageContext.REQUEST_SCOPE);
	
%>
<%
    //取得session对象的属性，使用pageContext对象获取
    String refName1 = (String)pageContext.getAttribute("name",PageContext.SESSION_SCOPE);  
    //由于取得的值为Object类型，因此必须使用String强制向下转型，转换成String类型
     String refName2 = (String)session.getAttribute("name");
    
    String name1Request = (String)request.getAttribute("name1");
    String name2Request = (String)session.getAttribute("name1");
    String name3Request = (String)pageContext.getAttribute("name1");
    String name4Request = (String)application.getAttribute("name1");

    String n1 = (String)pageContext.getRequest().getAttribute("name1");
    
    String name1 = (String)request.getAttribute("name");
    String name2 = (String)session.getAttribute("name");
    String name3 = (String)pageContext.getAttribute("name");
    String name4 = (String)application.getAttribute("name");
    
%>
<h1>取出存放在session对象中的属性值：</h1>
<p>第一种做法：使用pageContext.getAttribute("attributeName",PageContext.SESSION_SCOPE);去取出session对象中值</p>
<h3>姓名：<%=refName1%></h3>
<p>第二种做法：使用session.getAttribute("attributeName");去取出session对象中值</p>
<h3>姓名：<%=refName2%></h3>


<h3>使用request,request.getAttribute: <%=name1Request %></h3>
<h3>使用request,session.getAttribute: <%=name2Request %></h3>
<h3>使用request,pageContext.getAttribute: <%=name3Request %></h3>
<h3>使用request,application.getAttribute: <%=name3Request %></h3>

<h3>使用REQUEST_SCOPE,  pageContext.getRequest().getAttribute("name1") <%=n1 %></h3> 

<h3>使用SESSION_SCOPE,request.getAttribute: <%=name1 %></h3>
<h3>使用SESSION_SCOPE,session.getAttribute: <%=name2 %></h3>
<h3>使用SESSION_SCOPE,pageContext.getAttribute: <%=name3 %></h3>
<h3>使用SESSION_SCOPE,application.getAttribute: <%=name4 %></h3>


