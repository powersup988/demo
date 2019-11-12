<%--
  Created by IntelliJ IDEA.
  User: sunda
  Date: 2019/10/21
  Time: 8:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>


  </head>
  <body>
  $END$
  <%
    out.println(out.getRemaining()+"<br>");
    out.println("<h1 align=\"center\">利用内置对象out,动态输出HTML</h1>");
    out.println("test");
    out.println("test");
    out.println(out.getRemaining()+"<br>");
//    for(int i=0;i<1000000;i++){
//      out.println("test<br>");
//    }
    out.println(out.getRemaining()+"<br>");
    out.println(out.getBufferSize()+"<br>");
    out.flush();
   // out.clearBuffer();
    //out.close();
    out.println("test three!!!<hr>");
    out.println("Method:"+request.getMethod()+"<br>");
    out.println("requestUrl:"+request.getRequestURI()+"<br>");
    out.println("Protocol:"+request.getProtocol()+"<br>");
    out.println("ServletPath"+request.getServletPath()+"<br>");
    out.println("QueryString:"+request.getQueryString()+"<br>");
    out.println("ServerName:"+request.getServerName()+"<br>");
    out.println("ServerPort:"+request.getServerPort()+"<br>");
    out.println("getRemoteAddr:"+request.getRemoteAddr()+"<br>");
  %>

  </body>
</html>
