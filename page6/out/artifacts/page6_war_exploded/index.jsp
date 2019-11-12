<%--
  Created by IntelliJ IDEA.
  User: sunda
  Date: 2019/9/23
  Time: 12:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GBK" language="java"  import="java.sql.*"%>
<html>
  <head>
    <title>$Title$</title>
    <%!
      String driver="com.mysql.cj.jdbc.Driver";
      String url="jdbc:mysql://localhost:3306/mysql?useSSL=false&serverTimezone=CTT";
      String user="root";
      String password="123456";
    %>
  </head>
  <body>
  $END$
  <div>
    <%
      Class.forName(driver);
      Connection connection= null;
      try {
        connection = DriverManager.getConnection(url,user,password);
      } catch (SQLException e) {
        e.printStackTrace();
      }
      Statement stat=connection.createStatement();
      String insertOrder="INSERT into test('name','age','sex') values('李氏','21','男')";
      int res=stat.executeUpdate(insertOrder);
      out.println("有"+res+"条数据修改！\n<br>");
    %>
  </div>
  </body>
</html>
