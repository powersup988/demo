<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: sunda
  Date: 2019/10/29
  Time: 8:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>

  <%
    ArrayList books=new ArrayList();
    books.add("三国演义");
    books.add("水浒传");
    books.add("红楼梦");
    books.add("西游记");
    session.setAttribute("books", books);
    session.setAttribute("test","test");
  %>
  <a href="find.jsp">购买</a>
  </body>
</html>
