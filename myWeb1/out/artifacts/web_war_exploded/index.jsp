<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Statement" %><%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.sql.*" %>
<html>
  <head>
    <title>国际象棋</title>
  </head>
  <body>

   <%
     final String DRIVER_NAME = "com.mysql.cj.jdbc.Driver";
     //数据库连接地址
      final String URL = "jdbc:mysql://localhost:3306/mysql?serverTimezone=GMT%2B8&characterEncoding=utf-8";
     //用户名
      final String USER_NAME = "root";
     //密码
      final String PASSWORD = "123456";
     connection = DriverManager.getConnection(URL, USER_NAME, PASSWORD);
     Statement statement = connection.createStatement();
     System.out.println(statement.toString());
     System.out.println("成功");
     String sql="INSERT INTO TEST(name) VALUES('ZHANGSHAN')";
     int i=statement.executeUpdate(sql);
     System.out.println("成功修改"+i+"行信息");
     statement.close();
     connection.close();
   %>

  </body>
</html>