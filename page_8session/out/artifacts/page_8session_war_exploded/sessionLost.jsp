<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: sunda
  Date: 2019/10/29
  Time: 9:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <form action="sessionLost.jsp" method="post">
      请输入书本名:<input type="text" name="name"><br>
      <input type="submit" value="添加"><br>

  </form>
  <%
      ArrayList books = new ArrayList();

      String book=request.getParameter("name");
      if(book!=null){
          book=new String(book.getBytes("ISO-8859-1"));
          books.add(book);
          session.setAttribute("books", books);
      }

  %>
<p>d
    内容如下：<br>
    <%
        for(int i=0;i<books.size();i++){
            out.println(books.get(i)+"<br>");
        }
    %>
</p>
</body>
</html>
