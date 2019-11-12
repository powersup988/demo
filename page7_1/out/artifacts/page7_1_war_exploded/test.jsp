<%--
  Created by IntelliJ IDEA.
  User: sunda
  Date: 2019/10/27
  Time: 14:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="index.jsp">跳转到主页！</a>
<%
    String get1=request.getParameter("test");
    out.println(get1+"<br>");
     response.sendRedirect("test1.jsp");
%>
<ajsp:forward page="http://www.baidu.com"></ajsp:forward>
</body>
</html>
