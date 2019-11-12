<%--
  Created by IntelliJ IDEA.
  User: sunda
  Date: 2019/9/25
  Time: 15:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    int i=0;
%>
  <%
      request.setCharacterEncoding="GBK";
      String radioCheck=request.getParameter("sex");
      out.println("系统获得的性别信息是："+radioCheck);
      String []love=request.getParameterValues("love");
      for( i=0;i<love.length;i++) {
         out.println(love[i]);
      }
  %>



</body>
</html>
