<%--
  Created by IntelliJ IDEA.
  User: sunda
  Date: 2019/9/22
  Time: 13:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GBK" language="java" %>
<%@ page import="java.sql.*" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%!
    String driver="com.mysql.cj.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/mysql?&useSSL=false&serverTimezone=UTC";
    String user="root";
    String password="123456";
  %>

  <form name="from1" action="test.jsp" enctype="multipart/form-data" accept-charset="UTF-8" method="post">
    <p>
      名字：<input type="text" name="name" placeholder="Enter your name"><br><br>
      年龄：<input type="text" name="age" placeholder="Enter your age"><br><br>
      性别：<input type="text" name="sex" placeholder="Enter your sex"><br><br>
            <input type="submit" value="提交">
      <input type="reset" value="清除"><br><br>
    </p>
    <script type="text/javascript">
      <%
      out.println("33");
      %>
    </script>
  </form>

  </body>
</html>
