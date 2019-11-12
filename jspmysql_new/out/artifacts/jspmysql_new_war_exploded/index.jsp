<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Insert title here</title>
</head>
<body>
<table border="1" align="center">
  <tr>
    <th>age</th>
    <th>name</th>
  </tr>
  <%
    String driverClass="com.mysql.cj.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/mysql?useSSL=false&serverTimezone=CTT";
    String user="root";
    String password="123456";
    ResultSet rs =null;
    Connection conn;
    try{
      Class.forName(driverClass);
      conn=DriverManager.getConnection(url,user,password);
      Statement stmt=conn.createStatement();
      String sql="SELECT * FROM test";
      rs=stmt.executeQuery(sql);

      while(rs.next()){%>
  <tr>


    <td><%=rs.getString(1)%></td>

    <td><%=rs.getString(2)%></td>
  </tr>
  <%}


    rs.close();
    stmt.close();
    conn.close();
  }catch(Exception e){
    e.printStackTrace();
  }
  %>
</table>
</body>
</html>