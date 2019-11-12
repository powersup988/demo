<%--
  Created by IntelliJ IDEA.
  User: sunda
  Date: 2019/10/27
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
欢迎来到BUG站
<%
    String get1=request.getParameter("test");
    out.println(get1+"<br>");
    //response.sendError(408);
   // response.setHeader("refresh", "5");
    String num="444";
    int n=Integer.parseInt(num);

%>
🐂<%=n*n%>
<%
    Cookie cookie=new Cookie("num",num);
    cookie.setMaxAge(500);
    response.addCookie(cookie);

%>
<a href="cookie.jsp" >bbbbbb</a>
</body>
</html>
