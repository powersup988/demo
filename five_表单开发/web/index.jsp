<%--
  Created by IntelliJ IDEA.
  User: sunda
  Date: 2019/9/6
  Time: 21:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=GBK" language="java" import="java.spl.*" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%
      String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";  //加载JDBC驱动

      String dbURL = "jdbc:sqlserver://localhost:1433; DatabaseName=StudentManagement";  //连接服务器和数据库sample

      String userName = "sa";  //默认用户名

      String userPwd = "sa123";  //密码

      Connection dbConn;

      try {

          Class.forName(driverName);

          dbConn = DriverManager.getConnection(dbURL, userName, userPwd);

          System.out.println("Connection Successful!");  //如果连接成功 控制台输出

          //Connection Successful!

      } catch (Exception e) {

          e.printStackTrace();

      }
  %>
  </body>
</html>
