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
  $END$
  <%
   ArrayList arrayList = (ArrayList) session.getAttribute("books");
   for(Object book:arrayList){
     out.println(book.toString()+"<br>");
   }
       session.removeAttribute("books");
      arrayList=null;
      arrayList=(ArrayList)session.getAttribute("books");
      if(arrayList!=null){
          out.println("arrayList is not null"+"<br>");
      }else{
          out.println("arrayList is  null"+"<br>");
      }
        session.invalidate();

  %>
  <a href="index.jsp">首页</a>
  </body>
</html>
