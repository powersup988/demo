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
      String driverName = "com.microsoft.sqlserver.jdbc.SQLServerDriver";  //����JDBC����

      String dbURL = "jdbc:sqlserver://localhost:1433; DatabaseName=StudentManagement";  //���ӷ����������ݿ�sample

      String userName = "sa";  //Ĭ���û���

      String userPwd = "sa123";  //����

      Connection dbConn;

      try {

          Class.forName(driverName);

          dbConn = DriverManager.getConnection(dbURL, userName, userPwd);

          System.out.println("Connection Successful!");  //������ӳɹ� ����̨���

          //Connection Successful!

      } catch (Exception e) {

          e.printStackTrace();

      }
  %>
  </body>
</html>
