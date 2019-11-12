<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: sunda
  Date: 2019/10/22
  Time: 8:45
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="sqlMess.jsp" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <style type="text/css">
      table,tr{
        border:1px solid black;
      }
    </style>
  </head>
  <body>
  <%!
//    String driver="com.mysql.cj.jdbc.Driver";
//    String username="root";
//    String password="123456";
//    String url="jdbc:mysql://localhost:3306/mytest";
//    //?&useSSL=false&serverTimezone=UTC
  %>

  <%
    Class.forName(driver);
    Connection connection= DriverManager.getConnection(url,username,password);
    Statement sta=connection.createStatement();
    //PreparedStatement preStatement= connection.prepareStatement("33");
    String select1="select * from  add_test";
    ResultSet rs=sta.executeQuery(select1);
  %>
  <p>
    <table name="table" id="table">
    <tr>
      <th>学号</th>
      <th>姓名</th>
      <th>性别</th>
      <th>年龄</th>
    </tr>
    <%
      String get1,get2,get3,get4;
      while (rs.next()) {
        out.println("<tr>");
        get1 =rs.getString(1);
        get2 =rs.getString(2);
        get3 =rs.getString(3);
        get4 =rs.getString(4);
        out.println("<td>"+get1+"</td>"+"<td>"+get2+"</td>"+"<td>"+get3+"</td>"+"<td>"+get4+"</td>");
        out.println("</tr>");
        //out.println(get1+"\t"+get2+"\t"+get3+"\t"+get4+"<br>");
      }
    %>
  </table>
  </p>
  </body>
</html>
